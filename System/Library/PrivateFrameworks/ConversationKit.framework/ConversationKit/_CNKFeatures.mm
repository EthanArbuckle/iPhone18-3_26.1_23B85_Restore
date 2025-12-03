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
- (BOOL)isiPadPostersEnabledFor:(id)for;
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
  selfCopy = self;
  v3 = Features.isFaceTimeLaunchPageEnabled.getter();

  return v3 & 1;
}

- (BOOL)isUIFluidTransitionsEnabled
{
  selfCopy = self;
  v3 = Features.isUIFluidTransitionsEnabled.getter();

  return v3 & 1;
}

- (BOOL)callManagerEnabled
{
  selfCopy = self;
  v3 = Features.callManagerEnabled.getter();

  return v3 & 1;
}

- (BOOL)isIncomingCallBannerEnabled
{
  selfCopy = self;
  v3 = Features.isIncomingCallBannerEnabled.getter();

  return v3 & 1;
}

- (BOOL)shouldEmbedSwapBanner
{
  selfCopy = self;
  v3 = Features.shouldEmbedSwapBanner.getter();

  return v3 & 1;
}

- (BOOL)isHeroImageEnabled
{
  selfCopy = self;
  v3 = Features.isHeroImageEnabled.getter();

  return v3;
}

- (BOOL)isMoreMenuEnabled
{
  selfCopy = self;
  v3 = Features.isMoreMenuEnabled.getter();

  return v3 & 1;
}

- (BOOL)lvm_stopEnabled
{
  selfCopy = self;
  v3 = Features.lvm_stopEnabled.getter();

  return v3 & 1;
}

- (BOOL)shouldShowFullScreenCallWaiting
{
  selfCopy = self;
  v3 = Features.shouldShowFullScreenCallWaiting.getter();

  return v3;
}

- (BOOL)isNameAndPhotoC3Enabled
{
  selfCopy = self;
  v3 = Features.isNameAndPhotoC3Enabled.getter();

  return v3 & 1;
}

- (BOOL)isEnhancedEmergencyEnabled
{
  selfCopy = self;
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  return v3 & 1;
}

- (BOOL)callRecordingEnabled
{
  selfCopy = self;
  v3 = Features.callRecordingEnabled.getter();

  return v3 & 1;
}

- (BOOL)waitOnHoldEnabled
{
  selfCopy = self;
  v3 = Features.waitOnHoldEnabled.getter();

  return v3 & 1;
}

- (BOOL)isDialPadEnabled
{
  selfCopy = self;
  v3 = Features.isDialPadEnabled.getter();

  return v3 & 1;
}

- (BOOL)lvmEverywhereEnabled
{
  selfCopy = self;
  v3 = Features.lvmEverywhereEnabled.getter();

  return v3 & 1;
}

- (BOOL)isiPadPostersEnabled
{
  selfCopy = self;
  v3 = Features.isiPadPostersEnabled.getter();

  return v3 & 1;
}

- (BOOL)isSystemApertureEnabled
{
  selfCopy = self;
  v3 = Features.isSystemApertureEnabled.getter();

  return v3 & 1;
}

- (BOOL)isSADMessagesEnabled
{
  selfCopy = self;
  v3 = Features.isSADMessagesEnabled.getter();

  return v3 & 1;
}

- (BOOL)isScreeningLiveActivityEnabled
{
  selfCopy = self;
  v3 = Features.isScreeningLiveActivityEnabled.getter();

  return v3 & 1;
}

- (BOOL)isFaceTimeMyselfEnabled
{
  selfCopy = self;
  v3 = Features.isFaceTimeMyselfEnabled.getter();

  return v3 & 1;
}

- (BOOL)isAudioCallTranslationEnabled
{
  selfCopy = self;
  v3 = Features.isAudioCallTranslationEnabled.getter();

  return v3 & 1;
}

- (BOOL)isDominoEnabled
{
  selfCopy = self;
  v3 = Features.isDominoEnabled.getter();

  return v3 & 1;
}

