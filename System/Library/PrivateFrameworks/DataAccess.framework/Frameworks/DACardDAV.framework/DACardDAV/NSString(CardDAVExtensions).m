@interface NSString(CardDAVExtensions)
- (id)prettyStringForDisplayName;
@end

@implementation NSString(CardDAVExtensions)

- (id)prettyStringForDisplayName
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  v3 = [v1 rangeOfCharacterFromSet:v2];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v1 capitalizedString];

    v1 = v4;
  }

  return v1;
}

@end