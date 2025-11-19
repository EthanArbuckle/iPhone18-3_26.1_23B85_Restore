@interface NSNumber(CKUtilities)
- (uint64_t)__ck_localizedString;
@end

@implementation NSNumber(CKUtilities)

- (uint64_t)__ck_localizedString
{
  if (__ck_localizedString_once != -1)
  {
    [NSNumber(CKUtilities) __ck_localizedString];
  }

  v2 = __ck_localizedString_sNumberFormatter;

  return [v2 stringFromNumber:a1];
}

@end