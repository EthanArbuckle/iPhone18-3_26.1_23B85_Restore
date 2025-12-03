@interface NSBundle(InternationalSupportExtensions)
- (id)localizedStringInDeviceLanguageForKey:()InternationalSupportExtensions;
@end

@implementation NSBundle(InternationalSupportExtensions)

- (id)localizedStringInDeviceLanguageForKey:()InternationalSupportExtensions
{
  v4 = a3;
  if (localizedStringInDeviceLanguageForKey__onceToken != -1)
  {
    [NSBundle(InternationalSupportExtensions) localizedStringInDeviceLanguageForKey:];
  }

  os_unfair_lock_lock(&localizedStringInDeviceLanguageForKey__lock);
  firstObject = [localizedStringInDeviceLanguageForKey____sharedPreferredLocalizationCache objectForKey:self];
  if (!firstObject)
  {
    _globalPreferredLanguages = [MEMORY[0x1E695DF58] _globalPreferredLanguages];
    v7 = MEMORY[0x1E696AAE8];
    localizations = [self localizations];
    v9 = [v7 preferredLocalizationsFromArray:localizations forPreferences:_globalPreferredLanguages];
    firstObject = [v9 firstObject];

    [localizedStringInDeviceLanguageForKey____sharedPreferredLocalizationCache setObject:firstObject forKey:self];
  }

  os_unfair_lock_unlock(&localizedStringInDeviceLanguageForKey__lock);
  v10 = [self localizedStringForKey:v4 value:0 table:0 localization:firstObject];

  return v10;
}

@end