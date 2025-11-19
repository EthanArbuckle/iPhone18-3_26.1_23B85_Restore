@interface NSLocale
- (NSString)languageCodeAndCountryCode;
@end

@implementation NSLocale

- (NSString)languageCodeAndCountryCode
{
  v3 = [(NSLocale *)self languageCode];
  v4 = [(NSLocale *)self countryCode];
  v5 = [NSString stringWithFormat:@"%@_%@", v3, v4];

  return v5;
}

@end