- (BOOL)hudActivityManagerEnabled
{
  selfCopy = self;
  v3 = Features.hudActivityManagerEnabled.getter();

  return v3 & 1;
}

- (BOOL)requestToScreenShareEnabled
{
  selfCopy = self;
  v3 = Features.requestToScreenShareEnabled.getter();

  return v3 & 1;
}

- (BOOL)usesModernScreenSharingFromMessages
{
  selfCopy = self;
  v3 = Features.usesModernScreenSharingFromMessages.getter();

  return v3 & 1;
}

- (BOOL)isAppProtectionEnabled
{
  selfCopy = self;
  v3 = Features.isAppProtectionEnabled.getter();

  return v3 & 1;
}

- (BOOL)buttonRemoteControlEnabled
{
  selfCopy = self;
  v3 = Features.buttonRemoteControlEnabled.getter();

  return v3 & 1;
}

- (BOOL)tapToTrackEnabled
{
  selfCopy = self;
  v3 = Features.tapToTrackEnabled.getter();

  return v3 & 1;
}

- (BOOL)iPadCallRecordingEnabled
{
  selfCopy = self;
  v3 = Features.iPadCallRecordingEnabled.getter();

  return v3 & 1;
}

- (BOOL)callRecordingDominoEnabled
{
  selfCopy = self;
  v3 = Features.callRecordingDominoEnabled.getter();

  return v3 & 1;
}

- (BOOL)smartHoldingRelayEnabled
{
  selfCopy = self;
  v3 = Features.smartHoldingRelayEnabled.getter();

  return v3 & 1;
}

- (BOOL)isDualSimParityEnabled
{
  selfCopy = self;
  v3 = Features.isDualSimParityEnabled.getter();

  return v3 & 1;
}

- (BOOL)lvm_endCallImmediately
{
  selfCopy = self;
  v3 = Features.lvm_endCallImmediately.getter();

  return v3 & 1;
}

- (BOOL)showTranscriptWithoutConfidenceFiltering
{
  selfCopy = self;
  v3 = Features.showTranscriptWithoutConfidenceFiltering.getter();

  return v3 & 1;
}

- (BOOL)isModernBannerSystemEnabled
{
  selfCopy = self;
  v3 = Features.isModernBannerSystemEnabled.getter();

  return v3 & 1;
}

- (BOOL)isiPadPostersEnabledFor:(id)for
{
  forCopy = for;
  forCopy2 = for;
  selfCopy = self;
  LOBYTE(forCopy) = Features.isiPadPostersEnabled(for:)(forCopy);

  return forCopy & 1;
}

- (BOOL)isNewCallSwapNonJindoEnabled
{
  selfCopy = self;
  v3 = Features.isNewCallSwapNonJindoEnabled.getter();

  return v3 & 1;
}

- (BOOL)isEasySharedNameAndPhotoEnabled
{
  selfCopy = self;
  v3 = Features.isEasySharedNameAndPhotoEnabled.getter();

  return v3 & 1;
}

- (BOOL)isAvatarSwiftUIEnabled
{
  selfCopy = self;
  v3 = Features.isAvatarSwiftUIEnabled.getter();

  return v3 & 1;
}

- (BOOL)isModernAudioBottomButtonsEnabled
{
  selfCopy = self;
  v3 = Features.isModernAudioBottomButtonsEnabled.getter();

  return v3 & 1;
}

- (BOOL)isICUIRedesignEnabled
{
  selfCopy = self;
  v3 = Features.isICUIRedesignEnabled.getter();

  return v3 & 1;
}

- (BOOL)sharePlayInCallsEnabled
{
  selfCopy = self;
  v3 = Features.sharePlayInCallsEnabled.getter();

  return v3 & 1;
}

- (BOOL)receptionistEnabled
{
  selfCopy = self;
  v3 = Features.receptionistEnabled.getter();

  return v3 & 1;
}

- (BOOL)nudityDetectionEnabled
{
  selfCopy = self;
  v3 = Features.nudityDetectionEnabled.getter();

  return v3 & 1;
}

@end