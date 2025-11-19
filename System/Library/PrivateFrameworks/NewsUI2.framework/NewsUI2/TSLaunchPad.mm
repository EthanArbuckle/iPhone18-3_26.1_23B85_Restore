@interface TSLaunchPad
+ (void)launchSettings;
@end

@implementation TSLaunchPad

+ (void)launchSettings
{
  v2 = objc_opt_new();
  [v2 openApplication:@"com.apple.Preferences" options:0 withResult:0];
}

@end