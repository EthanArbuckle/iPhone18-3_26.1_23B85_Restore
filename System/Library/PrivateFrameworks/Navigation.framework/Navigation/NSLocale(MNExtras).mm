@interface NSLocale(MNExtras)
+ (id)_localeOverridesForLocaleWithCountryCode:()MNExtras;
- (id)_navigation_objectForKey:()MNExtras;
- (uint64_t)_navigation_distanceUsesMetricSystem;
- (uint64_t)_navigation_useYardsForShortDistances;
@end

@implementation NSLocale(MNExtras)

- (uint64_t)_navigation_distanceUsesMetricSystem
{
  v1 = [self objectForKey:*MEMORY[0x1E695D9B8]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E695D9C0]];

  return v2;
}

- (uint64_t)_navigation_useYardsForShortDistances
{
  v1 = [self objectForKey:*MEMORY[0x1E695D9B8]];
  v2 = [v1 isEqualToString:*MEMORY[0x1E695D9C8]];

  return v2;
}

- (id)_navigation_objectForKey:()MNExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF58];
  countryCode = [self countryCode];
  v7 = [v5 _localeOverridesForLocaleWithCountryCode:countryCode];
  v8 = [v7 objectForKey:v4];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [self objectForKey:v4];
  }

  v10 = v9;

  return v10;
}

+ (id)_localeOverridesForLocaleWithCountryCode:()MNExtras
{
  v3 = a3;
  if (v3)
  {
    if (_localeOverridesForLocaleWithCountryCode__onceToken != -1)
    {
      dispatch_once(&_localeOverridesForLocaleWithCountryCode__onceToken, &__block_literal_global_12);
    }

    v4 = [_localeOverridesForLocaleWithCountryCode__overridesPerCountryCode objectForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end