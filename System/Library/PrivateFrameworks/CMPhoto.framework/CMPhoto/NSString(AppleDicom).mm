@interface NSString(AppleDicom)
- (id)unpaddedString;
@end

@implementation NSString(AppleDicom)

- (id)unpaddedString
{
  if (([self length] & 1) != 0 || objc_msgSend(self, "length") < 2 || objc_msgSend(self, "characterAtIndex:", objc_msgSend(self, "length") - 1) != 32)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  return selfCopy;
}

@end