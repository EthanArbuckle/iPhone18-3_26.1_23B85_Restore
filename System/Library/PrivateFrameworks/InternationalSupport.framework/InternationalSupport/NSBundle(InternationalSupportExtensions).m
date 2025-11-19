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
  v5 = [localizedStringInDeviceLanguageForKey____sharedPreferredLocalizationCache objectForKey:a1];
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF58] _globalPreferredLanguages];
    v7 = MEMORY[0x1E696AAE8];
    v8 = [a1 localizations];
    v9 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v6];
    v5 = [v9 firstObject];

    [localizedStringInDeviceLanguageForKey____sharedPreferredLocalizationCache setObject:v5 forKey:a1];
  }

  os_unfair_lock_unlock(&localizedStringInDeviceLanguageForKey__lock);
  v10 = [a1 localizedStringForKey:v4 value:0 table:0 localization:v5];

  return v10;
}

@end