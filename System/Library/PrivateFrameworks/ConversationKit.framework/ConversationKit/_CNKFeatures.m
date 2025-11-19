@interface _CNKFeatures
+ (_CNKFeatures)sharedInstance;
- (BOOL)buttonRemoteControlEnabled;
- (BOOL)callManagerEnabled;
- (BOOL)callRecordingDominoEnabled;
- (BOOL)callRecordingEnabled;
- (BOOL)hudActivityManagerEnabled;
- (BOOL)iPadCallRecordingEnabled;
- (BOOL)isAppProtectionEnabled;
- (BOOL)isAudioCallTranslationEnabled;
- (BOOL)isAvatarSwiftUIEnabled;
- (BOOL)isDialPadEnabled;
- (BOOL)isDominoEnabled;
- (BOOL)isDualSimParityEnabled;
- (BOOL)isEasySharedNameAndPhotoEnabled;
- (BOOL)isEnhancedEmergencyEnabled;
- (BOOL)isFaceTimeLaunchPageEnabled;
- (BOOL)isFaceTimeMyselfEnabled;
- (BOOL)isHeroImageEnabled;
- (BOOL)isICUIRedesignEnabled;
- (BOOL)isIncomingCallBannerEnabled;
- (BOOL)isModernAudioBottomButtonsEnabled;
- (BOOL)isModernBannerSystemEnabled;
- (BOOL)isMoreMenuEnabled;
- (BOOL)isNameAndPhotoC3Enabled;
- (BOOL)isNewCallSwapNonJindoEnabled;
- (BOOL)isSADMessagesEnabled;
- (BOOL)isScreeningLiveActivityEnabled;
- (BOOL)isSystemApertureEnabled;
- (BOOL)isUIFluidTransitionsEnabled;
- (BOOL)isiPadPostersEnabled;
- (BOOL)isiPadPostersEnabledFor:(id)a3;
- (BOOL)lvmEverywhereEnabled;
- (BOOL)lvm_endCallImmediately;
- (BOOL)lvm_stopEnabled;
- (BOOL)nudityDetectionEnabled;
- (BOOL)receptionistEnabled;
- (BOOL)requestToScreenShareEnabled;
- (BOOL)sharePlayInCallsEnabled;
- (BOOL)shouldEmbedSwapBanner;
- (BOOL)shouldShowFullScreenCallWaiting;
- (BOOL)showTranscriptWithoutConfidenceFiltering;
- (BOOL)smartHoldingRelayEnabled;
- (BOOL)tapToTrackEnabled;
- (BOOL)usesModernScreenSharingFromMessages;
- (BOOL)waitOnHoldEnabled;
@end

@implementation _CNKFeatures

+ (_CNKFeatures)sharedInstance
{
  v2 = static Features.shared.getter();

  return v2;
}

- (BOOL)isFaceTimeLaunchPageEnabled
{
  v2 = self;
  v3 = Features.isFaceTimeLaunchPageEnabled.getter();

  return v3 & 1;
}

- (BOOL)isUIFluidTransitionsEnabled
{
  v2 = self;
  v3 = Features.isUIFluidTransitionsEnabled.getter();

  return v3 & 1;
}

- (BOOL)callManagerEnabled
{
  v2 = self;
  v3 = Features.callManagerEnabled.getter();

  return v3 & 1;
}

- (BOOL)isIncomingCallBannerEnabled
{
  v2 = self;
  v3 = Features.isIncomingCallBannerEnabled.getter();

  return v3 & 1;
}

- (BOOL)shouldEmbedSwapBanner
{
  v2 = self;
  v3 = Features.shouldEmbedSwapBanner.getter();

  return v3 & 1;
}

- (BOOL)isHeroImageEnabled
{
  v2 = self;
  v3 = Features.isHeroImageEnabled.getter();

  return v3;
}

- (BOOL)isMoreMenuEnabled
{
  v2 = self;
  v3 = Features.isMoreMenuEnabled.getter();

  return v3 & 1;
}

- (BOOL)lvm_stopEnabled
{
  v2 = self;
  v3 = Features.lvm_stopEnabled.getter();

  return v3 & 1;
}

- (BOOL)shouldShowFullScreenCallWaiting
{
  v2 = self;
  v3 = Features.shouldShowFullScreenCallWaiting.getter();

  return v3;
}

- (BOOL)isNameAndPhotoC3Enabled
{
  v2 = self;
  v3 = Features.isNameAndPhotoC3Enabled.getter();

  return v3 & 1;
}

- (BOOL)isEnhancedEmergencyEnabled
{
  v2 = self;
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  return v3 & 1;
}

- (BOOL)callRecordingEnabled
{
  v2 = self;
  v3 = Features.callRecordingEnabled.getter();

  return v3 & 1;
}

- (BOOL)waitOnHoldEnabled
{
  v2 = self;
  v3 = Features.waitOnHoldEnabled.getter();

  return v3 & 1;
}

- (BOOL)isDialPadEnabled
{
  v2 = self;
  v3 = Features.isDialPadEnabled.getter();

  return v3 & 1;
}

