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
- (BOOL)isiPadPostersEnabledForCall:(id)call;
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
  isFaceTimeLaunchPageEnabled = [v2 isFaceTimeLaunchPageEnabled];

  return isFaceTimeLaunchPageEnabled;
}

- (BOOL)isUIFluidTransitionsEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isUIFluidTransitionsEnabled = [v2 isUIFluidTransitionsEnabled];

  return isUIFluidTransitionsEnabled;
}

- (BOOL)callManagerEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  callManagerEnabled = [v2 callManagerEnabled];

  return callManagerEnabled;
}

- (BOOL)isIncomingCallBannerEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isIncomingCallBannerEnabled = [v2 isIncomingCallBannerEnabled];

  return isIncomingCallBannerEnabled;
}

- (BOOL)shouldEmbedSwapBanner
{
  v2 = +[_CNKFeatures sharedInstance];
  shouldEmbedSwapBanner = [v2 shouldEmbedSwapBanner];

  return shouldEmbedSwapBanner;
}

- (BOOL)isHeroImageEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isHeroImageEnabled = [v2 isHeroImageEnabled];

  return isHeroImageEnabled;
}

- (BOOL)isMoreMenuEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isMoreMenuEnabled = [v2 isMoreMenuEnabled];

  return isMoreMenuEnabled;
}

- (BOOL)lvm_stopEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  lvm_stopEnabled = [v2 lvm_stopEnabled];

  return lvm_stopEnabled;
}

- (BOOL)shouldShowFullScreenCallWaiting
{
  v2 = +[_CNKFeatures sharedInstance];
  shouldShowFullScreenCallWaiting = [v2 shouldShowFullScreenCallWaiting];

  return shouldShowFullScreenCallWaiting;
}

- (BOOL)isNameAndPhotoC3Enabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isNameAndPhotoC3Enabled = [v2 isNameAndPhotoC3Enabled];

  return isNameAndPhotoC3Enabled;
}

- (BOOL)isEnhancedEmergencyEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isEnhancedEmergencyEnabled = [v2 isEnhancedEmergencyEnabled];

  return isEnhancedEmergencyEnabled;
}

- (BOOL)callRecordingEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  callRecordingEnabled = [v2 callRecordingEnabled];

  return callRecordingEnabled;
}

- (BOOL)waitOnHoldEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  waitOnHoldEnabled = [v2 waitOnHoldEnabled];

  return waitOnHoldEnabled;
}

- (BOOL)isDialPadEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isDialPadEnabled = [v2 isDialPadEnabled];

  return isDialPadEnabled;
}

- (BOOL)lvmEverywhereEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  lvmEverywhereEnabled = [v2 lvmEverywhereEnabled];

  return lvmEverywhereEnabled;
}

- (BOOL)isSystemApertureEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isSystemApertureEnabled = [v2 isSystemApertureEnabled];

  return isSystemApertureEnabled;
}

- (BOOL)isSADMessagesEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isSADMessagesEnabled = [v2 isSADMessagesEnabled];

  return isSADMessagesEnabled;
}

- (BOOL)isDominoEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isDominoEnabled = [v2 isDominoEnabled];

  return isDominoEnabled;
}

- (BOOL)buttonRemoteControlEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  buttonRemoteControlEnabled = [v2 buttonRemoteControlEnabled];

  return buttonRemoteControlEnabled;
}

- (BOOL)tapToTrackEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  tapToTrackEnabled = [v2 tapToTrackEnabled];

  return tapToTrackEnabled;
}

- (BOOL)iPadCallRecordingEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  iPadCallRecordingEnabled = [v2 iPadCallRecordingEnabled];

  return iPadCallRecordingEnabled;
}

- (BOOL)callRecordingDominoEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  callRecordingDominoEnabled = [v2 callRecordingDominoEnabled];

  return callRecordingDominoEnabled;
}

- (BOOL)smartHoldingRelayEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  smartHoldingRelayEnabled = [v2 smartHoldingRelayEnabled];

  return smartHoldingRelayEnabled;
}

- (BOOL)requestToScreenShareEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  requestToScreenShareEnabled = [v2 requestToScreenShareEnabled];

  return requestToScreenShareEnabled;
}

- (BOOL)lvm_endCallImmediately
{
  v2 = +[_CNKFeatures sharedInstance];
  lvm_endCallImmediately = [v2 lvm_endCallImmediately];

  return lvm_endCallImmediately;
}

- (BOOL)isModernBannerSystemEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isModernBannerSystemEnabled = [v2 isModernBannerSystemEnabled];

  return isModernBannerSystemEnabled;
}

- (BOOL)isiPadPostersEnabledForCall:(id)call
{
  if (call)
  {
    v3 = [call isSOS] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  v4 = +[_CNKFeatures sharedInstance];
  isiPadPostersEnabled = [v4 isiPadPostersEnabled];

  return isiPadPostersEnabled & v3;
}

- (BOOL)isNewCallSwapNonJindoEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isNewCallSwapNonJindoEnabled = [v2 isNewCallSwapNonJindoEnabled];

  return isNewCallSwapNonJindoEnabled;
}

- (BOOL)isModernAudioBottomButtonsEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isModernAudioBottomButtonsEnabled = [v2 isModernAudioBottomButtonsEnabled];

  return isModernAudioBottomButtonsEnabled;
}

- (BOOL)isDualSimParityEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isDualSimParityEnabled = [v2 isDualSimParityEnabled];

  return isDualSimParityEnabled;
}

- (BOOL)isICUIRedesignEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  isICUIRedesignEnabled = [v2 isICUIRedesignEnabled];

  return isICUIRedesignEnabled;
}

- (BOOL)sharePlayInCallsEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  sharePlayInCallsEnabled = [v2 sharePlayInCallsEnabled];

  return sharePlayInCallsEnabled;
}

- (BOOL)receptionistEnabled
{
  v2 = +[_CNKFeatures sharedInstance];
  receptionistEnabled = [v2 receptionistEnabled];

  return receptionistEnabled;
}

@end