@interface NSNumber
@end

@implementation NSNumber

uint64_t __45__NSNumber_CKUtilities____ck_localizedString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = __ck_localizedString_sNumberFormatter;
  __ck_localizedString_sNumberFormatter = v0;

  v2 = __ck_localizedString_sNumberFormatter;
  v3 = [MEMORY[0x1E695DF58] __ck_currentLocale];
  [v2 setLocale:v3];

  v4 = __ck_localizedString_sNumberFormatter;

  return [v4 setNumberStyle:0];
}

@end