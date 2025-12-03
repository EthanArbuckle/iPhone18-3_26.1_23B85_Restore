@interface NSString(ECMessageBodyParser)
- (BOOL)ec_isWhitespace;
@end

@implementation NSString(ECMessageBodyParser)

- (BOOL)ec_isWhitespace
{
  if (!ec_isWhitespace_characterSet)
  {
    ec_isWhitespace_characterSet = [objc_msgSend(MEMORY[0x277CCA900] "ec_whitespaceNewlineAndTagCharacterSet")];
  }

  return [self rangeOfCharacterFromSet:?] == 0x7FFFFFFFFFFFFFFFLL;
}

@end