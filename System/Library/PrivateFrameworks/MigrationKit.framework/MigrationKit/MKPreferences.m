@interface MKPreferences
+ (char)BOOLForKey:(id)a3;
+ (id)stringForKey:(id)a3;
+ (void)setBool:(BOOL)a3 forKey:(id)a4;
@end

@implementation MKPreferences

+ (char)BOOLForKey:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppBooleanValue(a3, @"com.apple.MigrationKit", &keyExistsAndHasValidFormat) == 1;
  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

+ (id)stringForKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.MigrationKit", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v3;
}

+ (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetValue(a4, *v4, @"com.apple.MigrationKit", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

@end