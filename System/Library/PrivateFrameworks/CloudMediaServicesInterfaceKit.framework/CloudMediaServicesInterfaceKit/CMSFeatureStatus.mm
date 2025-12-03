@interface CMSFeatureStatus
+ (BOOL)isMultiPlayerSupported;
+ (void)enableSiriOverrides:(BOOL)overrides;
@end

@implementation CMSFeatureStatus

+ (BOOL)isMultiPlayerSupported
{
  currentSettings = [MEMORY[0x277D27A10] currentSettings];
  isMultiplayerHost = [currentSettings isMultiplayerHost];

  return isMultiplayerHost;
}

+ (void)enableSiriOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = mEMORY[0x277CEF368];
  if (overridesCopy)
  {
    [mEMORY[0x277CEF368] setConfigOverrideWithValue:@"true" forKey:@"X-Dev-ConfigOverride-assistant.service.audio.siriKit.thirdPartyHomePod.enabled"];
  }

  else
  {
    [mEMORY[0x277CEF368] removeConfigOverrideForKey:@"X-Dev-ConfigOverride-assistant.service.audio.siriKit.thirdPartyHomePod.enabled"];
  }

  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368]2 synchronize];
}

@end