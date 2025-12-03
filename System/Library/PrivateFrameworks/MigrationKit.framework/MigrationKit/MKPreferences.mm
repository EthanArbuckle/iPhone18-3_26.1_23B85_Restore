@interface MKPreferences
+ (char)BOOLForKey:(id)key;
+ (id)stringForKey:(id)key;
+ (void)setBool:(BOOL)bool forKey:(id)key;
@end

@implementation MKPreferences

+ (char)BOOLForKey:(id)key
{
  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppBooleanValue(key, @"com.apple.MigrationKit", &keyExistsAndHasValidFormat) == 1;
  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

+ (id)stringForKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, @"com.apple.MigrationKit", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v3;
}

+ (void)setBool:(BOOL)bool forKey:(id)key
{
  v4 = MEMORY[0x277CBED28];
  if (!bool)
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetValue(key, *v4, @"com.apple.MigrationKit", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

@end