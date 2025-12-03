@interface NSString(ImportSanity)
- (__CFString)sanitizedString;
@end

@implementation NSString(ImportSanity)

- (__CFString)sanitizedString
{
  SanitizedString = ML3CreateSanitizedString(self);

  return SanitizedString;
}

@end