@interface NSLocale(TSULocaleAdditions)
+ (__CFString)tsu_firstPreferredLocalization;
@end

@implementation NSLocale(TSULocaleAdditions)

+ (__CFString)tsu_firstPreferredLocalization
{
  v0 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (![v0 count])
  {
    return @"en_US";
  }

  return [v0 objectAtIndexedSubscript:0];
}

@end