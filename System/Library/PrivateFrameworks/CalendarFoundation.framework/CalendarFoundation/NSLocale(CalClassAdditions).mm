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
  result = [a1 _languageIsArabic];
  if (result)
  {

    return [a1 _calendarIsIslamic];
  }

  return result;
}

- (uint64_t)_languageIsArabic
{
  v1 = [a1 languageCode];
  v2 = [v1 isEqualToString:@"ar"];

  return v2;
}

- (uint64_t)_calendarIsIslamic
{
  v1 = [a1 objectForKey:*MEMORY[0x1E695D958]];
  v2 = [v1 calendarIdentifier];
  v3 = [v2 containsString:@"islamic"];

  return v3;
}

- (uint64_t)CalUnableToAbbreviateMonthNames
{
  v1 = [a1 languageCode];
  v2 = [v1 isEqualToString:@"fi"];

  return v2;
}

- (uint64_t)CalRegionIsChina
{
  v1 = [a1 countryCode];
  v2 = [v1 isEqualToString:@"CN"];

  return v2;
}

- (uint64_t)CalLanguageIsSimplifiedChinese
{
  v0 = [MEMORY[0x1E695DF58] preferredLanguages];
  v1 = [v0 firstObject];

  v2 = [v1 hasPrefix:@"zh-Hans"];
  return v2;
}

- (uint64_t)CalUsesCelsius
{
  v1 = [a1 objectForKey:*MEMORY[0x1E695D9F0]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E695D9F8]];

  return v2;
}

@end