@interface CSSiriAudioActivationInfo
+ (BOOL)_doesRecordRouteSupportZLL:(id)a3;
+ (BOOL)_requestIsUsingHFPWithRecordRoute:(id)a3 playbackRoute:(id)a4;
+ (BOOL)_shouldAllowRecordWhileBeepWithRecordRoute:(id)a3 playbackRoute:(id)a4 supportsEchoCancellation:(BOOL)a5 speechRecordingMode:(int64_t)a6 recordingInfo:(id)a7;
+ (id)_alertBehaviorForRecordRoute:(id)a3 playbackRoute:(id)a4 speechEvent:(int64_t)a5 speechRecordingMode:(int64_t)a6 ringerState:(int64_t)a7 startingAlertBeepOverideID:(int64_t)a8 presentationMode:(int64_t)a9 usePrelistening:(BOOL)a10 isOnPhoneCall:(BOOL)a11 hasPlayedStartAlert:(BOOL)a12 supportsEchoCancellation:(BOOL)a13 isVoiceOverTouchEnabled:(BOOL)a14 isVibrationEnabled:(BOOL)a15 isVibrationSupported:(BOOL)a16 suppressStartAlert:(BOOL)a17 activationHostTime:(unint64_t)a18 isVoiceOverSiriSoundsEnabled:(BOOL)a19;
+ (id)_alertDictionaryForRecordRoute:(id)a3 playbackRoute:(id)a4 speechEvent:(int64_t)a5 ringerState:(int64_t)a6 startingAlertBeepOverideID:(int64_t)a7 presentationMode:(int64_t)a8 hasPlayedStartAlert:(BOOL)a9 supportsEchoCancellation:(BOOL)a10 isVoiceOverTouchEnabled:(BOOL)a11 isVibrationEnabled:(BOOL)a12 isVibrationSupported:(BOOL)a13 activationHostTime:(unint64_t)a14 isVoiceOverSiriSoundsEnabled:(BOOL)a15;
+ (id)_dictationAlertBehaviorDictionaryForRecordRoute:(id)a3 playbackRoute:(id)a4 ringerState:(int64_t)a5 usePrelistening:(BOOL)a6 suppressStartAlert:(BOOL)a7 supportsEchoCancellation:(BOOL)a8 isVibrationEnabled:(BOOL)a9 isVibrationSupported:(BOOL)a10 isVoiceOverTouchEnabled:(BOOL)a11;
- (BOOL)_canUseZLL;
- (BOOL)_isRequestFromSpokenNotification:(int64_t)a3;
- (BOOL)_isSystemHapticEnabled;
- (BOOL)_isVibrationDisabledInAccessibility;
- (BOOL)_isVoiceOverTouchEnabledInAccessibility;
- (BOOL)canEnterTwoShot;
- (BOOL)canPrewarm;
- (BOOL)needsUpdateToPostVoiceMode;
- (BOOL)requiresBorealisConsumerCheck;
- (BOOL)shouldExplicitlyPlayAlertOnStart;
- (BOOL)shouldPlayAlertIfNotPrelistening;
- (CSSiriAudioActivationInfo)initWithSpeechRecordingMode:(int64_t)a3 clientConfiguration:(id)a4 experimentContext:(id)a5;
- (id)_appendDictationApplicationInfoSettings:(id)a3;
- (id)_audioSessionActiveDelayCoreSpeechWithType:(unint64_t)a3;
- (id)_audioSessionActiveDelayOverride;
- (id)_audioSessionActiveDelayServerConfiguration;
- (id)_audioSessionActiveDelayUserPerceptionWithType:(unint64_t)a3;
- (id)audioSessionActivationTargetDate;
- (id)dateByAddingTimeIntervalSinceActivation:(double)a3;
- (id)description;
- (id)recordContext;
- (id)recordContextForSpeechEvent:(int64_t)a3;
- (id)recordSettingsWithOptions:(unint64_t)a3 appendingSettings:(id)a4;
- (id)startRecordingSettingsWithRecordRoute:(id)a3 recordingInfo:(id)a4 playbackRoute:(id)a5;
- (id)startingAlertBeepURL;
- (int64_t)_activationMode;
- (int64_t)_csAudioRecordType;
- (int64_t)_csAudioRecordTypeForSpeechRequestOptions:(id)a3 useBorealisBuffer:(BOOL)a4 currentClientConfiguration:(id)a5;
- (int64_t)overrideStartingAlertBeepSoundID;
- (int64_t)saeToneIDWithCarPlayConnected:(BOOL)a3;
- (int64_t)twoShotFeedbackAlertOverrideForRecordRoute:(id)a3 playbackRoute:(id)a4 deviceSupportsVibrator:(BOOL)a5 deviceSupportsEC:(BOOL)a6;
- (int64_t)twoShotPromptTypeForRecordRoute:(id)a3 playbackRoute:(id)a4;
- (unint64_t)beginUpdateToPostVoice;
- (void)endUpdateToPostVoiceWithContext:(unint64_t)a3 success:(BOOL)a4;
- (void)setClientConfiguration:(id)a3;
- (void)setSpeechRequestOptions:(id)a3 currentActivationInfo:(id)a4;
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
  v3 = [(CSSiriAudioActivationInfo *)self _csAudioRecordType];
  v4 = [objc_alloc(MEMORY[0x277D01648]) initWithRecordType:v3 deviceId:self->_deviceIdentifier];
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

  v6 = [MEMORY[0x277D01890] sharedPreferences];
  v7 = [v6 serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay];

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
    v22 = 2112;
    v23 = *&v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s mediaPlaybackVolumeThreshold = %@", &v20, 0x16u);
  }

  if (!v7 || ([v7 floatValue], v9 <= 0.0) || (objc_msgSend(v7, "floatValue"), v10 >= 1.0) || (v11 = self->_activeMediaPlaybackVolume, objc_msgSend(v7, "floatValue"), v11 < v12))
  {

LABEL_11:
    v13 = [MEMORY[0x277D01890] sharedPreferences];
    v14 = [v13 serverAudioSessionActivationDelay];

    v15 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
      v22 = 2112;
      v23 = *&v14;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@ (Default)", &v20, 0x16u);
    }

    goto LABEL_13;
  }

  v18 = [MEMORY[0x277D01890] sharedPreferences];
  v14 = [v18 serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold];

  v19 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayServerConfiguration]";
    v22 = 2112;
    v23 = *&v14;
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@ (Above Media Playback Volume Threshold)", &v20, 0x16u);
  }

  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_audioSessionActiveDelayOverride
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D01890] sharedPreferences];
  v3 = [v2 overrideAudioSessionActiveDelay];

  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriAudioActivationInfo _audioSessionActiveDelayOverride]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s audioSessionActiveDelay = %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_audioSessionActiveDelayUserPerceptionWithType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__CSSiriAudioActivationInfo__audioSessionActiveDelayUserPerceptionWithType___block_invoke;
  v13[3] = &unk_2784C4B10;
  v13[4] = self;
  v4 = MEMORY[0x223DD26C0](v13, a2, a3);
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

