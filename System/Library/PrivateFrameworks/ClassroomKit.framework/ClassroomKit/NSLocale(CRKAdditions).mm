@interface NSLocale(CRKAdditions)
+ (uint64_t)crk_showPhoneticNames;
@end

@implementation NSLocale(CRKAdditions)

+ (uint64_t)crk_showPhoneticNames
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 languageCode];

  v2 = [v1 isEqualToString:@"ja"];
  return v2;
}

@end