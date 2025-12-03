@interface CSSiriAudioActivationInfo
+ (BOOL)_doesRecordRouteSupportZLL:(id)l;
+ (BOOL)_requestIsUsingHFPWithRecordRoute:(id)route playbackRoute:(id)playbackRoute;
+ (BOOL)_shouldAllowRecordWhileBeepWithRecordRoute:(id)route playbackRoute:(id)playbackRoute supportsEchoCancellation:(BOOL)cancellation speechRecordingMode:(int64_t)mode recordingInfo:(id)info;
+ (id)_alertBehaviorForRecordRoute:(id)route playbackRoute:(id)playbackRoute speechEvent:(int64_t)event speechRecordingMode:(int64_t)mode ringerState:(int64_t)state startingAlertBeepOverideID:(int64_t)d presentationMode:(int64_t)presentationMode usePrelistening:(BOOL)self0 isOnPhoneCall:(BOOL)self1 hasPlayedStartAlert:(BOOL)self2 supportsEchoCancellation:(BOOL)self3 isVoiceOverTouchEnabled:(BOOL)self4 isVibrationEnabled:(BOOL)self5 isVibrationSupported:(BOOL)self6 suppressStartAlert:(BOOL)self7 activationHostTime:(unint64_t)self8 isVoiceOverSiriSoundsEnabled:(BOOL)self9;
+ (id)_alertDictionaryForRecordRoute:(id)route playbackRoute:(id)playbackRoute speechEvent:(int64_t)event ringerState:(int64_t)state startingAlertBeepOverideID:(int64_t)d presentationMode:(int64_t)mode hasPlayedStartAlert:(BOOL)alert supportsEchoCancellation:(BOOL)self0 isVoiceOverTouchEnabled:(BOOL)self1 isVibrationEnabled:(BOOL)self2 isVibrationSupported:(BOOL)self3 activationHostTime:(unint64_t)self4 isVoiceOverSiriSoundsEnabled:(BOOL)self5;
+ (id)_dictationAlertBehaviorDictionaryForRecordRoute:(id)route playbackRoute:(id)playbackRoute ringerState:(int64_t)state usePrelistening:(BOOL)prelistening suppressStartAlert:(BOOL)alert supportsEchoCancellation:(BOOL)cancellation isVibrationEnabled:(BOOL)enabled isVibrationSupported:(BOOL)self0 isVoiceOverTouchEnabled:(BOOL)self1;
- (BOOL)_canUseZLL;
- (BOOL)_isRequestFromSpokenNotification:(int64_t)notification;
- (BOOL)_isSystemHapticEnabled;
- (BOOL)_isVibrationDisabledInAccessibility;
- (BOOL)_isVoiceOverTouchEnabledInAccessibility;
- (BOOL)canEnterTwoShot;
- (BOOL)canPrewarm;
- (BOOL)needsUpdateToPostVoiceMode;
- (BOOL)requiresBorealisConsumerCheck;
- (BOOL)shouldExplicitlyPlayAlertOnStart;
- (BOOL)shouldPlayAlertIfNotPrelistening;
- (CSSiriAudioActivationInfo)initWithSpeechRecordingMode:(int64_t)mode clientConfiguration:(id)configuration experimentContext:(id)context;
- (id)_appendDictationApplicationInfoSettings:(id)settings;
- (id)_audioSessionActiveDelayCoreSpeechWithType:(unint64_t)type;
- (id)_audioSessionActiveDelayOverride;
- (id)_audioSessionActiveDelayServerConfiguration;
- (id)_audioSessionActiveDelayUserPerceptionWithType:(unint64_t)type;
- (id)audioSessionActivationTargetDate;
- (id)dateByAddingTimeIntervalSinceActivation:(double)activation;
- (id)description;
- (id)recordContext;
- (id)recordContextForSpeechEvent:(int64_t)event;
- (id)recordSettingsWithOptions:(unint64_t)options appendingSettings:(id)settings;
- (id)startRecordingSettingsWithRecordRoute:(id)route recordingInfo:(id)info playbackRoute:(id)playbackRoute;
- (id)startingAlertBeepURL;
- (int64_t)_activationMode;
- (int64_t)_csAudioRecordType;
- (int64_t)_csAudioRecordTypeForSpeechRequestOptions:(id)options useBorealisBuffer:(BOOL)buffer currentClientConfiguration:(id)configuration;
- (int64_t)overrideStartingAlertBeepSoundID;
- (int64_t)saeToneIDWithCarPlayConnected:(BOOL)connected;
- (int64_t)twoShotFeedbackAlertOverrideForRecordRoute:(id)route playbackRoute:(id)playbackRoute deviceSupportsVibrator:(BOOL)vibrator deviceSupportsEC:(BOOL)c;
- (int64_t)twoShotPromptTypeForRecordRoute:(id)route playbackRoute:(id)playbackRoute;
- (unint64_t)beginUpdateToPostVoice;
- (void)endUpdateToPostVoiceWithContext:(unint64_t)context success:(BOOL)success;
- (void)setClientConfiguration:(id)configuration;
- (void)setSpeechRequestOptions:(id)options currentActivationInfo:(id)info;
@end

@implementation CSSiriAudioActivationInfo

- (id)description
{
  v8 = bswap32([(CSSiriAudioActivationInfo *)self _activationMode]);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = CSSiriAudioActivationInfo;
  v4 = [(CSSiriAudioActivationInfo *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {activationMode = %.4s, deviceIdentifier = %@, activated = %d}", v4, &v8, self->_deviceIdentifier, self->_isActivated];

  return v5;
}

- (int64_t)_activationMode
{
  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return self->_activationMode;
  }

  if (AFIsATV())
  {
    return 1651797093;
  }

  return 1684628340;
}

- (id)recordContext
{
  _csAudioRecordType = [(CSSiriAudioActivationInfo *)self _csAudioRecordType];
  v4 = [objc_alloc(MEMORY[0x277D01648]) initWithRecordType:_csAudioRecordType deviceId:self->_deviceIdentifier];
  [v4 setIsRequestDuringActiveCall:self->_isOnPhoneCall];
  v5 = MEMORY[0x223DD1690](self->_turnIdentifier);
  [v4 setTurnIdentifier:v5];

  if (self->_activationMetadata)
  {
    [v4 setActivationMetadata:?];
  }

  [v4 setIsRequestFromSpokenNotification:self->_isSpokenNotification];
  [v4 setIsRequestFromTriggerless:self->_isTriggerlessFollowup];
  [v4 setSpeechEvent:self->_speechEvent];

  return v4;
}

- (int64_t)_csAudioRecordType
{
  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return self->_csAudioRecordType;
  }

  if (AFIsATV())
  {
    return 8;
  }

  return 13;
}

- (BOOL)needsUpdateToPostVoiceMode
{
  if (!self->_isActivated)
  {
    return 0;
  }

  v3 = CSIsTV();
  activationMode = self->_activationMode;
  if (v3)
  {
    if (activationMode == 1751414371)
    {
      return 0;
    }
  }

  return activationMode == 1668314723 || activationMode == 1751414371 || activationMode == 1987012963;
}

- (id)_audioSessionActiveDelayServerConfiguration
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    activeMediaPlaybackVolume = self->_activeMediaPlaybackVolume;
    v20 = 136315394;
    v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
    v22 = 2048;
    v23 = activeMediaPlaybackVolume;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s activeMediaPlaybackVolume = %f", &v20, 0x16u);
  }

  if (self->_activeMediaPlaybackVolume <= 0.0)
  {
    goto LABEL_11;
  }

  mEMORY[0x277D01890] = [MEMORY[0x277D01890] sharedPreferences];
  serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay = [mEMORY[0x277D01890] serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay];

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
    v22 = 2112;
    v23 = *&serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s mediaPlaybackVolumeThreshold = %@", &v20, 0x16u);
  }

  if (!serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay || ([serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay floatValue], v9 <= 0.0) || (objc_msgSend(serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay, "floatValue"), v10 >= 1.0) || (v11 = self->_activeMediaPlaybackVolume, objc_msgSend(serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay, "floatValue"), v11 < v12))
  {

LABEL_11:
    mEMORY[0x277D01890]2 = [MEMORY[0x277D01890] sharedPreferences];
    serverAudioSessionActivationDelay = [mEMORY[0x277D01890]2 serverAudioSessionActivationDelay];

    v15 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
      v22 = 2112;
      v23 = *&serverAudioSessionActivationDelay;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@ (Default)", &v20, 0x16u);
    }

    goto LABEL_13;
  }

  mEMORY[0x277D01890]3 = [MEMORY[0x277D01890] sharedPreferences];
  serverAudioSessionActivationDelay = [mEMORY[0x277D01890]3 serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold];

  v19 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
    v22 = 2112;
    v23 = *&serverAudioSessionActivationDelay;
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@ (Above Media Playback Volume Threshold)", &v20, 0x16u);
  }

  if (!serverAudioSessionActivationDelay)
  {
    goto LABEL_11;
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return serverAudioSessionActivationDelay;
}

