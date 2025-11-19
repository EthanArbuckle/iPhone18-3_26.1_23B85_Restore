@interface NSBundle(Locale)
- (id)preferredLocale;
@end

@implementation NSBundle(Locale)

- (id)preferredLocale
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = [a1 preferredLocalizations];
  v3 = [v2 firstObject];
  v4 = [v1 localeWithLocaleIdentifier:v3];

  return v4;
}

@end