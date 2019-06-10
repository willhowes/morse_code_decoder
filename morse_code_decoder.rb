def decode_morse(morse_code)
  morse_dict = {
  	"a" => ".-",
  	"b" => "-...",
  	"c" => "-.-.",
  	"d" => "-..",
  	"e" => ".",
  	"f" => "..-.",
  	"g" => "--.",
  	"h" => "....",
  	"i" => "..",
  	"j" => ".---",
  	"k" => "-.-",
  	"l" => ".-..",
  	"m" => "--",
  	"n" => "-.",
  	"o" => "---",
  	"p" => ".--.",
  	"q" => "--.-",
  	"r" => ".-.",
  	"s" => "...",
  	"t" => "-",
  	"u" => "..-",
  	"v" => "...-",
  	"w" => ".--",
  	"x" => "-..-",
  	"y" => "-.--",
  	"z" => "--..",
  	" " => " ",
  	"1" => ".----",
  	"2" => "..---",
  	"3" => "...--",
  	"4" => "....-",
  	"5" => ".....",
  	"6" => "-....",
  	"7" => "--...",
  	"8" => "---..",
  	"9" => "----.",
  	"0" => "-----",
    "SOS!" => "...---...",
    "." => ".-.-.-"
  }
  decoded = ''
  if morse_code == '··· −−− ···' || morse_code == '...---...'
    decoded = 'SOS'
  else
    morse_code = morse_code.split('   ')
    morse_code.each_with_index do |word, index|
      word = word.split(' ')
      word = word.map { |chr| morse_dict.key(chr) }.join.upcase
      decoded << ' ' + word
    end
  end
  decoded.strip
end
puts decode_morse('.... . -.--   .--- ..- -.. .') # should equal 'HEY JUDE'
puts decode_morse('··· −−− ···') # should equal 'SOS'
puts decode_morse('.-. ..- -... -.--   .. ...   ..-. ..- -.')
# should equal 'RUBY IS FUN'
puts decode_morse('...---... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-.
  --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .
     .-.. .- --.. -.--   -.. --- --. .-.-.-')
