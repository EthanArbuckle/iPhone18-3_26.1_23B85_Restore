@interface NSMutableString(MSVLyricsTTMLParser)
- (void)msvl_trimTrailingWhitespace;
@end

@implementation NSMutableString(MSVLyricsTTMLParser)

- (void)msvl_trimTrailingWhitespace
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  invertedSet = [whitespaceCharacterSet invertedSet];

  v3 = [self rangeOfCharacterFromSet:invertedSet options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [self setString:&stru_1F214F018];
  }

  else
  {
    v4 = v3 + 1;
    if (v3 + 1 < [self length])
    {
      [self deleteCharactersInRange:{v4, objc_msgSend(self, "length") - v4}];
    }
  }
}

@end