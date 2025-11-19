@interface DEBundle
+ (id)frameworkInternalUserSettings;
+ (id)frameworkUserSettings;
@end

@implementation DEBundle

+ (id)frameworkInternalUserSettings
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = +[DEBundle frameworkUserSettings];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)frameworkUserSettings
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3 && [v3 isEqualToString:@"com.apple.siri.DialogEngine"])
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.DialogEngine"];
  }

  v5 = v4;

  return v5;
}

@end