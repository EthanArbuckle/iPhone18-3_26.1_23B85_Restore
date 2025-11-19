@interface HearingAidUtils
+ (BOOL)isFitNoiseCheckDebugEnabled;
+ (BOOL)isHearingAidInternalEnabled;
+ (id)getBluetoothDeviceFromAddressOrUUID:(id)a3;
@end

@implementation HearingAidUtils

+ (id)getBluetoothDeviceFromAddressOrUUID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_HearingAidUtil.isa, v3);
  v4 = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [v4 deviceFromAddressString:v3];

  if (([v5 connected] & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
    NSLog(&cfstr_HearingAidUtil_0.isa, v3);
    v7 = [MEMORY[0x277CF3248] sharedInstance];
    v8 = [v7 deviceFromIdentifier:v6];

    v5 = v8;
  }

  if (([v5 connected] & 1) == 0)
  {
    NSLog(&cfstr_HearingAidUtil_1.isa, v3);
  }

  return v5;
}

+ (BOOL)isHearingAidInternalEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HearingAidInternal", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

+ (BOOL)isFitNoiseCheckDebugEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FaultNoiseCheckDebug", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

@end