- (id)_audioSessionActiveDelayCoreSpeechWithType:(unint64_t)a3
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

  v8 = [(CSSiriAudioActivationInfo *)self _audioSessionActiveDelayUserPerceptionWithType:a3];
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
  v2 = [(AFClientConfiguration *)self->_currentClientConfiguration accessibilityState];
  v3 = [v2 isVibrationDisabled];

  if (!v3)
  {
    v4 = [MEMORY[0x277CEF138] sharedObserver];
    v5 = [v4 state];
    v3 = [v5 isVibrationDisabled];
  }

  return v3 == 2;
}

- (BOOL)_isSystemHapticEnabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.preferences.sounds"];
  v3 = [v2 objectForKey:@"effects-haptic"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_isVoiceOverTouchEnabledInAccessibility
{
  v2 = [(AFClientConfiguration *)self->_currentClientConfiguration accessibilityState];
  v3 = [v2 isVoiceOverTouchEnabled];

  if (!v3)
  {
    v4 = [MEMORY[0x277CEF138] sharedObserver];
    v5 = [v4 state];
    v3 = [v5 isVoiceOverTouchEnabled];
  }

  return v3 == 2;
}

- (id)dateByAddingTimeIntervalSinceActivation:(double)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v27 = 136315394;
    v28 = "[CSSiriAudioActivationInfo dateByAddingTimeIntervalSinceActivation:]";
    v29 = 2048;
    v30 = a3;
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
      v30 = *&voiceTriggerEndHostTime;
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
      v30 = *&buttonDownHostTime;
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
    v13 = [v11 dateWithTimeIntervalSinceNow:a3 - v12];
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
    v30 = *&v24;
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
      v30 = activationSystemUptime;
      _os_log_debug_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEBUG, "%s activationSystemUptime = %f", &v27, 0x16u);
    }

    v21 = MEMORY[0x277CBEAA8];
    v22 = [MEMORY[0x277CCAC38] processInfo];
    [v22 systemUptime];
    v13 = [v21 dateWithTimeIntervalSinceNow:a3 - (v23 - self->_activationSystemUptime)];
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
    v30 = *&v13;
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
  v2 = [(AFSpeechRecordingAlertPolicy *)self->_speechRecordingAlertPolicy startingAlertBehavior];
  v3 = [v2 beepSoundID];

  return v3;
}

