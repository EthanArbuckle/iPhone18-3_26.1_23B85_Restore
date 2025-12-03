@interface NTKDefaultPreferences
+ (BOOL)aegirShowAllOptions;
+ (BOOL)monitorColorBundleFolder;
@end

@implementation NTKDefaultPreferences

+ (BOOL)monitorColorBundleFolder
{
  v2 = NSStringFromSelector(a2);
  v3 = CFPreferencesCopyAppValue(v2, @"com.apple.NanoTimeKit");
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)aegirShowAllOptions
{
  v2 = NSStringFromSelector(a2);
  v3 = CFPreferencesCopyAppValue(v2, @"com.apple.NanoTimeKit");
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end