- (id)_audioSessionActiveDelayOverride
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D01890] = [MEMORY[0x277D01890] sharedPreferences];
  overrideAudioSessionActiveDelay = [mEMORY[0x277D01890] overrideAudioSessionActiveDelay];

  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayOverride]";
    v9 = 2112;
    v10 = overrideAudioSessionActiveDelay;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return overrideAudioSessionActiveDelay;
}

- (id)_audioSessionActiveDelayUserPerceptionWithType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__CSSiriAudioActivationInfo__audioSessionActiveDelayUserPerceptionWithType___block_invoke;
  v13[3] = &unk_2784C4B10;
  v13[4] = self;
  v4 = MEMORY[0x223DD26C0](v13, a2, type);
  v5 = v4;
  if (self->_speechEvent == 15)
  {
    v6 = (*(v4 + 16))(v4, &unk_2836678A8);
    v7 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v9 = v6;
      goto LABEL_13;
    }

    *buf = 136315394;
    v15 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayUserPerceptionWithType:]";
    v16 = 2112;
    v17 = v6;
    v8 = "%s audioSessionActiveDelay = %@ (Hearst Voice)";
LABEL_4:
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, v8, buf, 0x16u);
    goto LABEL_5;
  }

  if ([MEMORY[0x277CB84F0] supportsDuckingOnSpeakerOutput] && self->_speechEvent == 8)
  {
    v6 = (v5)[2](v5, &unk_2836678A8);
    v7 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    *buf = 136315394;
    v15 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayUserPerceptionWithType:]";
    v16 = 2112;
    v17 = v6;
    v8 = "%s audioSessionActiveDelay = %@ (Built In Voice)";
    goto LABEL_4;
  }

  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayUserPerceptionWithType:]";
    v16 = 2112;
    v17 = 0;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@ (Others)", buf, 0x16u);
  }

  v9 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

id __76__CSSiriAudioActivationInfo__audioSessionActiveDelayUserPerceptionWithType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _audioSessionActiveDelayOverride];
  if (!v4)
  {
    v4 = [*(a1 + 32) _audioSessionActiveDelayServerConfiguration];
    if (!v4)
    {
      v4 = v3;
    }
  }

  v5 = v4;

  return v5;
}

- (id)_audioSessionActiveDelayCoreSpeechWithType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_speechEvent == 17)
  {
    v3 = *MEMORY[0x277CEF0E8];
    v4 = &unk_283667898;
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v12 = 136315394;
    v13 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayCoreSpeechWithType:]";
    v14 = 2112;
    v15 = &unk_283667898;
    v5 = "%s audioSessionActiveDelay = %@ (Triggerless Listening)";
LABEL_7:
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, v5, &v12, 0x16u);
    goto LABEL_11;
  }

  if (AFSupportsAudioSessionCoordination())
  {
    v3 = *MEMORY[0x277CEF0E8];
    v4 = &unk_283667898;
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v12 = 136315394;
    v13 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayCoreSpeechWithType:]";
    v14 = 2112;
    v15 = &unk_283667898;
    v5 = "%s audioSessionActiveDelay = %@ (Audio Session Coordination)";
    goto LABEL_7;
  }

  v8 = [(CSSiriAudioActivationInfo *)self _audioSessionActiveDelayUserPerceptionWithType:type];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayCoreSpeechWithType:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@ (User Perception)", &v12, 0x16u);
  }

  v4 = v8;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_isVibrationDisabledInAccessibility
{
  accessibilityState = [(AFClientConfiguration *)self->_currentClientConfiguration accessibilityState];
  isVibrationDisabled = [accessibilityState isVibrationDisabled];

  if (!isVibrationDisabled)
  {
    mEMORY[0x277CEF138] = [MEMORY[0x277CEF138] sharedObserver];
    state = [mEMORY[0x277CEF138] state];
    isVibrationDisabled = [state isVibrationDisabled];
  }

  return isVibrationDisabled == 2;
}

- (BOOL)_isSystemHapticEnabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.preferences.sounds"];
  v3 = [v2 objectForKey:@"effects-haptic"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_isVoiceOverTouchEnabledInAccessibility
{
  accessibilityState = [(AFClientConfiguration *)self->_currentClientConfiguration accessibilityState];
  isVoiceOverTouchEnabled = [accessibilityState isVoiceOverTouchEnabled];

  if (!isVoiceOverTouchEnabled)
  {
    mEMORY[0x277CEF138] = [MEMORY[0x277CEF138] sharedObserver];
    state = [mEMORY[0x277CEF138] state];
    isVoiceOverTouchEnabled = [state isVoiceOverTouchEnabled];
  }

  return isVoiceOverTouchEnabled == 2;
}

- (id)dateByAddingTimeIntervalSinceActivation:(double)activation
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v27 = 136315394;
    v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
    v29 = 2048;
    activationCopy = activation;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s timeInterval = %f", &v27, 0x16u);
  }

  speechEvent = self->_speechEvent;
  if (AFSpeechEventIsVoiceTrigger())
  {
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      voiceTriggerEndHostTime = self->_voiceTriggerEndHostTime;
      v27 = 136315394;
      v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
      v29 = 2048;
      activationCopy = *&voiceTriggerEndHostTime;
      _os_log_debug_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEBUG, "%s voiceTriggerEndHostTime = %llu", &v27, 0x16u);
    }

    v9 = 128;
  }

  else
  {
    v10 = *v5;
    if (self->_speechEvent != 1)
    {
      goto LABEL_13;
    }

    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      buttonDownHostTime = self->_buttonDownHostTime;
      v27 = 136315394;
      v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
      v29 = 2048;
      activationCopy = *&buttonDownHostTime;
      _os_log_debug_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEBUG, "%s buttonDownHostTime = %llu", &v27, 0x16u);
    }

    v9 = 120;
  }

  if (*(&self->super.isa + v9))
  {
LABEL_16:
    v11 = MEMORY[0x277CBEAA8];
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v13 = [v11 dateWithTimeIntervalSinceNow:activation - v12];
    goto LABEL_17;
  }

  v10 = *v5;
LABEL_13:
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v24 = self->_buttonDownHostTime;
    v27 = 136315394;
    v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
    v29 = 2048;
    activationCopy = *&v24;
    _os_log_debug_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEBUG, "%s activationHostTime = %llu", &v27, 0x16u);
  }

  if (self->_activationHostTime)
  {
    goto LABEL_16;
  }

  activationSystemUptime = self->_activationSystemUptime;
  if (activationSystemUptime <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      v27 = 136315394;
      v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
      v29 = 2048;
      activationCopy = activationSystemUptime;
      _os_log_debug_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEBUG, "%s activationSystemUptime = %f", &v27, 0x16u);
    }

    v21 = MEMORY[0x277CBEAA8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v13 = [v21 dateWithTimeIntervalSinceNow:activation - (v23 - self->_activationSystemUptime)];
  }

