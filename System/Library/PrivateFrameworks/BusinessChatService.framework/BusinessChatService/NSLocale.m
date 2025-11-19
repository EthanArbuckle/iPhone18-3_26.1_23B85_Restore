@interface NSLocale
+ (id)currentLanguage;
- (BOOL)isDevice24HourTime;
- (id)country;
- (id)language;
@end

@implementation NSLocale

- (id)language
{
  if (a1)
  {
    a1 = [a1 objectForKey:*MEMORY[0x277CBE6C8]];
    v1 = vars8;
  }

  return a1;
}

- (id)country
{
  if (a1)
  {
    a1 = [a1 objectForKey:*MEMORY[0x277CBE690]];
    v1 = vars8;
  }

  return a1;
}

+ (id)currentLanguage
{
  objc_opt_self();
  if (![currentLanguage_language length])
  {
    v0 = [MEMORY[0x277CBEAF8] currentLocale];
    v1 = [(NSLocale *)v0 language];
    v2 = currentLanguage_language;
    currentLanguage_language = v1;
  }

  v3 = currentLanguage_language;

  return v3;
}

- (BOOL)isDevice24HourTime
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"j" options:0 locale:a1];
  v2 = [v1 rangeOfString:@"a"] == 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end