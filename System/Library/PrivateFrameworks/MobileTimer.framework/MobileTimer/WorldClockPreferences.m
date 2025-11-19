@interface WorldClockPreferences
- (BOOL)cityDataNeedsUpdate;
- (BOOL)defaultCitiesAdded;
- (id)cities;
- (id)defaultsKeys;
- (id)lastModified;
- (void)cityDataUpdated;
@end

@implementation WorldClockPreferences

- (id)lastModified
{
  v2 = CFPreferencesCopyAppValue(CitiesLastModifiedKey, @"com.apple.mobiletimer");

  return v2;
}

- (id)cities
{
  v2 = CFPreferencesCopyAppValue(CitiesKey, @"com.apple.mobiletimer");

  return v2;
}

- (BOOL)defaultCitiesAdded
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(DefaultCityAddedKey, @"com.apple.mobiletimer", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)defaultsKeys
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = CitiesKey;
  v5[1] = CitiesLastModifiedKey;
  v5[2] = DefaultCityAddedKey;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)cityDataNeedsUpdate
{
  v2 = CFPreferencesCopyAppValue(LatestUpdateVersion, @"com.apple.mobiletimer");
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 operatingSystemVersionString];
  v5 = [v2 isEqualToString:v4];

  return v5 ^ 1;
}

- (void)cityDataUpdated
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  value = [v2 operatingSystemVersionString];

  CFPreferencesSetAppValue(LatestUpdateVersion, value, @"com.apple.mobiletimer");
}

@end