- (int64_t)saeToneIDWithCarPlayConnected:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x277D01658] sharedInstance];
  v4 = [v3 carPlayConnected];

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

  if ((v4 & 1) != 0 || [MEMORY[0x277D018F8] isBluetoothVehicleOutput])
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
    v10 = [(CSSiriAudioActivationInfo *)self saeToneIDWithCarPlayConnected:v4];
  }

  else
  {
    v10 = [(CSSiriAudioActivationInfo *)self overrideStartingAlertBeepSoundID];
  }

  v11 = v10;
  if (AFSoundIDGetIsValidAndSpecified())
  {
    v12 = [MEMORY[0x277CEF1C0] sharedManager];
    v13 = [v12 URLForSoundID:v11];

    v6 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int64_t)twoShotFeedbackAlertOverrideForRecordRoute:(id)a3 playbackRoute:(id)a4 deviceSupportsVibrator:(BOOL)a5 deviceSupportsEC:(BOOL)a6
{
  v6 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (![v9 isEqualToString:*MEMORY[0x277CB81A0]])
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

- (int64_t)twoShotPromptTypeForRecordRoute:(id)a3 playbackRoute:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[CSSiriAudioActivationInfo twoShotPromptTypeForRecordRoute:playbackRoute:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s recordRoute = %@, playbackRoute = %@", &v16, 0x20u);
  }

  if (!AFIsHorseman())
  {
    speechEvent = self->_speechEvent;
    if (speechEvent <= 15)
    {
      if (speechEvent == 8)
      {
        if (self->_isOnPhoneCall && [v7 isEqualToString:*MEMORY[0x277CB8168]])
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

    if (!MEMORY[0x223DD13E0]() || ![v6 isEqualToString:*MEMORY[0x277CB8190]] || !objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CB81A0]))
    {
      if (![v7 isEqualToString:*MEMORY[0x277CB81D0]])
      {
        goto LABEL_30;
      }

      v12 = [(AFExperimentContext *)self->_experimentContext invocationFeedbackExperiment];
      v13 = [v12 isFeatureGroupOneEnabled];

      if (!v13)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

  v9 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v9 startAlertEnabled])
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
  v3 = [(CSSiriAudioActivationInfo *)self _isVoiceOverTouchEnabledInAccessibility];

  return [CSSiriAudioActivationInfo _shouldPlayAlertIfNotPrelisteningForSpeechEvent:speechEvent isVoiceOverTouchEnabled:v3];
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
  v3 = [(CSSiriAudioActivationInfo *)self _eventIsVoiceTrigger];
  if (v3)
  {
    activationMode = self->_activationMode;
    LOBYTE(v3) = activationMode == 1987012963 || activationMode == 1751414371;
  }

  return v3;
}

- (BOOL)_canUseZLL
{
  if ([(CSSiriAudioActivationInfo *)self _isVoiceOverTouchEnabledInAccessibility]|| self->_speechRecordingMode != 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    activationMode = self->_activationMode;
    v5 = activationMode == 1752132965 || activationMode == 1969840752 || activationMode == 1986357346;
    if (v5 || (v7 = AFIsHorseman(), v7 && self->_activationMode == 1635087471))
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [MEMORY[0x277D018F8] isContinuousConversationSupported];
      if (v6)
      {
        LOBYTE(v6) = self->_activationMode == 1635087471;
      }
    }
  }

  return v6;
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

