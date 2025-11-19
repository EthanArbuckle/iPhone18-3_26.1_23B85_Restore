@interface NSString
@end

@implementation NSString

void __49__NSString_CalClassAdditions__stringByURLQuoting__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"?"];
  v1 = [v3 copy];
  v2 = stringByURLQuoting_allowedCharacters;
  stringByURLQuoting_allowedCharacters = v1;
}

void __71__NSString_CalClassAdditions__stringByURLEscapingAllReservedCharacters__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@":/?#[]@!$&’()*+, ;=%"}];
  v1 = [v3 copy];
  v2 = stringByURLEscapingAllReservedCharacters_allowedCharacters;
  stringByURLEscapingAllReservedCharacters_allowedCharacters = v1;
}

void __54__NSString_CalClassAdditions__stringByEncodingSlashes__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"/"];
  v1 = [v3 copy];
  v2 = stringByEncodingSlashes_allowedCharacters;
  stringByEncodingSlashes_allowedCharacters = v1;
}

uint64_t __46__NSString_CalClassAdditions__CalSafeFilename__block_invoke()
{
  CalSafeFilename_disallowedCharacters = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/\\?%*|<>:"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51__NSString_CalClassAdditions__CalAutoCommentPrefix__block_invoke()
{
  CalAutoCommentPrefix_prefix = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C🗓%C ", 8203, 8203];

  return MEMORY[0x1EEE66BB8]();
}

@end