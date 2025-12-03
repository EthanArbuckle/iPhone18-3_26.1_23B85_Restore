@interface ICSettingsUtilities
+ (BOOL)BOOLForKey:(id)key;
+ (id)objectForKey:(id)key;
+ (void)registerDefaults:(id)defaults;
+ (void)setBool:(BOOL)bool forKey:(id)key;
+ (void)setObject:(id)object forKey:(id)key;
@end

@implementation ICSettingsUtilities

+ (void)registerDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  if (ICIsSandboxModeEnabled())
  {
    v4 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v4 = @"com.apple.mobilenotes";
  }

  standardUserDefaults = [v3 initWithSuiteName:v4];
  if (!standardUserDefaults)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  [standardUserDefaults registerDefaults:defaultsCopy];
}

+ (id)objectForKey:(id)key
{
  keyCopy = key;
  if (ICIsSandboxModeEnabled())
  {
    v4 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v4 = @"com.apple.mobilenotes";
  }

  v5 = CFPreferencesCopyAppValue(keyCopy, v4);

  return v5;
}

+ (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  if (ICIsSandboxModeEnabled())
  {
    v7 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v7 = @"com.apple.mobilenotes";
  }

  CFPreferencesSetAppValue(keyCopy, objectCopy, v7);

  if (ICIsSandboxModeEnabled())
  {
    v8 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v8 = @"com.apple.mobilenotes";
  }

  CFPreferencesAppSynchronize(v8);
}

+ (BOOL)BOOLForKey:(id)key
{
  v3 = [self objectForKey:key];
  v4 = objc_opt_class();
  v5 = ICCheckedDynamicCast(v4, v3);
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

+ (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [self setObject:v8 forKey:keyCopy];
}

@end