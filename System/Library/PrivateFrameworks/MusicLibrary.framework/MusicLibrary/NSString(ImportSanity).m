@interface NSString(ImportSanity)
- (__CFString)sanitizedString;
@end

@implementation NSString(ImportSanity)

- (__CFString)sanitizedString
{
  SanitizedString = ML3CreateSanitizedString(a1);

  return SanitizedString;
}

@end