- (void)endUpdateToPostVoiceWithContext:(unint64_t)a3 success:(BOOL)a4
{
  if (!a4)
  {
    self->_csAudioRecordType = a3;
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

- (id)startRecordingSettingsWithRecordRoute:(id)a3 recordingInfo:(id)a4 playbackRoute:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v92 = "[CSSiriAudioActivationInfo startRecordingSettingsWithRecordRoute:recordingInfo:playbackRoute:]";
    v93 = 2112;
    *v94 = v8;
    *&v94[8] = 2112;
    *v95 = v10;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s recordRoute = %@, playbackRoute = %@", buf, 0x20u);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [objc_opt_class() _doesRecordRouteSupportZLL:v8];
  v15 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [(CSSiriAudioActivationInfo *)self _canUseZLL];
    activationMode = self->_activationMode;
    *buf = 136315906;
    v92 = "[CSSiriAudioActivationInfo startRecordingSettingsWithRecordRoute:recordingInfo:playbackRoute:]";
    v93 = 1024;
    *v94 = v14;
    *&v94[4] = 1024;
    *&v94[6] = v17;
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
    v25 = [v23 processInfo];
    [v25 systemUptime];
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
  v89 = v10;
  v90 = v9;
  v30 = [MEMORY[0x277CEF250] sharedObserver];
  v86 = [v30 state];

  v84 = [(CSSiriAudioActivationInfo *)self overrideStartingAlertBeepSoundID];
  v31 = [MEMORY[0x277CEF368] sharedPreferences];
  v32 = [v31 useDeviceSpeakerForTTS];

  v33 = MEMORY[0x223DD13E0]();
  v34 = [(CSSiriAudioActivationInfo *)self _isVoiceOverTouchEnabledInAccessibility];
  v35 = v34;
  v36 = v8;
  if (v34)
  {
    v37 = [MEMORY[0x277D01910] shouldPlaySiriSounds];
  }

  else
  {
    v37 = 0;
  }

  v38 = [(AFClientConfiguration *)self->_currentClientConfiguration isDeviceInCarDNDMode];
  v39 = [(CSSiriAudioActivationInfo *)self _isVibrationDisabledInAccessibility];
  v40 = !v39;
  v41 = AFSupportsVibration();
  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2 && !v39)
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
    *v95 = v32;
    *&v95[8] = 1024;
    v96 = v82;
    v97 = 1024;
    v98 = v38;
    _os_log_impl(&dword_222E4D000, v42, OS_LOG_TYPE_INFO, "%s activationMode = %ld, usesDeviceSpeakerForTTS = %lu, attemptsToUsePastDataBufferFrames = %d, isDeviceInCarDNDMode = %d", buf, 0x2Cu);
  }

  LOBYTE(v79) = v37;
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
  v47 = [CSSiriAudioActivationInfo _alertBehaviorForRecordRoute:"_alertBehaviorForRecordRoute:playbackRoute:speechEvent:speechRecordingMode:ringerState:startingAlertBeepOverideID:presentationMode:usePrelistening:isOnPhoneCall:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:suppressStartAlert:activationHostTime:isVoiceOverSiriSoundsEnabled:" playbackRoute:v45 speechEvent:v89 speechRecordingMode:self->_speechEvent ringerState:self->_speechRecordingMode startingAlertBeepOverideID:v86 presentationMode:v84 usePrelistening:self->_presentationMode isOnPhoneCall:v78 hasPlayedStartAlert:self->_activationHostTime supportsEchoCancellation:v79 isVoiceOverTouchEnabled:? isVibrationEnabled:? isVibrationSupported:? suppressStartAlert:? activationHostTime:? isVoiceOverSiriSoundsEnabled:?];
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
        v55 = [v53 dictionary];
        v56 = [(AFLanguageDetectionUserContext *)v54 languageDetectorUserContext];
        v57 = [(AFLanguageDetectionUserContext *)v54 finalFilteredDictationLanguages];

        if (v57)
        {
          v58 = [MEMORY[0x277CBEB98] setWithArray:v57];
          [v55 setObject:v58 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguages"];
        }

        v59 = MEMORY[0x277CEF570];
        v60 = [v56 objectForKey:*(MEMORY[0x277CEF570] + 8)];
        if (v60)
        {
          [v55 setObject:v60 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorCurrentKeyboard"];
        }

        v61 = [v56 objectForKey:*v59];
        if (v61)
        {
          [v55 setObject:v61 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorWasLanguageToggled"];
        }

        v62 = [v56 objectForKey:v59[4]];
        if (v62)
        {
          [v55 setObject:v62 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorMultilingualKeyboardLanguages"];
        }

        v80 = v62;
        v81 = v61;
        v63 = [v56 objectForKey:v59[7]];
        if (v63)
        {
          [v55 setObject:v63 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorKeyboardConvoLanguagePriors"];
        }

        v83 = v60;
        v64 = [v56 objectForKey:v59[8]];
        if (v64)
        {
          [v55 setObject:v64 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorKeyboardGlobalLanguagePriors"];
        }

        v85 = v57;
        v65 = [v56 objectForKey:v59[2]];
        if (v65)
        {
          [v55 setObject:v65 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorPreviousMessageLanguage"];
        }

        v66 = [v56 objectForKey:v59[3]];
        if (v66)
        {
          [v55 setObject:v66 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorGlobalLastKeyboardUsed"];
        }

        v87 = v44;
        v67 = [v56 objectForKey:v59[5]];
        if (v67)
        {
          [v55 setObject:v67 forKey:@"CSSpeechRecordSettingsKey_LanguageDetectorConversationalMessages"];
        }

        v68 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
        {
          *buf = 136315395;
          v92 = "_CSSiriLanguageDetectorSettings";
          v93 = 2113;
          *v94 = v55;
          _os_log_impl(&dword_222E4D000, v68, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
        }

        if (v55)
        {
          v44 = v87;
          v48 = v88;
          v46 = v89;
          v49 = v90;
          if ([v55 count])
          {
            [v88 addEntriesFromDictionary:v55];
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
        v55 = 0;
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

- (int64_t)_csAudioRecordTypeForSpeechRequestOptions:(id)a3 useBorealisBuffer:(BOOL)a4 currentClientConfiguration:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 activationEvent];
  if (a4)
  {
    v8 = 6;
  }

  else
  {
    v9 = v7;
    if (v7 == 21 && ([v6 announcementPlatform] == 3 || objc_msgSend(v6, "announcementPlatform") == 4))
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

- (BOOL)_isRequestFromSpokenNotification:(int64_t)a3
{
  if (_os_feature_enabled_impl())
  {
    LOBYTE(v5) = a3 == 21 || a3 == 32 || self->_isOnPhoneCall;
  }

  else
  {
    v5 = 0x100220000uLL >> a3;
    if (a3 > 0x20)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (id)recordContextForSpeechEvent:(int64_t)a3
{
  v5 = [CSRecordTypeSpeechEventConverter getRecordTypeForSpeechEvent:?];
  v6 = [objc_alloc(MEMORY[0x277D01648]) initWithRecordType:v5 deviceId:self->_deviceIdentifier];
  [v6 setIsRequestDuringActiveCall:self->_isOnPhoneCall];
  [v6 setIsRequestFromSpokenNotification:self->_isSpokenNotification];
  [v6 setIsRequestFromTriggerless:self->_isTriggerlessFollowup];
  [v6 setSpeechEvent:a3];

  return v6;
}

- (id)recordSettingsWithOptions:(unint64_t)a3 appendingSettings:(id)a4
{
  v4 = a3;
  v30[6] = *MEMORY[0x277D85DE8];
  v6 = a4;
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
  if (v4)
  {
    v15 = [(CSSiriAudioActivationInfo *)self _audioSessionActiveDelayCoreSpeechWithType:1];
    if (v15)
    {
      [v14 setObject:v15 forKey:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
    }
  }

  if ((v4 & 4) != 0)
  {
    v16 = 1;
    goto LABEL_21;
  }

  if ((v4 & 8) != 0)
  {
    v16 = 2;
    goto LABEL_21;
  }

  if ((v4 & 0x10) != 0)
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

  if (v6)
  {
    [v14 addEntriesFromDictionary:v6];
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

- (id)_appendDictationApplicationInfoSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((self->_speechRecordingMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [v4 mutableCopy];
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

- (void)setClientConfiguration:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[CSSiriAudioActivationInfo setClientConfiguration:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s clientConfiguration = %@", &v9, 0x16u);
  }

  v6 = [v4 copy];
  currentClientConfiguration = self->_currentClientConfiguration;
  self->_currentClientConfiguration = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setSpeechRequestOptions:(id)a3 currentActivationInfo:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v48 = "[CSSiriAudioActivationInfo setSpeechRequestOptions:currentActivationInfo:]";
    v49 = 2048;
    v50 = *&self;
    v51 = 2112;
    v52 = v6;
    v53 = 2112;
    v54 = v7;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s %p speechRequestOptions = %@, currentActivationInfo = %@", buf, 0x2Au);
  }

  v10 = [v6 activationEvent];
  [v6 activationEventTime];
  v12 = v11;
  self->_suppressStartAlert = [v6 suppressStartAlert];
  self->_speechEndpointerOperationMode = [v6 endpointerOperationMode];
  self->_speechRecordingAlertPolicy = [v6 recordingAlertPolicy];
  if ([v6 useAutomaticEndpointing] && !self->_speechEndpointerOperationMode)
  {
    self->_speechEndpointerOperationMode = 3;
  }

  v13 = [v6 useBorealisBuffer];
  v14 = v13;
  if (v7 && !v10 && self->_useBorealisBuffer == v13)
  {
    self->_activationMode = v7[1];
    self->_csAudioRecordType = v7[3];
LABEL_12:
    self->_speechRecordingMode = [v7 speechRecordingMode];
    goto LABEL_13;
  }

  v15 = 1987012963;
  v16 = v6;
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
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:
  self->_speechEvent = v10;
  self->_useBorealisBuffer = v14;
  self->_activationSystemUptime = v12;
  self->_activationHostTime = [v6 activationEventMachAbsoluteTime];
  self->_buttonDownHostTime = [v6 homeButtonDownEventMachAbsoluteTime];
  v18 = [v6 voiceTriggerEventInfo];
  v19 = [v18 objectForKey:@"triggerEndMachTime"];
  self->_voiceTriggerEndHostTime = [v19 unsignedLongLongValue];

  v20 = [v6 activationDeviceIdentifier];
  v21 = [v20 copy];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v21;

  self->_usePrelistening = [v6 usePrelisteningMode];
  self->_isOnPhoneCall = [v6 isOnPhoneCall];
  self->_hasPlayedStartAlert = [v6 hasPlayedStartAlert];
  v23 = [v6 languageDetectionUserContext];
  v24 = [v23 copy];
  languageDetectionUserContext = self->_languageDetectionUserContext;
  self->_languageDetectionUserContext = v24;

  self->_dictationInputOrigin = [v6 dictationInputOrigin];
  v26 = [v6 turnIdentifier];
  turnIdentifier = self->_turnIdentifier;
  self->_turnIdentifier = v26;

  v28 = [v6 applicationDisplayName];
  applicationDisplayName = self->_applicationDisplayName;
  self->_applicationDisplayName = v28;

  v30 = [v6 applicationBundleIdentifier];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v30;

  self->_presentationMode = [v6 presentationMode];
  v32 = 0.0;
  if ([v6 isMediaPlaying])
  {
    [v6 mediaPlaybackVolume];
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

  self->_dictationVoiceTriggerAbsStartSampleId = [v6 dictationVoiceTriggerAbsStartSampleId];
  v35 = [v6 voiceTriggerEventInfo];
  v36 = *MEMORY[0x277D01CF0];
  v37 = [v35 objectForKey:*MEMORY[0x277D01CF0]];

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
    v41 = [v6 continuousConversationInfo];
    v42 = [v41 copy];
    v43 = self->_activationMetadata;
    self->_activationMetadata = v42;
  }

  self->_isSpokenNotification = [(CSSiriAudioActivationInfo *)self _isRequestFromSpokenNotification:v10];
  self->_isTriggerlessFollowup = v10 == 17;

  v44 = *MEMORY[0x277D85DE8];
}

- (CSSiriAudioActivationInfo)initWithSpeechRecordingMode:(int64_t)a3 clientConfiguration:(id)a4 experimentContext:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
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
      v27 = a3;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s %p speechRecordingMode = %zd, clientConfiguration = %@", buf, 0x2Au);
    }

    v10->_speechRecordingMode = a3;
    v12 = [v8 copy];
    currentClientConfiguration = v10->_currentClientConfiguration;
    v10->_currentClientConfiguration = v12;

    v14 = [v9 copy];
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

+ (BOOL)_shouldAllowRecordWhileBeepWithRecordRoute:(id)a3 playbackRoute:(id)a4 supportsEchoCancellation:(BOOL)a5 speechRecordingMode:(int64_t)a6 recordingInfo:(id)a7
{
  v9 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v13 route];
    v22 = 136316418;
    v23 = "+[CSSiriAudioActivationInfo _shouldAllowRecordWhileBeepWithRecordRoute:playbackRoute:supportsEchoCancellation:speechRecordingMode:recordingInfo:]";
    v24 = 1024;
    v25 = v9;
    v26 = 2048;
    v27 = a6;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v16;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s supportsEchoCancellation:%u speechRecordingMode:%ld recordRoute:%{public}@ playbackRoute:%{public}@, route in recordingInfo: %{public}@", &v22, 0x3Au);
  }

  if (a6 == 1 && v9 && [v11 isEqualToString:*MEMORY[0x277CB8190]] && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CB81A0]) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (CSIsASMacWithAOP())
  {
    v17 = [v13 route];
    v18 = v17;
    if (a6 == 1 && [v17 isEqualToString:@"BuiltInMicrophoneDevice"] && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CB81A0]) & 1) != 0)
    {

      goto LABEL_15;
    }
  }

  if (a6 != 1 || ([v11 isEqualToString:*MEMORY[0x277CB8348]] & 1) == 0)
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

+ (BOOL)_requestIsUsingHFPWithRecordRoute:(id)a3 playbackRoute:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x277CB8168];
  if ([a3 isEqualToString:*MEMORY[0x277CB8168]])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqualToString:v6];
  }

  return v7;
}

+ (id)_alertDictionaryForRecordRoute:(id)a3 playbackRoute:(id)a4 speechEvent:(int64_t)a5 ringerState:(int64_t)a6 startingAlertBeepOverideID:(int64_t)a7 presentationMode:(int64_t)a8 hasPlayedStartAlert:(BOOL)a9 supportsEchoCancellation:(BOOL)a10 isVoiceOverTouchEnabled:(BOOL)a11 isVibrationEnabled:(BOOL)a12 isVibrationSupported:(BOOL)a13 activationHostTime:(unint64_t)a14 isVoiceOverSiriSoundsEnabled:(BOOL)a15
{
  v55 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v50 = v19;
  v49 = v20;
  if ([v19 isEqualToString:*MEMORY[0x277CB8348]] && (objc_msgSend(v20, "isEqualToString:", *MEMORY[0x277CB8168]) & 1) == 0)
  {
    v21 = [v20 isEqualToString:*MEMORY[0x277CB8158]] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v48 = a12 && a13;
  if (CSIsTV())
  {
    if ((a11 & ~a9) != 0)
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
  if ((v33 & 1) != 0 || a9)
  {
    goto LABEL_9;
  }

  if ((AFSpeechEventIsVoiceTrigger() & 1) != 0 || a5 == 17 || a5 == 13)
  {
    v34 = [a1 _requestIsUsingHFPWithRecordRoute:v50 playbackRoute:v49];
    v35 = [a1 _doesRecordRouteSupportZLL:v50];
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

  if (a5 != 5)
  {
    if (v48 & AFRecordRouteIsHearst())
    {
      v22 = 3;
      goto LABEL_9;
    }

    if (AFPlaybackRouteIsHandsFree())
    {
      v41 = [a1 _requestIsUsingHFPWithRecordRoute:v50 playbackRoute:v49];
      if (a5 != 1 || !v41)
      {
        if (a5 == 1 && a12 && a13)
        {
          v22 = 1;
          goto LABEL_9;
        }

        if (a5 == 1 && a13 && !a12 || ([a1 _isJarvisVoiceTriggerSpeechEvent:a5] & 1) != 0)
        {
          goto LABEL_33;
        }

        if (((a5 != 9) & v21) != 0)
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

    else if (a6 != 2 && a10)
    {
      if (!a12 || !a13)
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

    v22 = a12 & a13;
    goto LABEL_9;
  }

  v36 = [v50 isEqualToString:*MEMORY[0x277CB8190]];
  v37 = *MEMORY[0x277CB81B0];
  v38 = [v50 isEqualToString:*MEMORY[0x277CB81B0]];
  v39 = [v49 isEqualToString:v37];
  v40 = [MEMORY[0x277D018F8] supportEarconRemoval];
  if (a8 != 3)
  {
    if (a8 == 2)
    {
      v43 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
        _os_log_fault_impl(&dword_222E4D000, v43, OS_LOG_TYPE_FAULT, "%s Unexpected use of AFPresentationModeMixed", buf, 0xCu);
      }
    }

    else if (a8 == 1)
    {
      if (v40 & 1 | ((v38 & v39 & 1) == 0))
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
  if (a6 != 2)
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
  v44 = [MEMORY[0x277D018F8] isContinuousConversationSupported];
  if (a14 && v44)
  {
    v45 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
      v53 = 2048;
      v54 = a14;
      _os_log_impl(&dword_222E4D000, v45, OS_LOG_TYPE_INFO, "%s Override startRecording to mute, since user already started speaking before serverInvoke activated (activationHostTime = %llu)", buf, 0x16u);
    }

LABEL_33:
    v22 = 0;
  }

LABEL_9:
  if (a11 && a15)
  {
    v23 = *MEMORY[0x277D015D8];
    v24 = v49;
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "+[CSSiriAudioActivationInfo _alertDictionaryForRecordRoute:playbackRoute:speechEvent:ringerState:startingAlertBeepOverideID:presentationMode:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s VoiceOverSiriSounds is set to ON, always play Siri start sound", buf, 0xCu);
    }

    if (a12 && a13)
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
    v54 = v22;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_INFO, "%s Setting alertBehavior recordStarting as %ld", buf, 0x16u);
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  [v25 setObject:v27 forKey:&unk_2836673E8];

  if (a11 && (v22 & 0xFFFFFFFFFFFFFFFELL) == 2)
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

+ (id)_dictationAlertBehaviorDictionaryForRecordRoute:(id)a3 playbackRoute:(id)a4 ringerState:(int64_t)a5 usePrelistening:(BOOL)a6 suppressStartAlert:(BOOL)a7 supportsEchoCancellation:(BOOL)a8 isVibrationEnabled:(BOOL)a9 isVibrationSupported:(BOOL)a10 isVoiceOverTouchEnabled:(BOOL)a11
{
  v12 = a6;
  v14 = a4;
  if (AFIsATV())
  {
    if (a11)
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
    if (v12)
    {
      goto LABEL_6;
    }

    if (a7)
    {
      v15 = -1;
      goto LABEL_14;
    }

    if (!AFPlaybackRouteIsHandsFree() && a5 == 2)
    {
LABEL_6:
      v15 = a9 & a10;
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

+ (id)_alertBehaviorForRecordRoute:(id)a3 playbackRoute:(id)a4 speechEvent:(int64_t)a5 speechRecordingMode:(int64_t)a6 ringerState:(int64_t)a7 startingAlertBeepOverideID:(int64_t)a8 presentationMode:(int64_t)a9 usePrelistening:(BOOL)a10 isOnPhoneCall:(BOOL)a11 hasPlayedStartAlert:(BOOL)a12 supportsEchoCancellation:(BOOL)a13 isVoiceOverTouchEnabled:(BOOL)a14 isVibrationEnabled:(BOOL)a15 isVibrationSupported:(BOOL)a16 suppressStartAlert:(BOOL)a17 activationHostTime:(unint64_t)a18 isVoiceOverSiriSoundsEnabled:(BOOL)a19
{
  v82 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  v24 = MEMORY[0x277CEF0E8];
  v25 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v26 = v23;
    v27 = v22;
    v28 = v25;
    AFDeviceRingerSwitchStateGetName();
    v29 = v42 = a7;
    v30 = AFSoundIDGetName();
    *buf = 136319490;
    v47 = "+[CSSiriAudioActivationInfo _alertBehaviorForRecordRoute:playbackRoute:speechEvent:speechRecordingMode:ringerState:startingAlertBeepOverideID:presentationMode:usePrelistening:isOnPhoneCall:hasPlayedStartAlert:supportsEchoCancellation:isVoiceOverTouchEnabled:isVibrationEnabled:isVibrationSupported:suppressStartAlert:activationHostTime:isVoiceOverSiriSoundsEnabled:]";
    v48 = 2112;
    v49 = v27;
    v50 = 2112;
    v51 = v26;
    v52 = 2048;
    v53 = a5;
    v54 = 2048;
    v55 = a6;
    v56 = 2112;
    v57 = v29;
    v58 = 2112;
    v59 = v30;
    v60 = 2048;
    v61 = a9;
    v62 = 1024;
    v63 = a10;
    v64 = 1024;
    v65 = a11;
    v66 = 1024;
    v67 = a12;
    v68 = 1024;
    v69 = a13;
    v70 = 1024;
    v71 = a14;
    v72 = 1024;
    v73 = a15;
    v74 = 1024;
    v75 = a16;
    v76 = 1024;
    v77 = a17;
    v78 = 2048;
    v79 = a18;
    v80 = 1024;
    v81 = a19;
    _os_log_impl(&dword_222E4D000, v28, OS_LOG_TYPE_INFO, "%s recordRoute = %@, playbackRoute = %@, speechEvent = %lu, speechRecordingMode = %lu, AFDeviceRingerSwitchState = %@, AFSoundID = %@, AFPresentationMode = %lu, usePrelistening = %d, isOnPhoneCall = %d, hasPlayedStartAlert = %d, supportsEchoCancellation = %d, isVoiceOverTouchEnabled = %d, isVibrationEnabled = %d, isVibrationSupported = %d, suppressStartAlert = %d, activationHostTime = %llu, isVoiceOverSiriSoundsEnabled = %d", buf, 0x92u);

    a7 = v42;
    v22 = v27;
    v23 = v26;
    v24 = MEMORY[0x277CEF0E8];
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    LOBYTE(v41) = a19;
    BYTE4(v40) = a16;
    BYTE3(v40) = a15;
    BYTE2(v40) = a14;
    LOWORD(v40) = __PAIR16__(a13, a12);
    v31 = [a1 _alertDictionaryForRecordRoute:v22 playbackRoute:v23 speechEvent:a5 ringerState:a7 startingAlertBeepOverideID:a8 presentationMode:a9 hasPlayedStartAlert:v40 supportsEchoCancellation:a18 isVoiceOverTouchEnabled:v41 isVibrationEnabled:? isVibrationSupported:? activationHostTime:? isVoiceOverSiriSoundsEnabled:?];
  }

  else
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v32 = 0;
      goto LABEL_10;
    }

    BYTE2(v40) = a14;
    LOWORD(v40) = __PAIR16__(a16, a15);
    v31 = [a1 _dictationAlertBehaviorDictionaryForRecordRoute:v22 playbackRoute:v23 ringerState:a7 usePrelistening:a10 suppressStartAlert:a17 supportsEchoCancellation:a13 isVibrationEnabled:v40 isVibrationSupported:? isVoiceOverTouchEnabled:?];
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
    v53 = v37;
    _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_INFO, "%s alertBehaviorStart = %@, alertBehaviorEnd = %@ alertBehaviorError = %@", buf, 0x2Au);
  }

LABEL_10:

  v38 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (BOOL)_doesRecordRouteSupportZLL:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CB8190]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CB8348]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CB8320]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HACBuiltIn"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BuiltInMic_injectionDevice"];
  }

  return v4;
}

@end