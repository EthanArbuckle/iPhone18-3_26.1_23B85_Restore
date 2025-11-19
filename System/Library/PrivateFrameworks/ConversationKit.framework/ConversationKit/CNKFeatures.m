@interface CNKFeatures
+ (CNKFeatures)sharedInstance;
- (BOOL)buttonRemoteControlEnabled;
- (BOOL)callManagerEnabled;
- (BOOL)callRecordingDominoEnabled;
- (BOOL)callRecordingEnabled;
- (BOOL)iPadCallRecordingEnabled;
- (BOOL)isDialPadEnabled;
- (BOOL)isDominoEnabled;
- (BOOL)isDualSimParityEnabled;
- (BOOL)isEnhancedEmergencyEnabled;
- (BOOL)isFaceTimeLaunchPageEnabled;
- (BOOL)isHeroImageEnabled;
- (BOOL)isICUIRedesignEnabled;
- (BOOL)isIncomingCallBannerEnabled;
- (BOOL)isModernAudioBottomButtonsEnabled;
- (BOOL)isModernBannerSystemEnabled;
- (BOOL)isMoreMenuEnabled;
- (BOOL)isNameAndPhotoC3Enabled;
- (BOOL)isNewCallSwapNonJindoEnabled;
- (BOOL)isSADMessagesEnabled;
- (BOOL)isSystemApertureEnabled;
- (BOOL)isUIFluidTransitionsEnabled;
- (BOOL)isiPadPostersEnabledForCall:(id)a3;
- (BOOL)lvmEverywhereEnabled;
- (BOOL)lvm_endCallImmediately;
- (BOOL)lvm_stopEnabled;
- (BOOL)receptionistEnabled;
- (BOOL)requestToScreenShareEnabled;
- (BOOL)sharePlayInCallsEnabled;
- (BOOL)shouldEmbedSwapBanner;
- (BOOL)shouldShowFullScreenCallWaiting;
- (BOOL)smartHoldingRelayEnabled;
- (BOOL)tapToTrackEnabled;
- (BOOL)waitOnHoldEnabled;
@end

@implementation CNKFeatures

+ (CNKFeatures)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CNKFeatures sharedInstance];
  }

  v3 = sharedInstance_sFeatures;

  return v3;
}

void __29__CNKFeatures_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CNKFeatures);
  v1 = sharedInstance_sFeatures;
  sharedInstance_sFeatures = v0;
}

- (BOOL)isFaceTimeLaunchPageEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isFaceTimeLaunchPageEnabled];

  return v3;
}

- (BOOL)isUIFluidTransitionsEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isUIFluidTransitionsEnabled];

  return v3;
}

- (BOOL)callManagerEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 callManagerEnabled];

  return v3;
}

- (BOOL)isIncomingCallBannerEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isIncomingCallBannerEnabled];

  return v3;
}

- (BOOL)shouldEmbedSwapBanner
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 shouldEmbedSwapBanner];

  return v3;
}

- (BOOL)isHeroImageEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isHeroImageEnabled];

  return v3;
}

- (BOOL)isMoreMenuEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isMoreMenuEnabled];

  return v3;
}

- (BOOL)lvm_stopEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 lvm_stopEnabled];

  return v3;
}

- (BOOL)shouldShowFullScreenCallWaiting
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 shouldShowFullScreenCallWaiting];

  return v3;
}

- (BOOL)isNameAndPhotoC3Enabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isNameAndPhotoC3Enabled];

  return v3;
}

- (BOOL)isEnhancedEmergencyEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isEnhancedEmergencyEnabled];

  return v3;
}

- (BOOL)callRecordingEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 callRecordingEnabled];

  return v3;
}

- (BOOL)waitOnHoldEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 waitOnHoldEnabled];

  return v3;
}

- (BOOL)isDialPadEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isDialPadEnabled];

  return v3;
}

- (BOOL)lvmEverywhereEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 lvmEverywhereEnabled];

  return v3;
}

- (BOOL)isSystemApertureEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isSystemApertureEnabled];

  return v3;
}

- (BOOL)isSADMessagesEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isSADMessagesEnabled];

  return v3;
}

- (BOOL)isDominoEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isDominoEnabled];

  return v3;
}

- (BOOL)buttonRemoteControlEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 buttonRemoteControlEnabled];

  return v3;
}

- (BOOL)tapToTrackEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 tapToTrackEnabled];

  return v3;
}

- (BOOL)iPadCallRecordingEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 iPadCallRecordingEnabled];

  return v3;
}

- (BOOL)callRecordingDominoEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 callRecordingDominoEnabled];

  return v3;
}

- (BOOL)smartHoldingRelayEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 smartHoldingRelayEnabled];

  return v3;
}

- (BOOL)requestToScreenShareEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 requestToScreenShareEnabled];

  return v3;
}

- (BOOL)lvm_endCallImmediately
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 lvm_endCallImmediately];

  return v3;
}

- (BOOL)isModernBannerSystemEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isModernBannerSystemEnabled];

  return v3;
}

- (BOOL)isiPadPostersEnabledForCall:(id)a3
{
  if (a3)
  {
    v3 = [a3 isSOS] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  v4 = +[_CNKFeatures sharedInstance];
  v5 = [v4 isiPadPostersEnabled];

  return v5 & v3;
}

- (BOOL)isNewCallSwapNonJindoEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isNewCallSwapNonJindoEnabled];

  return v3;
}

- (BOOL)isModernAudioBottomButtonsEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isModernAudioBottomButtonsEnabled];

  return v3;
}

- (BOOL)isDualSimParityEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isDualSimParityEnabled];

  return v3;
}

- (BOOL)isICUIRedesignEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 isICUIRedesignEnabled];

  return v3;
}

- (BOOL)sharePlayInCallsEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 sharePlayInCallsEnabled];

  return v3;
}

- (BOOL)receptionistEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  v3 = [v2 receptionistEnabled];

  return v3;
}

@end