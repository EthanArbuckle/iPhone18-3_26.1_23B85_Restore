@interface HearingAidUtils
+ (BOOL)isFitNoiseCheckDebugEnabled;
+ (BOOL)isHearingAidInternalEnabled;
+ (id)getBluetoothDeviceFromAddressOrUUID:(id)d;
@end

@implementation HearingAidUtils

+ (id)getBluetoothDeviceFromAddressOrUUID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_HearingAidUtil.isa, dCopy);
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [mEMORY[0x277CF3248] deviceFromAddressString:dCopy];

  if (([v5 connected] & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
    NSLog(&cfstr_HearingAidUtil_0.isa, dCopy);
    mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
    v8 = [mEMORY[0x277CF3248]2 deviceFromIdentifier:v6];

    v5 = v8;
  }

  if (([v5 connected] & 1) == 0)
  {
    NSLog(&cfstr_HearingAidUtil_1.isa, dCopy);
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