@interface NSLocale(CalClassAdditions)
- (uint64_t)CalLanguageIsSimplifiedChinese;
- (uint64_t)CalPrefersFullMonthDisplayNames;
- (uint64_t)CalRegionIsChina;
- (uint64_t)CalUnableToAbbreviateMonthNames;
- (uint64_t)CalUsesCelsius;
- (uint64_t)_calendarIsIslamic;
- (uint64_t)_languageIsArabic;
@end

@implementation NSLocale(CalClassAdditions)

- (uint64_t)CalPrefersFullMonthDisplayNames
{
  result = [self _languageIsArabic];
  if (result)
  {

    return [self _calendarIsIslamic];
  }

  return result;
}

- (uint64_t)_languageIsArabic
{
  languageCode = [self languageCode];
  v2 = [languageCode isEqualToString:@"ar"];

  return v2;
}

- (uint64_t)_calendarIsIslamic
{
  v1 = [self objectForKey:*MEMORY[0x1E695D958]];
  calendarIdentifier = [v1 calendarIdentifier];
  v3 = [calendarIdentifier containsString:@"islamic"];

  return v3;
}

- (uint64_t)CalUnableToAbbreviateMonthNames
{
  languageCode = [self languageCode];
  v2 = [languageCode isEqualToString:@"fi"];

  return v2;
}

- (uint64_t)CalRegionIsChina
{
  countryCode = [self countryCode];
  v2 = [countryCode isEqualToString:@"CN"];

  return v2;
}

- (uint64_t)CalLanguageIsSimplifiedChinese
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v2 = [firstObject hasPrefix:@"zh-Hans"];
  return v2;
}

- (uint64_t)CalUsesCelsius
{
  v1 = [self objectForKey:*MEMORY[0x1E695D9F0]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E695D9F8]];

  return v2;
}

@end