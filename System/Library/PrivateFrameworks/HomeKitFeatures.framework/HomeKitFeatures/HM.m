@interface HM
@end

@implementation HM

uint64_t __HM_FEATURE_RVC_DEFAULTS_ENABLED_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"RVC", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  HM_FEATURE_RVC_DEFAULTS_ENABLED_RVC_DefaultEnabled = result;
  return result;
}

@end