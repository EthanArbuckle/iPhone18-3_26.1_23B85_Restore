@interface NSLocale
+ (id)currentLanguage;
- (BOOL)isDevice24HourTime;
- (id)country;
- (id)language;
@end

@implementation NSLocale

- (id)language
{
  if (self)
  {
    self = [self objectForKey:*MEMORY[0x277CBE6C8]];
    v1 = vars8;
  }

  return self;
}

- (id)country
{
  if (self)
  {
    self = [self objectForKey:*MEMORY[0x277CBE690]];
    v1 = vars8;
  }

  return self;
}

+ (id)currentLanguage
{
  objc_opt_self();
  if (![currentLanguage_language length])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    language = [(NSLocale *)currentLocale language];
    v2 = currentLanguage_language;
    currentLanguage_language = language;
  }

  v3 = currentLanguage_language;

  return v3;
}

- (BOOL)isDevice24HourTime
{
  if (!self)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"j" options:0 locale:self];
  v2 = [v1 rangeOfString:@"a"] == 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end