@interface NSBundle(Locale)
- (id)preferredLocale;
@end

@implementation NSBundle(Locale)

- (id)preferredLocale
{
  v1 = MEMORY[0x277CBEAF8];
  preferredLocalizations = [self preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v4 = [v1 localeWithLocaleIdentifier:firstObject];

  return v4;
}

@end