@interface NSMutableString(MSVLyricsTTMLParser)
- (void)msvl_trimTrailingWhitespace;
@end

@implementation NSMutableString(MSVLyricsTTMLParser)

- (void)msvl_trimTrailingWhitespace
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v2 invertedSet];

  v3 = [a1 rangeOfCharacterFromSet:v5 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 setString:&stru_1F214F018];
  }

  else
  {
    v4 = v3 + 1;
    if (v3 + 1 < [a1 length])
    {
      [a1 deleteCharactersInRange:{v4, objc_msgSend(a1, "length") - v4}];
    }
  }
}

@end