- (BOOL)lvmEverywhereEnabled
{
  v2 = self;
  v3 = Features.lvmEverywhereEnabled.getter();

  return v3 & 1;
}

- (BOOL)isiPadPostersEnabled
{
  v2 = self;
  v3 = Features.isiPadPostersEnabled.getter();

  return v3 & 1;
}

- (BOOL)isSystemApertureEnabled
{
  v2 = self;
  v3 = Features.isSystemApertureEnabled.getter();

  return v3 & 1;
}

- (BOOL)isSADMessagesEnabled
{
  v2 = self;
  v3 = Features.isSADMessagesEnabled.getter();

  return v3 & 1;
}

- (BOOL)isScreeningLiveActivityEnabled
{
  v2 = self;
  v3 = Features.isScreeningLiveActivityEnabled.getter();

  return v3 & 1;
}

- (BOOL)isFaceTimeMyselfEnabled
{
  v2 = self;
  v3 = Features.isFaceTimeMyselfEnabled.getter();

  return v3 & 1;
}

- (BOOL)isAudioCallTranslationEnabled
{
  v2 = self;
  v3 = Features.isAudioCallTranslationEnabled.getter();

  return v3 & 1;
}

- (BOOL)isDominoEnabled
{
  v2 = self;
  v3 = Features.isDominoEnabled.getter();

  return v3 & 1;
}

- (BOOL)hudActivityManagerEnabled
{
  v2 = self;
  v3 = Features.hudActivityManagerEnabled.getter();

  return v3 & 1;
}

- (BOOL)requestToScreenShareEnabled
{
  v2 = self;
  v3 = Features.requestToScreenShareEnabled.getter();

  return v3 & 1;
}

- (BOOL)usesModernScreenSharingFromMessages
{
  v2 = self;
  v3 = Features.usesModernScreenSharingFromMessages.getter();

  return v3 & 1;
}

- (BOOL)isAppProtectionEnabled
{
  v2 = self;
  v3 = Features.isAppProtectionEnabled.getter();

  return v3 & 1;
}

- (BOOL)buttonRemoteControlEnabled
{
  v2 = self;
  v3 = Features.buttonRemoteControlEnabled.getter();

  return v3 & 1;
}

- (BOOL)tapToTrackEnabled
{
  v2 = self;
  v3 = Features.tapToTrackEnabled.getter();

  return v3 & 1;
}

- (BOOL)iPadCallRecordingEnabled
{
  v2 = self;
  v3 = Features.iPadCallRecordingEnabled.getter();

  return v3 & 1;
}

- (BOOL)callRecordingDominoEnabled
{
  v2 = self;
  v3 = Features.callRecordingDominoEnabled.getter();

  return v3 & 1;
}

- (BOOL)smartHoldingRelayEnabled
{
  v2 = self;
  v3 = Features.smartHoldingRelayEnabled.getter();

  return v3 & 1;
}

- (BOOL)isDualSimParityEnabled
{
  v2 = self;
  v3 = Features.isDualSimParityEnabled.getter();

  return v3 & 1;
}

- (BOOL)lvm_endCallImmediately
{
  v2 = self;
  v3 = Features.lvm_endCallImmediately.getter();

  return v3 & 1;
}

- (BOOL)showTranscriptWithoutConfidenceFiltering
{
  v2 = self;
  v3 = Features.showTranscriptWithoutConfidenceFiltering.getter();

  return v3 & 1;
}

- (BOOL)isModernBannerSystemEnabled
{
  v2 = self;
  v3 = Features.isModernBannerSystemEnabled.getter();

  return v3 & 1;
}

- (BOOL)isiPadPostersEnabledFor:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = Features.isiPadPostersEnabled(for:)(v3);

  return v3 & 1;
}

- (BOOL)isNewCallSwapNonJindoEnabled
{
  v2 = self;
  v3 = Features.isNewCallSwapNonJindoEnabled.getter();

  return v3 & 1;
}

- (BOOL)isEasySharedNameAndPhotoEnabled
{
  v2 = self;
  v3 = Features.isEasySharedNameAndPhotoEnabled.getter();

  return v3 & 1;
}

- (BOOL)isAvatarSwiftUIEnabled
{
  v2 = self;
  v3 = Features.isAvatarSwiftUIEnabled.getter();

  return v3 & 1;
}

- (BOOL)isModernAudioBottomButtonsEnabled
{
  v2 = self;
  v3 = Features.isModernAudioBottomButtonsEnabled.getter();

  return v3 & 1;
}

- (BOOL)isICUIRedesignEnabled
{
  v2 = self;
  v3 = Features.isICUIRedesignEnabled.getter();

  return v3 & 1;
}

- (BOOL)sharePlayInCallsEnabled
{
  v2 = self;
  v3 = Features.sharePlayInCallsEnabled.getter();

  return v3 & 1;
}

- (BOOL)receptionistEnabled
{
  v2 = self;
  v3 = Features.receptionistEnabled.getter();

  return v3 & 1;
}

- (BOOL)nudityDetectionEnabled
{
  v2 = self;
  v3 = Features.nudityDetectionEnabled.getter();

  return v3 & 1;
}

@end