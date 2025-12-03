@interface NSLocale
- (NSString)languageCodeAndCountryCode;
@end

@implementation NSLocale

- (NSString)languageCodeAndCountryCode
{
  languageCode = [(NSLocale *)self languageCode];
  countryCode = [(NSLocale *)self countryCode];
  v5 = [NSString stringWithFormat:@"%@_%@", languageCode, countryCode];

  return v5;
}

@end