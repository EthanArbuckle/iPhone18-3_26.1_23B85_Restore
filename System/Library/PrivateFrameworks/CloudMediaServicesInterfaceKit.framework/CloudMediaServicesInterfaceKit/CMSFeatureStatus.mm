@interface CMSFeatureStatus
+ (BOOL)isMultiPlayerSupported;
+ (void)enableSiriOverrides:(BOOL)a3;
@end

@implementation CMSFeatureStatus

+ (BOOL)isMultiPlayerSupported
{
  v2 = [MEMORY[0x277D27A10] currentSettings];
  v3 = [v2 isMultiplayerHost];

  return v3;
}

+ (void)enableSiriOverrides:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = v4;
  if (v3)
  {
    [v4 setConfigOverrideWithValue:@"true" forKey:@"X-Dev-ConfigOverride-assistant.service.audio.siriKit.thirdPartyHomePod.enabled"];
  }

  else
  {
    [v4 removeConfigOverrideForKey:@"X-Dev-ConfigOverride-assistant.service.audio.siriKit.thirdPartyHomePod.enabled"];
  }

  v6 = [MEMORY[0x277CEF368] sharedPreferences];
  [v6 synchronize];
}

@end