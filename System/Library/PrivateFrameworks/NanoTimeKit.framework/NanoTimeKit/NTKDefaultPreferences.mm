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
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)aegirShowAllOptions
{
  v2 = NSStringFromSelector(a2);
  v3 = CFPreferencesCopyAppValue(v2, @"com.apple.NanoTimeKit");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end