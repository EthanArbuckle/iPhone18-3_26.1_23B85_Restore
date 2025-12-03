@interface NSString(CardDAVExtensions)
- (id)prettyStringForDisplayName;
@end

@implementation NSString(CardDAVExtensions)

- (id)prettyStringForDisplayName
{
  selfCopy = self;
  uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  v3 = [selfCopy rangeOfCharacterFromSet:uppercaseLetterCharacterSet];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    capitalizedString = [selfCopy capitalizedString];

    selfCopy = capitalizedString;
  }

  return selfCopy;
}

@end