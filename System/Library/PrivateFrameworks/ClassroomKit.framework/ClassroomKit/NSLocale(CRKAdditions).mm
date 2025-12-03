@interface NSLocale(CRKAdditions)
+ (uint64_t)crk_showPhoneticNames;
@end

@implementation NSLocale(CRKAdditions)

+ (uint64_t)crk_showPhoneticNames
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];

  v2 = [languageCode isEqualToString:@"ja"];
  return v2;
}

@end