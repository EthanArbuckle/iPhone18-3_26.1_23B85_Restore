@interface CFXBundleUtils
+ (BOOL)isRunningFacetime;
+ (BOOL)isRunningMessagesExtension;
@end

@implementation CFXBundleUtils

+ (BOOL)isRunningMessagesExtension
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.camera.CameraMessagesApp"];

  return v4;
}

+ (BOOL)isRunningFacetime
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.InCallService"];

  return v4;
}

@end