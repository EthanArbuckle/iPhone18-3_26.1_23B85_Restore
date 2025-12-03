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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier && [bundleIdentifier isEqualToString:@"com.apple.siri.DialogEngine"])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.DialogEngine"];
  }

  v5 = standardUserDefaults;

  return v5;
}

@end