LABEL_17:
  v14 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    [v13 timeIntervalSinceNow];
    v27 = 136315650;
    v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
    v29 = 2112;
    activationCopy = *&v13;
    v31 = 2048;
    v32 = v16;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s date = %@ (%f)", &v27, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)audioSessionActivationTargetDate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(CSSiriAudioActivationInfo *)self _audioSessionActiveDelayUserPerceptionWithType:0];
  v4 = MEMORY[0x277CEF0E8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[CSSiriAudioActivationInfo audioSessionActivationTargetDate]";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEBUG, "%s audioSessionActiveDelay = %@ (User Perception)", &v12, 0x16u);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v3)
  {
LABEL_3:
    [v3 doubleValue];
    v6 = [(CSSiriAudioActivationInfo *)self dateByAddingTimeIntervalSinceActivation:?];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:
  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    [v6 timeIntervalSinceNow];
    v12 = 136315650;
    v13 = "[CSSiriAudioActivationInfo audioSessionActivationTargetDate]";
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s targetDate = %@ (%f)", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int64_t)overrideStartingAlertBeepSoundID
{
  startingAlertBehavior = [(AFSpeechRecordingAlertPolicy *)self->_speechRecordingAlertPolicy startingAlertBehavior];
  beepSoundID = [startingAlertBehavior beepSoundID];

  return beepSoundID;
}

- (int64_t)saeToneIDWithCarPlayConnected:(BOOL)connected
{
  if (connected)
  {
    return 13;
  }

  else
  {
    return MEMORY[0x282141A08](@"siriActivationSAE", a2);
  }
}

- (id)startingAlertBeepURL
{
  v20 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D01658] = [MEMORY[0x277D01658] sharedInstance];
  carPlayConnected = [mEMORY[0x277D01658] carPlayConnected];

  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[CSSiriAudioActivationInfo startingAlertBeepURL]";
      _os_log_debug_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEBUG, "%s For dictation, not overriding recording sound.", &v18, 0xCu);
    }

    goto LABEL_4;
  }

  if ((carPlayConnected & 1) != 0 || [MEMORY[0x277D018F8] isBluetoothVehicleOutput])
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[CSSiriAudioActivationInfo startingAlertBeepURL]";
      _os_log_debug_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEBUG, "%s For CarPlay, use a more shortened start recording sound.", &v18, 0xCu);
    }

    v8 = MEMORY[0x277CBEBC0];
    v9 = @"/System/Library/Audio/UISounds/jbl_begin_short_carplay.caf";
LABEL_10:
    v6 = [v8 URLWithString:v9];
    goto LABEL_11;
  }

  speechEvent = self->_speechEvent;
  if (speechEvent == 5 || speechEvent == 3)
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[CSSiriAudioActivationInfo startingAlertBeepURL]";
      _os_log_debug_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEBUG, "%s For BT button press and handover cases, use shortened start recording sound.", &v18, 0xCu);
    }

    v8 = MEMORY[0x277CBEBC0];
    v9 = @"/System/Library/Audio/UISounds/jbl_begin_short.caf";
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_11:
  if ([MEMORY[0x277CEF4D0] saeAvailable] && (self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    overrideStartingAlertBeepSoundID = [(CSSiriAudioActivationInfo *)self saeToneIDWithCarPlayConnected:carPlayConnected];
  }

  else
  {
    overrideStartingAlertBeepSoundID = [(CSSiriAudioActivationInfo *)self overrideStartingAlertBeepSoundID];
  }

  v11 = overrideStartingAlertBeepSoundID;
  if (AFSoundIDGetIsValidAndSpecified())
  {
    mEMORY[0x277CEF1C0] = [MEMORY[0x277CEF1C0] sharedManager];
    v13 = [mEMORY[0x277CEF1C0] URLForSoundID:v11];

    v6 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int64_t)twoShotFeedbackAlertOverrideForRecordRoute:(id)route playbackRoute:(id)playbackRoute deviceSupportsVibrator:(BOOL)vibrator deviceSupportsEC:(BOOL)c
{
  vibratorCopy = vibrator;
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v10 = playbackRouteCopy;
  if (!vibratorCopy)
  {
    goto LABEL_8;
  }

  if (![playbackRouteCopy isEqualToString:*MEMORY[0x277CB81A0]])
  {
    if (AFRecordRouteIsHearst())
    {
      v11 = 3;
      goto LABEL_9;
    }

LABEL_8:
    v11 = 2;
    goto LABEL_9;
  }

  if (CSIsWatch())
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

LABEL_9:

  return v11;
}

- (int64_t)twoShotPromptTypeForRecordRoute:(id)route playbackRoute:(id)playbackRoute
{
  v22 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[CSSiriAudioActivationInfo twoShotPromptTypeForRecordRoute:playbackRoute:]";
    v18 = 2112;
    v19 = routeCopy;
    v20 = 2112;
    v21 = playbackRouteCopy;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s recordRoute = %@, playbackRoute = %@", &v16, 0x20u);
  }

  if (!AFIsHorseman())
  {
    speechEvent = self->_speechEvent;
    if (speechEvent <= 15)
    {
      if (speechEvent == 8)
      {
        if (self->_isOnPhoneCall && [playbackRouteCopy isEqualToString:*MEMORY[0x277CB8168]])
        {
          goto LABEL_27;
        }
      }

      else if (speechEvent == 15)
      {
        if (CSIsTV())
        {
LABEL_30:
          v10 = 1;
          goto LABEL_31;
        }

LABEL_27:
        if (AFDeviceSupportsSystemAssistantExperience())
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        goto LABEL_31;
      }
    }

    else
    {
      switch(speechEvent)
      {
        case 16:
          goto LABEL_27;
        case 17:
          v10 = 0;
          goto LABEL_31;
        case 31:
          if (AFIsMac() && ([MEMORY[0x277D018F8] hasRemoteCoreSpeech] & 1) != 0)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
      }
    }

    if (!MEMORY[0x223DD13E0]() || ![routeCopy isEqualToString:*MEMORY[0x277CB8190]] || !objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x277CB81A0]))
    {
      if (![playbackRouteCopy isEqualToString:*MEMORY[0x277CB81D0]])
      {
        goto LABEL_30;
      }

      invocationFeedbackExperiment = [(AFExperimentContext *)self->_experimentContext invocationFeedbackExperiment];
      isFeatureGroupOneEnabled = [invocationFeedbackExperiment isFeatureGroupOneEnabled];

      if (!isFeatureGroupOneEnabled)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  if ([mEMORY[0x277CEF368] startAlertEnabled])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

LABEL_31:
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)shouldPlayAlertIfNotPrelistening
{
  speechEvent = self->_speechEvent;
  _isVoiceOverTouchEnabledInAccessibility = [(CSSiriAudioActivationInfo *)self _isVoiceOverTouchEnabledInAccessibility];

  return [CSSiriAudioActivationInfo _shouldPlayAlertIfNotPrelisteningForSpeechEvent:speechEvent isVoiceOverTouchEnabled:_isVoiceOverTouchEnabledInAccessibility];
}

- (BOOL)shouldExplicitlyPlayAlertOnStart
{
  if ([(CSSiriAudioActivationInfo *)self _eventIsVoiceTrigger]|| !self->_useBorealisBuffer)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    speechEvent = self->_speechEvent;
    v4 = speechEvent > 0x20;
    v5 = 0xFFDDFFFFuLL >> speechEvent;
    if (v4)
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5 & 1;
}

- (BOOL)canEnterTwoShot
{
  _eventIsVoiceTrigger = [(CSSiriAudioActivationInfo *)self _eventIsVoiceTrigger];
  if (_eventIsVoiceTrigger)
  {
    activationMode = self->_activationMode;
    LOBYTE(_eventIsVoiceTrigger) = activationMode == 1987012963 || activationMode == 1751414371;
  }

  return _eventIsVoiceTrigger;
}

- (BOOL)_canUseZLL
{
  if ([(CSSiriAudioActivationInfo *)self _isVoiceOverTouchEnabledInAccessibility]|| self->_speechRecordingMode != 1)
  {
    LOBYTE(isContinuousConversationSupported) = 0;
  }

  else
  {
    activationMode = self->_activationMode;
    v5 = activationMode == 1752132965 || activationMode == 1969840752 || activationMode == 1986357346;
    if (v5 || (v7 = AFIsHorseman(), v7 && self->_activationMode == 1635087471))
    {
      LOBYTE(isContinuousConversationSupported) = 1;
    }

    else
    {
      isContinuousConversationSupported = [MEMORY[0x277D018F8] isContinuousConversationSupported];
      if (isContinuousConversationSupported)
      {
        LOBYTE(isContinuousConversationSupported) = self->_activationMode == 1635087471;
      }
    }
  }

  return isContinuousConversationSupported;
}

