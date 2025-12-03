@interface CFXBundleUtils
+ (BOOL)isRunningFacetime;
+ (BOOL)isRunningMessagesExtension;
@end

@implementation CFXBundleUtils

+ (BOOL)isRunningMessagesExtension
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.camera.CameraMessagesApp"];

  return v4;
}

+ (BOOL)isRunningFacetime
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  return v4;
}

@end