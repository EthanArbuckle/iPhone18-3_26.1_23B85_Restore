@interface NSString(FUUppercase)
- (id)FU_uppercaseStringUsingCurrentLocale:()FUUppercase;
@end

@implementation NSString(FUUppercase)

- (id)FU_uppercaseStringUsingCurrentLocale:()FUUppercase
{
  if (a3)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];

    v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:firstObject];
    if (v7)
    {
      v8 = [self uppercaseStringWithLocale:v7];
    }

    else
    {
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v8 = [self uppercaseStringWithLocale:currentLocale];
    }
  }

  else
  {
    firstObject = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    v8 = [self uppercaseStringWithLocale:firstObject];
  }

  return v8;
}

@end