- (BOOL)requiresBorealisConsumerCheck
{
  if (self->_useBorealisBuffer)
  {
    return ![(CSSiriAudioActivationInfo *)self _eventIsVoiceTrigger:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)canPrewarm
{
  if (self->_activationMode == 1752132965)
  {
    return AFIsNano() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)endUpdateToPostVoiceWithContext:(unint64_t)context success:(BOOL)success
{
  if (!success)
  {
    self->_csAudioRecordType = context;
    self->_activationMode = self->_storedActivationMode;
  }
}

- (unint64_t)beginUpdateToPostVoice
{
  csAudioRecordType = self->_csAudioRecordType;
  activationMode = self->_activationMode;
  self->_activationMode = 1886352244;
  self->_storedActivationMode = activationMode;
  self->_csAudioRecordType = 14;
  return csAudioRecordType;
}

- (id)startRecordingSettingsWithRecordRoute:(id)route recordingInfo:(id)info playbackRoute:(id)playbackRoute
{
  v99 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  infoCopy = info;
  playbackRouteCopy = playbackRoute;
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v92 = "[CSSiriAudioActivationInfo startRecordingSettingsWithRecordRoute:recordingInfo:playbackRoute:]";
    v93 = 2112;
    *v94 = routeCopy;
    *&v94[8] = 2112;
    *v95 = playbackRouteCopy;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s recordRoute = %@, playbackRoute = %@", buf, 0x20u);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [objc_opt_class() _doesRecordRouteSupportZLL:routeCopy];
  v15 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    _canUseZLL = [(CSSiriAudioActivationInfo *)self _canUseZLL];
    activationMode = self->_activationMode;
    *buf = 136315906;
    v92 = "[CSSiriAudioActivationInfo startRecordingSettingsWithRecordRoute:recordingInfo:playbackRoute:]";
    v93 = 1024;
    *v94 = v14;
    *&v94[4] = 1024;
    *&v94[6] = _canUseZLL;
    *v95 = 2048;
    *&v95[2] = activationMode;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s doesRecordRouteSupportZLL = %u, [self _canUseZLL] = %u _activationMode:%ld", buf, 0x22u);
  }

  if ([MEMORY[0x277CEF2A8] isDictationVoiceTriggerEnabled])
  {
    v19 = self->_dictationVoiceTriggerAbsStartSampleId != 0;
  }

  else
  {
    v19 = 0;
  }

  v88 = v13;
  if (([(CSSiriAudioActivationInfo *)self _canUseZLL]& v14) == 1)
  {
    activationHostTime = self->_activationHostTime;
    if (activationHostTime)
    {
      if (!v19)
      {
        goto LABEL_17;
      }
    }

    else
    {
      activationSystemUptime = self->_activationSystemUptime;
      if (activationSystemUptime > 0.0 && !v19)
      {
LABEL_16:
        activationHostTime = [MEMORY[0x277CB8428] hostTimeForSeconds:activationSystemUptime];
        goto LABEL_17;
      }
    }
  }

  if (self->_speechEvent != 17)
  {
    v82 = 0;
    goto LABEL_21;
  }

  activationHostTime = self->_activationHostTime;
  if (!activationHostTime)
  {
    activationSystemUptime = self->_activationSystemUptime;
    goto LABEL_16;
  }

LABEL_17:
  v22 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    v23 = MEMORY[0x277CCAC38];
    v24 = v22;
    processInfo = [v23 processInfo];
    [processInfo systemUptime];
    v27 = v26;
    [MEMORY[0x277CB8428] secondsForHostTime:activationHostTime];
    *buf = 136315394;
    v92 = "[CSSiriAudioActivationInfo startRecordingSettingsWithRecordRoute:recordingInfo:playbackRoute:]";
    v93 = 2048;
    *v94 = v27 - v28;
    _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_INFO, "%s Requesting historical buffer of duration %lf seconds", buf, 0x16u);
  }

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:activationHostTime];
  [v13 setObject:v29 forKey:*MEMORY[0x277CB8350]];

  v82 = 1;
