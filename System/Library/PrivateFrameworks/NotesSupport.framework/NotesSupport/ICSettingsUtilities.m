@interface ICSettingsUtilities
+ (BOOL)BOOLForKey:(id)a3;
+ (id)objectForKey:(id)a3;
+ (void)registerDefaults:(id)a3;
+ (void)setBool:(BOOL)a3 forKey:(id)a4;
+ (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation ICSettingsUtilities

+ (void)registerDefaults:(id)a3
{
  v6 = a3;
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  if (ICIsSandboxModeEnabled())
  {
    v4 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v4 = @"com.apple.mobilenotes";
  }

  v5 = [v3 initWithSuiteName:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  [v5 registerDefaults:v6];
}

+ (id)objectForKey:(id)a3
{
  v3 = a3;
  if (ICIsSandboxModeEnabled())
  {
    v4 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v4 = @"com.apple.mobilenotes";
  }

  v5 = CFPreferencesCopyAppValue(v3, v4);

  return v5;
}

+ (void)setObject:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (ICIsSandboxModeEnabled())
  {
    v7 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v7 = @"com.apple.mobilenotes";
  }

  CFPreferencesSetAppValue(v5, v6, v7);

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

+ (BOOL)BOOLForKey:(id)a3
{
  v3 = [a1 objectForKey:a3];
  v4 = objc_opt_class();
  v5 = ICCheckedDynamicCast(v4, v3);
  v6 = [v5 BOOLValue];

  return v6;
}

+ (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [a1 setObject:v8 forKey:v7];
}

@end