LABEL_21:
  v89 = playbackRouteCopy;
  v90 = infoCopy;
  mEMORY[0x277CEF250] = [MEMORY[0x277CEF250] sharedObserver];
  state = [mEMORY[0x277CEF250] state];

  overrideStartingAlertBeepSoundID = [(CSSiriAudioActivationInfo *)self overrideStartingAlertBeepSoundID];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  useDeviceSpeakerForTTS = [mEMORY[0x277CEF368] useDeviceSpeakerForTTS];

  v33 = MEMORY[0x223DD13E0]();
  _isVoiceOverTouchEnabledInAccessibility = [(CSSiriAudioActivationInfo *)self _isVoiceOverTouchEnabledInAccessibility];
  v35 = _isVoiceOverTouchEnabledInAccessibility;
  v36 = routeCopy;
  if (_isVoiceOverTouchEnabledInAccessibility)
  {
    shouldPlaySiriSounds = [MEMORY[0x277D01910] shouldPlaySiriSounds];
  }

  else
  {
    shouldPlaySiriSounds = 0;
  }

  isDeviceInCarDNDMode = [(AFClientConfiguration *)self->_currentClientConfiguration isDeviceInCarDNDMode];
  _isVibrationDisabledInAccessibility = [(CSSiriAudioActivationInfo *)self _isVibrationDisabledInAccessibility];
  v40 = !_isVibrationDisabledInAccessibility;
  v41 = AFSupportsVibration();
  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2 && !_isVibrationDisabledInAccessibility)
  {
    v40 &= [(CSSiriAudioActivationInfo *)self _isSystemHapticEnabled];
  }

  v42 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v43 = self->_activationMode;
    *buf = 136316162;
    v92 = "[CSSiriAudioActivationInfo startRecordingSettingsWithRecordRoute:recordingInfo:playbackRoute:]";
    v93 = 2048;
    *v94 = v43;
    *&v94[8] = 2048;
    *v95 = useDeviceSpeakerForTTS;
    *&v95[8] = 1024;
    v96 = v82;
    v97 = 1024;
    v98 = isDeviceInCarDNDMode;
    _os_log_impl(&dword_222E4D000, v42, OS_LOG_TYPE_INFO, "%s activationMode = %ld, usesDeviceSpeakerForTTS = %lu, attemptsToUsePastDataBufferFrames = %d, isDeviceInCarDNDMode = %d", buf, 0x2Cu);
  }

  LOBYTE(v79) = shouldPlaySiriSounds;
  HIBYTE(v78) = self->_suppressStartAlert;
  BYTE6(v78) = v41;
  BYTE5(v78) = v40;
  BYTE4(v78) = v35;
  BYTE3(v78) = v33;
  BYTE2(v78) = self->_hasPlayedStartAlert;
  LOWORD(v78) = *&self->_usePrelistening;
  v44 = v36;
  v45 = v36;
  v46 = v89;
  v47 = [CSSiriAudioActivationInfo _alertBehaviorForRecordRoute:"_alertBehaviorForRecordRoute:playbackRoute:speechEvent:speechRecordingMode:ringerState:startingAlertBeepOverideID:presentationMode:usePrelistening:isOnPhoneCall:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:suppressStartAlert:activationHostTime:isVoiceOverSiriSoundsEnabled:" playbackRoute:v45 speechEvent:v89 speechRecordingMode:self->_speechEvent ringerState:self->_speechRecordingMode startingAlertBeepOverideID:state presentationMode:overrideStartingAlertBeepSoundID usePrelistening:self->_presentationMode isOnPhoneCall:v78 hasPlayedStartAlert:self->_activationHostTime supportsEchoCancellation:v79 isVoiceOverTouchEnabled:? isVibrationEnabled:? isVibrationSupported:? suppressStartAlert:? activationHostTime:? isVoiceOverSiriSoundsEnabled:?];
  v48 = v88;
  if ([v47 count])
  {
    [v88 setObject:v47 forKey:*MEMORY[0x277CB8318]];
  }

  v49 = v90;
  if ([(CSSiriAudioActivationInfo *)self _shouldSkipStartRecordingAlertForRecordingInfo:v90])
  {
    v50 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v88 setObject:v50 forKey:@"CSSpeechRecordSettingsKey_shouldSkipStartRecordingAlert"];
  }

  if ([CSSiriAudioActivationInfo _shouldAllowRecordWhileBeepWithRecordRoute:v44 playbackRoute:v89 supportsEchoCancellation:v33 speechRecordingMode:self->_speechRecordingMode recordingInfo:v90])
  {
    v51 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v88 setObject:v51 forKey:@"CSSpeechRecordSettingsKey_allowRecordWhileBeep"];
  }

  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (_AFPreferencesDictationLanguageDetectorEnabled())
    {
      languageDetectionUserContext = self->_languageDetectionUserContext;
      if (languageDetectionUserContext)
      {
        v53 = MEMORY[0x277CBEB38];
        v54 = languageDetectionUserContext;
        dictionary = [v53 dictionary];
        languageDetectorUserContext = [(AFLanguageDetectionUserContext *)v54 languageDetectorUserContext];
        finalFilteredDictationLanguages = [(AFLanguageDetectionUserContext *)v54 finalFilteredDictationLanguages];

        if (finalFilteredDictationLanguages)
        {
          v58 = [MEMORY[0x277CBEB98] setWithArray:finalFilteredDictationLanguages];
          [dictionary setObject:v58 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguages"];
        }

        v59 = MEMORY[0x277CEF570];
        v60 = [languageDetectorUserContext objectForKey:*(MEMORY[0x277CEF570] + 8)];
        if (v60)
        {
          [dictionary setObject:v60 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorCurrentKeyboard"];
        }

        v61 = [languageDetectorUserContext objectForKey:*v59];
        if (v61)
        {
          [dictionary setObject:v61 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorWasLanguageToggled"];
        }

        v62 = [languageDetectorUserContext objectForKey:v59[4]];
        if (v62)
        {
          [dictionary setObject:v62 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorMultilingualKeyboardLanguages"];
        }

        v80 = v62;
        v81 = v61;
        v63 = [languageDetectorUserContext objectForKey:v59[7]];
        if (v63)
        {
          [dictionary setObject:v63 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorKeyboardConvoLanguagePriors"];
        }

        v83 = v60;
        v64 = [languageDetectorUserContext objectForKey:v59[8]];
        if (v64)
        {
          [dictionary setObject:v64 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorKeyboardGlobalLanguagePriors"];
        }

        v85 = finalFilteredDictationLanguages;
        v65 = [languageDetectorUserContext objectForKey:v59[2]];
        if (v65)
        {
          [dictionary setObject:v65 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorPreviousMessageLanguage"];
        }

        v66 = [languageDetectorUserContext objectForKey:v59[3]];
        if (v66)
        {
          [dictionary setObject:v66 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorGlobalLastKeyboardUsed"];
        }

        v87 = v44;
        v67 = [languageDetectorUserContext objectForKey:v59[5]];
        if (v67)
        {
          [dictionary setObject:v67 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorConversationalMessages"];
        }

        v68 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
        {
          *buf = 136315395;
          v92 = "_CSSiriLanguageDetectorSettings";
          v93 = 2113;
          *v94 = dictionary;
          _os_log_impl(&dword_222E4D000, v68, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
        }

        if (dictionary)
        {
          v44 = v87;
          v48 = v88;
          v46 = v89;
          v49 = v90;
          if ([dictionary count])
          {
            [v88 addEntriesFromDictionary:dictionary];
          }
        }

        else
        {
          v44 = v87;
          v48 = v88;
          v46 = v89;
          v49 = v90;
        }
      }

      else
      {
        dictionary = 0;
      }
    }

    applicationDisplayName = self->_applicationDisplayName;
    if (applicationDisplayName)
    {
      [v48 setObject:applicationDisplayName forKey:@"CSSpeechRecordSettingsKey_DictationRequestAppName"];
    }

    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    if (applicationBundleIdentifier)
    {
      [v48 setObject:applicationBundleIdentifier forKey:@"CSSpeechRecordSettingsKey_DictationRequestAppBundleID"];
    }

    if ([MEMORY[0x277CEF2A8] isDictationVoiceTriggerEnabled] && self->_dictationVoiceTriggerAbsStartSampleId)
    {
      v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
      [v48 setObject:v71 forKey:@"CSSpeechRecordSettingsKey_DictationStartSampleId"];
    }
  }

  speechEndpointerOperationMode = self->_speechEndpointerOperationMode;
  if (speechEndpointerOperationMode == 1 || !speechEndpointerOperationMode && (self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2 && self->_dictationInputOrigin != 1)
  {
    [v48 setObject:MEMORY[0x277CBEC38] forKey:@"CSSpeechRecordSettingsKey_disableEndpointer"];
  }

  v73 = [(CSSiriAudioActivationInfo *)self _audioSessionActiveDelayCoreSpeechWithType:2];
  if (v73)
  {
    [v48 setObject:v73 forKey:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
  }

  [v48 setObject:&unk_2836673D0 forKey:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
  if ([v48 count])
  {
    v74 = v48;
  }

  else
  {
    v74 = 0;
  }

  v75 = v74;

  v76 = *MEMORY[0x277D85DE8];
  return v74;
}

- (int64_t)_csAudioRecordTypeForSpeechRequestOptions:(id)options useBorealisBuffer:(BOOL)buffer currentClientConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  activationEvent = [optionsCopy activationEvent];
  if (buffer)
  {
    v8 = 6;
  }

  else
  {
    v9 = activationEvent;
    if (activationEvent == 21 && ([optionsCopy announcementPlatform] == 3 || objc_msgSend(optionsCopy, "announcementPlatform") == 4))
    {
      v10 = *MEMORY[0x277CEF0E8];
      v8 = 1;
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[CSSiriAudioActivationInfo _csAudioRecordTypeForSpeechRequestOptions:useBorealisBuffer:currentClientConfiguration:]";
        v8 = 1;
        _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s announcement platform is hearing aids or built in speaker, using CSAudioRecordTypeHomePress", &v13, 0xCu);
      }
    }

    else
    {
      v8 = [CSRecordTypeSpeechEventConverter getRecordTypeForSpeechEvent:v9];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_isRequestFromSpokenNotification:(int64_t)notification
{
  if (_os_feature_enabled_impl())
  {
    LOBYTE(v5) = notification == 21 || notification == 32 || self->_isOnPhoneCall;
  }

  else
  {
    v5 = 0x100220000uLL >> notification;
    if (notification > 0x20)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (id)recordContextForSpeechEvent:(int64_t)event
{
  v5 = [CSRecordTypeSpeechEventConverter getRecordTypeForSpeechEvent:?];
  v6 = [objc_alloc(MEMORY[0x277D01648]) initWithRecordType:v5 deviceId:self->_deviceIdentifier];
  [v6 setIsRequestDuringActiveCall:self->_isOnPhoneCall];
  [v6 setIsRequestFromSpokenNotification:self->_isSpokenNotification];
  [v6 setIsRequestFromTriggerless:self->_isTriggerlessFollowup];
  [v6 setSpeechEvent:event];

  return v6;
}

- (id)recordSettingsWithOptions:(unint64_t)options appendingSettings:(id)settings
{
  optionsCopy = options;
  v30[6] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  if ((AFIsNano() & 1) == 0 && AFIsInternalInstall() && _AFPreferencesForceUncompressedAudioRecording())
  {
    v7 = *MEMORY[0x277CB82E0];
    v29[0] = *MEMORY[0x277CB8280];
    v29[1] = v7;
    v30[0] = &unk_283667370;
    v30[1] = &unk_283667888;
    v8 = *MEMORY[0x277CB82A0];
    v29[2] = *MEMORY[0x277CB8288];
    v29[3] = v8;
    v30[2] = &unk_283667388;
    v30[3] = MEMORY[0x277CBEC28];
    v9 = *MEMORY[0x277CB82C0];
    v29[4] = *MEMORY[0x277CB82B0];
    v29[5] = v9;
    v10 = *MEMORY[0x277CB82D0];
    v30[4] = &unk_2836673A0;
    v30[5] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
    v12 = [(CSSiriAudioActivationInfo *)self _appendDictationApplicationInfoSettings:v11];
    goto LABEL_27;
  }

  v13 = 1936745848;
  if (self->_activationMode != 1651797093)
  {
    v13 = 1869641075;
    if ((AFIsNano() & 1) == 0)
    {
      if (AFIsInternalInstall())
      {
        if (_AFPreferencesForceSpeexAudioRecording())
        {
          v13 = 1936745848;
        }

        else
        {
          v13 = 1869641075;
        }
      }
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (optionsCopy)
  {
    v15 = [(CSSiriAudioActivationInfo *)self _audioSessionActiveDelayCoreSpeechWithType:1];
    if (v15)
    {
      [v14 setObject:v15 forKey:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
    }
  }

  if ((optionsCopy & 4) != 0)
  {
    v16 = 1;
    goto LABEL_21;
  }

  if ((optionsCopy & 8) != 0)
  {
    v16 = 2;
    goto LABEL_21;
  }

  if ((optionsCopy & 0x10) != 0)
  {
    v16 = 3;
LABEL_21:
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    [v14 setObject:v17 forKey:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
  }

  v27[0] = *MEMORY[0x277CB8280];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  v19 = *MEMORY[0x277CB82E0];
  v28[0] = v18;
  v28[1] = &unk_283667888;
  v20 = *MEMORY[0x277CB8258];
  v27[1] = v19;
  v27[2] = v20;
  v21 = *MEMORY[0x277CB82B0];
  v28[2] = &unk_2836673B8;
  v28[3] = &unk_2836673A0;
  v22 = *MEMORY[0x277CB82C0];
  v27[3] = v21;
  v27[4] = v22;
  v28[4] = *MEMORY[0x277CB82D0];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];

  if (settingsCopy)
  {
    [v14 addEntriesFromDictionary:settingsCopy];
  }

  if ([v14 count])
  {
    v23 = [v11 mutableCopy];
    [v23 addEntriesFromDictionary:v14];
    v24 = [v23 copy];

    v11 = v24;
  }

  v12 = [(CSSiriAudioActivationInfo *)self _appendDictationApplicationInfoSettings:v11];

LABEL_27:
  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_appendDictationApplicationInfoSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [settingsCopy mutableCopy];
    v7 = v6;
    applicationDisplayName = self->_applicationDisplayName;
    if (applicationDisplayName)
    {
      [v6 setObject:applicationDisplayName forKey:@"CSSpeechRecordSettingsKey_DictationRequestAppName"];
    }

    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    if (applicationBundleIdentifier)
    {
      [v7 setObject:applicationBundleIdentifier forKey:@"CSSpeechRecordSettingsKey_DictationRequestAppBundleID"];
    }

    v10 = [v7 copy];

    v5 = v10;
  }

  return v5;
}

- (void)setClientConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[CSSiriAudioActivationInfo setClientConfiguration:]";
    v11 = 2112;
    v12 = configurationCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s clientConfiguration = %@", &v9, 0x16u);
  }

  v6 = [configurationCopy copy];
  currentClientConfiguration = self->_currentClientConfiguration;
  self->_currentClientConfiguration = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setSpeechRequestOptions:(id)options currentActivationInfo:(id)info
{
  v55 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  infoCopy = info;
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v48 = "[CSSiriAudioActivationInfo setSpeechRequestOptions:currentActivationInfo:]";
    v49 = 2048;
    v50 = *&self;
    v51 = 2112;
    v52 = optionsCopy;
    v53 = 2112;
    v54 = infoCopy;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s %p speechRequestOptions = %@, currentActivationInfo = %@", buf, 0x2Au);
  }

  activationEvent = [optionsCopy activationEvent];
  [optionsCopy activationEventTime];
  v12 = v11;
  self->_suppressStartAlert = [optionsCopy suppressStartAlert];
  self->_speechEndpointerOperationMode = [optionsCopy endpointerOperationMode];
  self->_speechRecordingAlertPolicy = [optionsCopy recordingAlertPolicy];
  if ([optionsCopy useAutomaticEndpointing] && !self->_speechEndpointerOperationMode)
  {
    self->_speechEndpointerOperationMode = 3;
  }

  useBorealisBuffer = [optionsCopy useBorealisBuffer];
  v14 = useBorealisBuffer;
  if (infoCopy && !activationEvent && self->_useBorealisBuffer == useBorealisBuffer)
  {
    self->_activationMode = infoCopy[1];
    self->_csAudioRecordType = infoCopy[3];
LABEL_12:
    self->_speechRecordingMode = [infoCopy speechRecordingMode];
    goto LABEL_13;
  }

  v15 = 1987012963;
  v16 = optionsCopy;
  v17 = v16;
  if (!v14)
  {
    v15 = 1752132965;
    switch([v16 activationEvent])
    {
      case 2:
        v15 = 2003329648;
        break;
      case 3:
        v15 = 1651794544;
        break;
      case 4:
        v15 = 1969840752;
        break;
      case 5:
        v15 = 1635087471;
        break;
      case 6:
        v15 = 845504882;
        break;
      case 7:
        v15 = 1635213689;
        break;
      case 8:
      case 11:
      case 30:
        v15 = 1987012963;
        break;
      case 9:
      case 32:
        v15 = 1986357346;
        break;
      case 10:
      case 22:
      case 23:
      case 24:
        v15 = 1651797093;
        break;
      case 13:
        v15 = 1918986611;
        break;
      case 14:
      case 27:
        v15 = 1651795060;
        break;
      case 15:
      case 34:
        v15 = 1751414371;
        break;
      case 16:
      case 35:
        v15 = 1668314723;
        break;
      case 17:
      case 21:
        if (([v17 announcementPlatform] - 3) >= 2)
        {
          v15 = 1751414371;
        }

        break;
      case 31:
      case 36:
        v15 = 1684108899;
        break;
      default:
        break;
    }
  }

  self->_activationMode = v15;
  self->_csAudioRecordType = [(CSSiriAudioActivationInfo *)self _csAudioRecordTypeForSpeechRequestOptions:v17 useBorealisBuffer:v14 currentClientConfiguration:self->_currentClientConfiguration];
  if (infoCopy)
  {
    goto LABEL_12;
  }

LABEL_13:
  self->_speechEvent = activationEvent;
  self->_useBorealisBuffer = v14;
  self->_activationSystemUptime = v12;
  self->_activationHostTime = [optionsCopy activationEventMachAbsoluteTime];
  self->_buttonDownHostTime = [optionsCopy homeButtonDownEventMachAbsoluteTime];
  voiceTriggerEventInfo = [optionsCopy voiceTriggerEventInfo];
  v19 = [voiceTriggerEventInfo objectForKey:@"triggerEndMachTime"];
  self->_voiceTriggerEndHostTime = [v19 unsignedLongLongValue];

  activationDeviceIdentifier = [optionsCopy activationDeviceIdentifier];
  v21 = [activationDeviceIdentifier copy];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v21;

  self->_usePrelistening = [optionsCopy usePrelisteningMode];
  self->_isOnPhoneCall = [optionsCopy isOnPhoneCall];
  self->_hasPlayedStartAlert = [optionsCopy hasPlayedStartAlert];
  languageDetectionUserContext = [optionsCopy languageDetectionUserContext];
  v24 = [languageDetectionUserContext copy];
  languageDetectionUserContext = self->_languageDetectionUserContext;
  self->_languageDetectionUserContext = v24;

  self->_dictationInputOrigin = [optionsCopy dictationInputOrigin];
  turnIdentifier = [optionsCopy turnIdentifier];
  turnIdentifier = self->_turnIdentifier;
  self->_turnIdentifier = turnIdentifier;

  applicationDisplayName = [optionsCopy applicationDisplayName];
  applicationDisplayName = self->_applicationDisplayName;
  self->_applicationDisplayName = applicationDisplayName;

  applicationBundleIdentifier = [optionsCopy applicationBundleIdentifier];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = applicationBundleIdentifier;

  self->_presentationMode = [optionsCopy presentationMode];
  v32 = 0.0;
  if ([optionsCopy isMediaPlaying])
  {
    [optionsCopy mediaPlaybackVolume];
    v32 = v33;
  }

  self->_activeMediaPlaybackVolume = v32;
  v34 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v48 = "[CSSiriAudioActivationInfo setSpeechRequestOptions:currentActivationInfo:]";
    v49 = 2048;
    v50 = v32;
    _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_INFO, "%s activeMediaPlaybackVolume = %f", buf, 0x16u);
  }

  self->_dictationVoiceTriggerAbsStartSampleId = [optionsCopy dictationVoiceTriggerAbsStartSampleId];
  voiceTriggerEventInfo2 = [optionsCopy voiceTriggerEventInfo];
  v36 = *MEMORY[0x277D01CF0];
  v37 = [voiceTriggerEventInfo2 objectForKey:*MEMORY[0x277D01CF0]];

  if (v37)
  {
    v45 = v36;
    v46 = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    activationMetadata = self->_activationMetadata;
    self->_activationMetadata = v38;
  }

  csAudioRecordType = self->_csAudioRecordType;
  if (csAudioRecordType <= 0x1B && ((1 << csAudioRecordType) & 0x8D00000) != 0)
  {
    continuousConversationInfo = [optionsCopy continuousConversationInfo];
    v42 = [continuousConversationInfo copy];
    v43 = self->_activationMetadata;
    self->_activationMetadata = v42;
  }

  self->_isSpokenNotification = [(CSSiriAudioActivationInfo *)self _isRequestFromSpokenNotification:activationEvent];
  self->_isTriggerlessFollowup = activationEvent == 17;

  v44 = *MEMORY[0x277D85DE8];
}

- (CSSiriAudioActivationInfo)initWithSpeechRecordingMode:(int64_t)mode clientConfiguration:(id)configuration experimentContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = CSSiriAudioActivationInfo;
  v10 = [(CSSiriAudioActivationInfo *)&v21 init];
  if (v10)
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v23 = "[CSSiriAudioActivationInfo initWithSpeechRecordingMode:clientConfiguration:experimentContext:]";
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      modeCopy = mode;
      v28 = 2112;
      v29 = configurationCopy;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s %p speechRecordingMode = %zd, clientConfiguration = %@", buf, 0x2Au);
    }

    v10->_speechRecordingMode = mode;
    v12 = [configurationCopy copy];
    currentClientConfiguration = v10->_currentClientConfiguration;
    v10->_currentClientConfiguration = v12;

    v14 = [contextCopy copy];
    experimentContext = v10->_experimentContext;
    v10->_experimentContext = v14;

    v10->_activationMode = 1752132965;
    v10->_csAudioRecordType = 0;
    v16 = AFIsHorseman();
    v10->_useBorealisBuffer = v16;
    if (v16)
    {
      v10->_activationMode = 1987012963;
      v10->_csAudioRecordType = 6;
    }

    v17 = +[CSAttSiriMagusSupportedPolicy sharedInstance];
    magusSupportedPolicy = v10->_magusSupportedPolicy;
    v10->_magusSupportedPolicy = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)_shouldAllowRecordWhileBeepWithRecordRoute:(id)route playbackRoute:(id)playbackRoute supportsEchoCancellation:(BOOL)cancellation speechRecordingMode:(int64_t)mode recordingInfo:(id)info
{
  cancellationCopy = cancellation;
  v34 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  infoCopy = info;
  v14 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    route = [infoCopy route];
    v22 = 136316418;
    v23 = "+[CSSiriAudioActivationInfo _shouldAllowRecordWhileBeepWithRecordRoute:playbackRoute:supportsEchoCancellation:speechRecordingMode:recordingInfo:]";
    v24 = 1024;
    v25 = cancellationCopy;
    v26 = 2048;
    modeCopy = mode;
    v28 = 2114;
    v29 = routeCopy;
    v30 = 2114;
    v31 = playbackRouteCopy;
    v32 = 2114;
    v33 = route;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s supportsEchoCancellation:%u speechRecordingMode:%ld recordRoute:%{public}@ playbackRoute:%{public}@, route in recordingInfo: %{public}@", &v22, 0x3Au);
  }

  if (mode == 1 && cancellationCopy && [routeCopy isEqualToString:*MEMORY[0x277CB8190]] && (objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x277CB81A0]) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (CSIsASMacWithAOP())
  {
    route2 = [infoCopy route];
    v18 = route2;
    if (mode == 1 && [route2 isEqualToString:@"BuiltInMicrophoneDevice"] && (objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x277CB81A0]) & 1) != 0)
    {

      goto LABEL_15;
    }
  }

  if (mode != 1 || ([routeCopy isEqualToString:*MEMORY[0x277CB8348]] & 1) == 0)
  {
    v19 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v19 = 1;
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)_requestIsUsingHFPWithRecordRoute:(id)route playbackRoute:(id)playbackRoute
{
  playbackRouteCopy = playbackRoute;
  v6 = *MEMORY[0x277CB8168];
  if ([route isEqualToString:*MEMORY[0x277CB8168]])
  {
    v7 = 1;
  }

  else
  {
    v7 = [playbackRouteCopy isEqualToString:v6];
  }

  return v7;
}

+ (id)_alertDictionaryForRecordRoute:(id)route playbackRoute:(id)playbackRoute speechEvent:(int64_t)event ringerState:(int64_t)state startingAlertBeepOverideID:(int64_t)d presentationMode:(int64_t)mode hasPlayedStartAlert:(BOOL)alert supportsEchoCancellation:(BOOL)self0 isVoiceOverTouchEnabled:(BOOL)self1 isVibrationEnabled:(BOOL)self2 isVibrationSupported:(BOOL)self3 activationHostTime:(unint64_t)self4 isVoiceOverSiriSoundsEnabled:(BOOL)self5
{
  v55 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v50 = routeCopy;
  v49 = playbackRouteCopy;
  if ([routeCopy isEqualToString:*MEMORY[0x277CB8348]] && (objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x277CB8168]) & 1) == 0)
  {
    v21 = [playbackRouteCopy isEqualToString:*MEMORY[0x277CB8158]] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v48 = vibrationEnabled && supported;
  if (CSIsTV())
  {
    if ((enabled & ~alert) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_9;
  }

  v33 = CSIsHorseman();
  v22 = v33 << 63 >> 63;
  if ((v33 & 1) != 0 || alert)
  {
    goto LABEL_9;
  }

  if ((AFSpeechEventIsVoiceTrigger() & 1) != 0 || event == 17 || event == 13)
  {
    v34 = [self _requestIsUsingHFPWithRecordRoute:v50 playbackRoute:v49];
    v35 = [self _doesRecordRouteSupportZLL:v50];
    if ((v34 & 1) == 0)
    {
      v22 = (v35 & v21) - 1;
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  if (AFSoundIDGetIsValidAndSpecified())
  {
LABEL_36:
    v22 = 2;
    goto LABEL_9;
  }

  if (event != 5)
  {
    if (v48 & AFRecordRouteIsHearst())
    {
      v22 = 3;
      goto LABEL_9;
    }

    if (AFPlaybackRouteIsHandsFree())
    {
      v41 = [self _requestIsUsingHFPWithRecordRoute:v50 playbackRoute:v49];
      if (event != 1 || !v41)
      {
        if (event == 1 && vibrationEnabled && supported)
        {
          v22 = 1;
          goto LABEL_9;
        }

        if (event == 1 && supported && !vibrationEnabled || ([self _isJarvisVoiceTriggerSpeechEvent:event] & 1) != 0)
        {
          goto LABEL_33;
        }

        if (((event != 9) & v21) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = 2;
        }

        goto LABEL_9;
      }
    }

    else if (state != 2 && cancellation)
    {
      if (!vibrationEnabled || !supported)
      {
        goto LABEL_36;
      }

      if (AFDeviceSupportsSystemAssistantExperience())
      {
        v22 = 3;
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_9;
    }

    v22 = vibrationEnabled & supported;
    goto LABEL_9;
  }

  v36 = [v50 isEqualToString:*MEMORY[0x277CB8190]];
  v37 = *MEMORY[0x277CB81B0];
  v38 = [v50 isEqualToString:*MEMORY[0x277CB81B0]];
  v39 = [v49 isEqualToString:v37];
  supportEarconRemoval = [MEMORY[0x277D018F8] supportEarconRemoval];
  if (mode != 3)
  {
    if (mode == 2)
    {
      v43 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
        _os_log_fault_impl(&dword_222E4D000, v43, OS_LOG_TYPE_FAULT, "%s Unexpected use of AFPresentationModeMixed", buf, 0xCu);
      }
    }

    else if (mode == 1)
    {
      if (supportEarconRemoval & 1 | ((v38 & v39 & 1) == 0))
      {
        v22 = ~(v21 | ~v48 | v38);
      }

      else
      {
        v22 = 2;
      }

      goto LABEL_56;
    }

    v22 = -1;
    goto LABEL_56;
  }

  v46 = v48 ^ 1;
  if (state != 2)
  {
    v46 = 1;
  }

  if ((v39 | v46) == 1)
  {
    if ((v39 & v36) != 0)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_56:
  isContinuousConversationSupported = [MEMORY[0x277D018F8] isContinuousConversationSupported];
  if (time && isContinuousConversationSupported)
  {
    v45 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
      v53 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_222E4D000, v45, OS_LOG_TYPE_INFO, "%s Override startRecording to mute, since user already started speaking before serverInvoke activated (activationHostTime = %llu)", buf, 0x16u);
    }

LABEL_33:
    v22 = 0;
  }

LABEL_9:
  if (enabled && soundsEnabled)
  {
    v23 = *MEMORY[0x277D015D8];
    v24 = v49;
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s VoiceOverSiriSounds is set to ON, always play Siri start sound", buf, 0xCu);
    }

    if (vibrationEnabled && supported)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = v49;
    if (v22 == -1)
    {
      goto LABEL_23;
    }
  }

  v26 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
    v53 = 2048;
    timeCopy = v22;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_INFO, "%s Setting alertBehavior recordStarting as %ld", buf, 0x16u);
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  [v25 setObject:v27 forKey:&unk_2836673E8];

  if (enabled && (v22 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v28 = &unk_283667400;
    v29 = v25;
    v30 = &unk_283667400;
    goto LABEL_24;
  }

LABEL_23:
  v28 = &unk_283667430;
  v29 = v25;
  v30 = &unk_283667430;
LABEL_24:
  [v29 setObject:v30 forKey:&unk_283667400];
  [v25 setObject:v28 forKey:&unk_283667418];

  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_dictationAlertBehaviorDictionaryForRecordRoute:(id)route playbackRoute:(id)playbackRoute ringerState:(int64_t)state usePrelistening:(BOOL)prelistening suppressStartAlert:(BOOL)alert supportsEchoCancellation:(BOOL)cancellation isVibrationEnabled:(BOOL)enabled isVibrationSupported:(BOOL)self0 isVoiceOverTouchEnabled:(BOOL)self1
{
  prelisteningCopy = prelistening;
  playbackRouteCopy = playbackRoute;
  if (AFIsATV())
  {
    if (touchEnabled)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (prelisteningCopy)
    {
      goto LABEL_6;
    }

    if (alert)
    {
      v15 = -1;
      goto LABEL_14;
    }

    if (!AFPlaybackRouteIsHandsFree() && state == 2)
    {
LABEL_6:
      v15 = enabled & supported;
      goto LABEL_14;
    }

    if (AFIsVision())
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }
  }

LABEL_14:
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  [v16 setObject:v17 forKey:&unk_2836673E8];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  [v16 setObject:v18 forKey:&unk_283667400];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  [v16 setObject:v19 forKey:&unk_283667418];

  return v16;
}

+ (id)_alertBehaviorForRecordRoute:(id)route playbackRoute:(id)playbackRoute speechEvent:(int64_t)event speechRecordingMode:(int64_t)mode ringerState:(int64_t)state startingAlertBeepOverideID:(int64_t)d presentationMode:(int64_t)presentationMode usePrelistening:(BOOL)self0 isOnPhoneCall:(BOOL)self1 hasPlayedStartAlert:(BOOL)self2 supportsEchoCancellation:(BOOL)self3 isVoiceOverTouchEnabled:(BOOL)self4 isVibrationEnabled:(BOOL)self5 isVibrationSupported:(BOOL)self6 suppressStartAlert:(BOOL)self7 activationHostTime:(unint64_t)self8 isVoiceOverSiriSoundsEnabled:(BOOL)self9
{
  v82 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v24 = MEMORY[0x277CEF0E8];
  v25 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v26 = playbackRouteCopy;
    v27 = routeCopy;
    v28 = v25;
    AFDeviceRingerSwitchStateGetName();
    v29 = v42 = state;
    v30 = AFSoundIDGetName();
    *buf = 136319490;
    v47 = "+[CSSiriAudioActivationInfo _alertBehaviorForRecordRoute:playbackRoute:speechEvent:speechRecordingMode:ringerState:startingAlertBeepOverideID:presentationMode:usePrelistening:isOnPhoneCall:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:suppressStartAlert:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
    v48 = 2112;
    v49 = v27;
    v50 = 2112;
    v51 = v26;
    v52 = 2048;
    eventCopy = event;
    v54 = 2048;
    modeCopy = mode;
    v56 = 2112;
    v57 = v29;
    v58 = 2112;
    v59 = v30;
    v60 = 2048;
    presentationModeCopy = presentationMode;
    v62 = 1024;
    prelisteningCopy = prelistening;
    v64 = 1024;
    callCopy = call;
    v66 = 1024;
    alertCopy = alert;
    v68 = 1024;
    cancellationCopy = cancellation;
    v70 = 1024;
    enabledCopy = enabled;
    v72 = 1024;
    vibrationEnabledCopy = vibrationEnabled;
    v74 = 1024;
    supportedCopy = supported;
    v76 = 1024;
    startAlertCopy = startAlert;
    v78 = 2048;
    timeCopy = time;
    v80 = 1024;
    soundsEnabledCopy = soundsEnabled;
    _os_log_impl(&dword_222E4D000, v28, OS_LOG_TYPE_INFO, "%s recordRoute = %@, playbackRoute = %@, speechEvent = %lu, speechRecordingMode = %lu, AFDeviceRingerSwitchState = %@, AFSoundID = %@, AFPresentationMode = %lu, usePrelistening = %d, isOnPhoneCall = %d, hasPlayedStartAlert = %d, supportsEchoCancellation = %d, isVoiceOverTouchEnabled = %d, isVibrationEnabled = %d, isVibrationSupported = %d, suppressStartAlert = %d, activationHostTime = %llu, isVoiceOverSiriSoundsEnabled = %d", buf, 0x92u);

    state = v42;
    routeCopy = v27;
    playbackRouteCopy = v26;
    v24 = MEMORY[0x277CEF0E8];
  }

  if ((mode & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    LOBYTE(v41) = soundsEnabled;
    BYTE4(v40) = supported;
    BYTE3(v40) = vibrationEnabled;
    BYTE2(v40) = enabled;
    LOWORD(v40) = __PAIR16__(cancellation, alert);
    v31 = [self _alertDictionaryForRecordRoute:routeCopy playbackRoute:playbackRouteCopy speechEvent:event ringerState:state startingAlertBeepOverideID:d presentationMode:presentationMode hasPlayedStartAlert:v40 supportsEchoCancellation:time isVoiceOverTouchEnabled:v41 isVibrationEnabled:? isVibrationSupported:? activationHostTime:? isVoiceOverSiriSoundsEnabled:?];
  }

  else
  {
    if ((mode & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v32 = 0;
      goto LABEL_10;
    }

    BYTE2(v40) = enabled;
    LOWORD(v40) = __PAIR16__(supported, vibrationEnabled);
    v31 = [self _dictationAlertBehaviorDictionaryForRecordRoute:routeCopy playbackRoute:playbackRouteCopy ringerState:state usePrelistening:prelistening suppressStartAlert:startAlert supportsEchoCancellation:cancellation isVibrationEnabled:v40 isVibrationSupported:? isVoiceOverTouchEnabled:?];
  }

  v32 = v31;
  v33 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
  {
    v34 = v33;
    v35 = [v32 objectForKey:&unk_2836673E8];
    v36 = [v32 objectForKey:&unk_283667400];
    v37 = [v32 objectForKey:&unk_283667418];
    *buf = 136315906;
    v47 = "+[CSSiriAudioActivationInfo _alertBehaviorForRecordRoute:playbackRoute:speechEvent:speechRecordingMode:ringerState:startingAlertBeepOverideID:presentationMode:usePrelistening:isOnPhoneCall:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:suppressStartAlert:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
    v48 = 2112;
    v49 = v35;
    v50 = 2112;
    v51 = v36;
    v52 = 2112;
    eventCopy = v37;
    _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_INFO, "%s alertBehaviorStart = %@, alertBehaviorEnd = %@ alertBehaviorError = %@", buf, 0x2Au);
  }

LABEL_10:

  v38 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (BOOL)_doesRecordRouteSupportZLL:(id)l
{
  lCopy = l;
  if ([lCopy isEqualToString:*MEMORY[0x277CB8190]] & 1) != 0 || (objc_msgSend(lCopy, "isEqualToString:", *MEMORY[0x277CB8348]) & 1) != 0 || (objc_msgSend(lCopy, "isEqualToString:", *MEMORY[0x277CB8320]) & 1) != 0 || (objc_msgSend(lCopy, "isEqualToString:", @"HACBuiltIn"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [lCopy isEqualToString:@"BuiltInMic_injectionDevice"];
  }

  return v4;
}

@end