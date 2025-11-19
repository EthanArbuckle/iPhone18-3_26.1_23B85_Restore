@interface CSFPreferences
+ (id)sharedPreferences;
- (BOOL)_isAdaptiveSiriVolumeDisabled;
- (BOOL)_isDirectory:(id)a3;
- (BOOL)_storeModeEnabled;
- (BOOL)audioInjectionEnabled;
- (BOOL)bundleAudioInjectionEnabled;
- (BOOL)bypassPersonalizedHeySiri;
- (BOOL)bypassSpeakerIdForMitigation;
- (BOOL)bypassTrialAssets;
- (BOOL)checkAOPConfigurationWatchDog;
- (BOOL)companionSyncVoiceTriggerUtterancesEnabled;
- (BOOL)enableBenchmarkService:(BOOL)a3;
- (BOOL)exclaveAudioInjectionEnabled;
- (BOOL)fileLoggingIsEnabled;
- (BOOL)firstPassDebuggingEnabled;
- (BOOL)forceFailExclaveAssetMapping;
- (BOOL)forceHearstHijackEligibility;
- (BOOL)forceMitigateForHybridSDSD;
- (BOOL)forceRePromptVoiceTrigger;
- (BOOL)forceSetRePromptRequired;
- (BOOL)forceVoiceTriggerAOPMode;
- (BOOL)forceVoiceTriggerAPMode;
- (BOOL)getBooleanAccessorySettingValueForKey:(id)a3 forAccessory:(id)a4;
- (BOOL)isAdBlockerAudioLoggingEnabled;
- (BOOL)isAdaptiveSiriVolumePermanentOffsetEnabled;
- (BOOL)isAdaptiveSiriVolumeTemporaryIntentValid;
- (BOOL)isAttentiveSiriAPIEnabled;
- (BOOL)isAttentiveSiriAudioLoggingEnabled;
- (BOOL)isBargeInSupportEnabled;
- (BOOL)isDeferredAsrResultsEnabled;
- (BOOL)isEndpointAssetBypassTrialEnabled;
- (BOOL)isEndpointAssetOverridingEnabled;
- (BOOL)isEndpointEnhancedLoggingEnabled;
- (BOOL)isFlexibleFollowupsSupported;
- (BOOL)isFlexibleFollowupsUserDisabled;
- (BOOL)isGazeMandatory;
- (BOOL)isGazeSignalEnabled;
- (BOOL)isGazeSimlModelEnabled;
- (BOOL)isMitigationAssetOverridingEnabled;
- (BOOL)isModelBenchmarkingEnabled;
- (BOOL)isMphVTEnabled;
- (BOOL)isMultiChannelAudioLoggingEnabled;
- (BOOL)isP2PTransferEnabled;
- (BOOL)isReducedPHSThresholdEnabled;
- (BOOL)isSelfTriggerEnabledAccessory;
- (BOOL)isSelfTriggerFileLoggingEnabled;
- (BOOL)isSelfTriggerNearMissAudioLoggingEnabled;
- (BOOL)isSpeakerRecognitionAvailable;
- (BOOL)isSpeechStudyLoggingEnabled;
- (BOOL)isVoiceTriggerAssetOverridingEnabled;
- (BOOL)isVoiceTriggerRepromptAssetOverridingEnabled;
- (BOOL)jarvisAudioLoggingEnabled;
- (BOOL)myriadFileLoggingEnabled;
- (BOOL)opportuneSpeakListenerBypassEnabled;
- (BOOL)overwritingVoiceTriggerMLock;
- (BOOL)personalizedSiriEnrollmentAudioLoggingEnabled;
- (BOOL)personalizedSiriEnrollmentAudioLoggingEnabledFromRoot;
- (BOOL)phraseSpotterEnabled;
- (BOOL)programmableAudioInjectionEnabled;
- (BOOL)secondPassAudioLoggingEnabled;
- (BOOL)shouldDisableImplicitTraining;
- (BOOL)shouldOverwriteRemoteVADScore;
- (BOOL)shouldOverwriteVoiceTriggerMLock;
- (BOOL)smartSiriVolumeContextAwareLoggingEnabled;
- (BOOL)smartSiriVolumeSoftVolumeEnabled;
- (BOOL)speakerRecognitionAudioLoggingEnabled;
- (BOOL)startOfSpeechAudioLoggingEnabled;
- (BOOL)twoShotNotificationEnabled;
- (BOOL)useExclaveFastStart;
- (BOOL)useSiriActivationSPIForHomePod;
- (BOOL)useSiriActivationSPIForwatchOS;
- (BOOL)useSpeexForAudioInjection;
- (BOOL)useVoiceIsolationDictation;
- (BOOL)voiceTriggerEnabled;
- (double)getMediaPlaybackInterruptedTime:(id)a3;
- (double)remoteVoiceTriggerDelayTime;
- (double)remoteVoiceTriggerEndpointTimeoutWithDefault:(double)a3;
- (float)adaptiveSiriVolumePermanentOffset;
- (float)getAttendingTimeoutConfig;
- (float)nearlyMutedPlaybackVolumeLevel;
- (float)overwritingRemoteVADScore;
- (id)_getCoreSpeechGroupContainerPath;
- (id)assistantAudioFileLogDirectory;
- (id)assistantLogDirectory;
- (id)audioInjectionFilePath;
- (id)baseDir;
- (id)dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated;
- (id)dateWhenVoiceTriggerRePrompted;
- (id)enrollmentIdForVoiceProfileiCloudMetrics;
- (id)fakeEndpointAssetPath;
- (id)fakeHearstModelPath;
- (id)fakeMitigationAssetPath;
- (id)fakeSpeakerRecognitionAssetPath;
- (id)fakeVoiceTriggerAssetPath;
- (id)fakeVoiceTriggerAudioAccessoryFirstPassAssetPath;
- (id)fakeVoiceTriggerRepromptAssetPath;
- (id)fileLoggingLevel;
- (id)geckoAudioLogDirectory;
- (id)getIdleUserPreventSleepAssertionAcquitionDate;
- (id)getLegacyOnDeviceCompilationCacheDirectory;
- (id)getOnDeviceCompilationCacheDirectory;
- (id)getOnDeviceCompilationCacheDirectoryForBenchmark;
- (id)getRPIAssistantAudioSamplingDateSubDirectory:(id)a3;
- (id)getRPIAssistantAudioSamplingDirectory;
- (id)getSSVLogFilePathWithSessionIdentifier:(id)a3;
- (id)getStartOfSpeechAudioLogFilePath;
- (id)interstitialAbsoluteDirForLevel:(int64_t)a3;
- (id)interstitialRelativeDirForLevel:(int64_t)a3;
- (id)languageCodeDarwin;
- (id)mhLogDirectory;
- (id)myriadHashDirectory;
- (id)myriadHashFilePath;
- (id)powerLoggingCurrentAssetConfigVersion;
- (id)powerLoggingCurrentLanguage;
- (id)readSpeakerIdScoreOverrrideConfig;
- (id)remoteGradingDataDirectory;
- (id)remoteP2pLogDirectory;
- (id)ssvLogDirectory;
- (id)trialBaseAssetDirectory;
- (id)voiceTriggerAudioLogDirectory;
- (id)whiteListedMultiPhraseLocales;
- (int)adaptiveSiriVolumeRecentIntent;
- (int64_t)geckoLoggingLevel;
- (int64_t)getJarvisTriggerMode;
- (unint64_t)maxNumGradingFiles;
- (unint64_t)maxNumLoggingFiles;
- (unint64_t)overridingFrameSkipRate;
- (unint64_t)speakerIdScoreReportingType;
- (void)_clearAccessorySettingForKeys:(id)a3 forAccessory:(id)a4;
- (void)_updatePreferenceSettingsForAccessory:(id)a3 settingsUpdateBlock:(id)a4;
- (void)clearAlarmPlayingStatusOnAccessory:(id)a3;
- (void)clearMediaPlaybackInterruptedTimeOnAccessory:(id)a3;
- (void)clearMediaPlayingStatusOnAccessory:(id)a3;
- (void)clearMyriadSettingsOnAccessory:(id)a3;
- (void)clearTimerPlayingStatusOnAccessory:(id)a3;
- (void)disableAdaptiveSiriVolume:(id)a3;
- (void)enableAttentiveSiriAPI:(id)a3;
- (void)enableEndpointEnhancedLogging:(id)a3;
- (void)getASVUserIntent:(id)a3;
- (void)setASVUserIntent:(id)a3;
- (void)setAudioInjectionFilePath:(id)a3;
- (void)setEnrollmentIdForVoiceProfileiCloudMetrics:(id)a3 on:(id)a4;
- (void)setFakeHearstModelPath:(id)a3;
- (void)setFileLoggingIsEnabled:(BOOL)a3;
- (void)setFileLoggingLevel:(id)a3;
- (void)setHearstFirstPassModelVersion:(id)a3;
- (void)setHearstSecondPassModelVersion:(id)a3;
- (void)setIdleUserPreventSleepAssertionAcquitionDate:(id)a3;
- (void)setJarvisTriggerMode:(int64_t)a3;
- (void)setPowerLoggingCurrentAssetConfigVersion:(id)a3;
- (void)setPowerLoggingCurrentLanguage:(id)a3;
- (void)setRemoteDarwinEverConnectedWithNotifyKey:(const char *)a3;
- (void)setSiriLanguageCodeDarwin:(id)a3;
- (void)setVoiceTriggerEverUsed;
- (void)voiceTriggerRePromptFinishedWithDate:(id)a3;
- (void)whiteListMultiPhraseLocale:(id)a3;
@end

@implementation CSFPreferences

- (BOOL)programmableAudioInjectionEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && programmableAudioInjectionEnabled_onceToken != -1)
  {
    dispatch_once(&programmableAudioInjectionEnabled_onceToken, &__block_literal_global_269);
  }

  return programmableAudioInjectionEnabled_enabled;
}

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    dispatch_once(&sharedPreferences_onceToken, &__block_literal_global_8454);
  }

  v3 = sharedPreferences_sSharedPreferences;

  return v3;
}

- (float)nearlyMutedPlaybackVolumeLevel
{
  if (nearlyMutedPlaybackVolumeLevel_onceToken != -1)
  {
    dispatch_once(&nearlyMutedPlaybackVolumeLevel_onceToken, &__block_literal_global_535);
  }

  return *&nearlyMutedPlaybackVolumeLevel_volumeThreshold;
}

- (BOOL)forceHearstHijackEligibility
{
  if (forceHearstHijackEligibility_onceToken != -1)
  {
    dispatch_once(&forceHearstHijackEligibility_onceToken, &__block_literal_global_167);
  }

  return forceHearstHijackEligibility_result;
}

- (id)getOnDeviceCompilationCacheDirectory
{
  v2 = [(CSFPreferences *)self _getCoreSpeechGroupContainerPath];
  v3 = [v2 stringByAppendingPathComponent:@"Caches/onDeviceCompilationCaches/"];

  return v3;
}

- (id)_getCoreSpeechGroupContainerPath
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.CoreSpeech"];

  v4 = [v3 path];

  return v4;
}

- (BOOL)bypassTrialAssets
{
  if (bypassTrialAssets_onceToken != -1)
  {
    dispatch_once(&bypassTrialAssets_onceToken, &__block_literal_global_450);
  }

  return bypassTrialAssets_bypassTrial;
}

- (BOOL)isBargeInSupportEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698D1B8] sharedPreferences];
  v3 = [v2 isSiriAccessibilityBargeInEnabled];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSFPreferences isBargeInSupportEnabled]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s isBargeInEnabled:%u", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isEndpointEnhancedLoggingEnabled
{
  if (isEndpointEnhancedLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isEndpointEnhancedLoggingEnabled_onceToken, &__block_literal_global_422);
  }

  return isEndpointEnhancedLoggingEnabled_enabled;
}

- (BOOL)isFlexibleFollowupsUserDisabled
{
  v2 = CFPreferencesCopyAppValue(@"Flexible Followups User Disabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __51__CSFPreferences_programmableAudioInjectionEnabled__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"Programmable Audio Injection Enabled", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    programmableAudioInjectionEnabled_enabled = [v0 BOOLValue];
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (programmableAudioInjectionEnabled_enabled)
    {
      v3 = @"YES";
    }

    v5 = 136315394;
    v6 = "[CSFPreferences programmableAudioInjectionEnabled]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s enabled: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __35__CSFPreferences_sharedPreferences__block_invoke()
{
  v0 = objc_alloc_init(CSFPreferences);
  v1 = sharedPreferences_sSharedPreferences;
  sharedPreferences_sSharedPreferences = v0;

  CSLogInitIfNeededWithSubsystemType(0);
}

- (BOOL)exclaveAudioInjectionEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && exclaveAudioInjectionEnabled_onceToken != -1)
  {
    dispatch_once(&exclaveAudioInjectionEnabled_onceToken, &__block_literal_global_279);
  }

  return exclaveAudioInjectionEnabled_enabled;
}

void __46__CSFPreferences_exclaveAudioInjectionEnabled__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"Exclave Audio Injection Enabled", @"com.apple.voicetrigger.notbackedup", @"mobile", *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    exclaveAudioInjectionEnabled_enabled = [v0 BOOLValue];
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (exclaveAudioInjectionEnabled_enabled)
    {
      v3 = @"YES";
    }

    v5 = 136315394;
    v6 = "[CSFPreferences exclaveAudioInjectionEnabled]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s enabled: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)voiceTriggerEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v3 = CFPreferencesCopyAppValue(@"VoiceTrigger Enabled", @"com.apple.voicetrigger");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    [(CSFPreferences *)self _storeModeEnabled];
    v5 = 0;
  }

  return v5;
}

void __48__CSFPreferences_nearlyMutedPlaybackVolumeLevel__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Nearly Muted Playback Volume", @"com.apple.voicetrigger.notbackedup");
    v1 = v0;
    if (v0)
    {
      [v0 floatValue];
      nearlyMutedPlaybackVolumeLevel_volumeThreshold = v2;
    }
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSFPreferences nearlyMutedPlaybackVolumeLevel]_block_invoke";
    v7 = 2048;
    v8 = *&nearlyMutedPlaybackVolumeLevel_volumeThreshold;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s NearlyMutedPlaybackVolumeLevel = %f", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)audioInjectionEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && audioInjectionEnabled_onceToken != -1)
  {
    dispatch_once(&audioInjectionEnabled_onceToken, &__block_literal_global_259);
  }

  return audioInjectionEnabled_enabled;
}

- (BOOL)checkAOPConfigurationWatchDog
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v2 = CFPreferencesCopyAppValue(@"AOPConfigurationWatchDog", @"com.apple.voicetrigger");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)useExclaveFastStart
{
  if (useExclaveFastStart_onceToken != -1)
  {
    dispatch_once(&useExclaveFastStart_onceToken, &__block_literal_global_559);
  }

  return useExclaveFastStart_usingMicSensorFastStart;
}

void __37__CSFPreferences_useExclaveFastStart__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v0 = CFPreferencesCopyAppValue(@"Exclave Siri Fast Start", @"com.apple.voicetrigger");
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      useExclaveFastStart_usingMicSensorFastStart = [v0 BOOLValue];
    }
  }

  [@"octopus_siri_darkwake" UTF8String];
  os_parse_boot_arg_int();
  useExclaveFastStart_usingMicSensorFastStart = 0;
}

- (BOOL)useVoiceIsolationDictation
{
  if (useVoiceIsolationDictation_onceToken != -1)
  {
    dispatch_once(&useVoiceIsolationDictation_onceToken, &__block_literal_global_554);
  }

  return useVoiceIsolationDictation_useVoiceIsolationForDictation;
}

void __44__CSFPreferences_useVoiceIsolationDictation__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v0 = CFPreferencesCopyAppValue(@"Use VoiceIsolation Dictation", @"com.apple.voicetrigger");
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      useVoiceIsolationDictation_useVoiceIsolationForDictation = [v0 BOOLValue];
    }
  }
}

- (BOOL)isSpeechStudyLoggingEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (isSpeechStudyLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isSpeechStudyLoggingEnabled_onceToken, &__block_literal_global_546);
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSFPreferences isSpeechStudyLoggingEnabled]";
    v7 = 1024;
    v8 = isSpeechStudyLoggingEnabled_enabled;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s returnValue is :%u", &v5, 0x12u);
  }

  result = isSpeechStudyLoggingEnabled_enabled;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __45__CSFPreferences_isSpeechStudyLoggingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"SpeechStudy Logging Enabled", @"com.apple.voicetrigger");
    if (v0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isSpeechStudyLoggingEnabled_enabled = [v0 BOOLValue];
      }
    }
  }
}

- (id)fakeVoiceTriggerRepromptAssetPath
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyValue(@"VoiceTriggerReprompt Asset Overriding File Path", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dateWhenVoiceTriggerRePrompted
{
  v2 = CFPreferencesCopyAppValue(@"Log when user was RePrompted ", @"com.apple.voicetrigger.notbackedup");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)voiceTriggerRePromptFinishedWithDate:(id)a3
{
  _CSNotBackedupPreferencesSetValueForKey(a3, @"Log when user was RePrompted ");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
}

- (BOOL)isVoiceTriggerRepromptAssetOverridingEnabled
{
  if (isVoiceTriggerRepromptAssetOverridingEnabled_onceToken != -1)
  {
    dispatch_once(&isVoiceTriggerRepromptAssetOverridingEnabled_onceToken, &__block_literal_global_530);
  }

  return isVoiceTriggerRepromptAssetOverridingEnabled_enabled;
}

void __62__CSFPreferences_isVoiceTriggerRepromptAssetOverridingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"VoiceTriggerReprompt Asset Overriding File Path", @"com.apple.voicetrigger");
    if (v0)
    {
      isVoiceTriggerRepromptAssetOverridingEnabled_enabled = 1;
    }
  }
}

- (BOOL)isFlexibleFollowupsSupported
{
  v2 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v3 = [CSUtils supportsMagusForLanguageCode:v2];
  v4 = +[CSUtils isContinuousConversationSupported];

  return v4 && v3;
}

- (BOOL)shouldDisableImplicitTraining
{
  if (shouldDisableImplicitTraining_onceToken != -1)
  {
    dispatch_once(&shouldDisableImplicitTraining_onceToken, &__block_literal_global_519);
  }

  return shouldDisableImplicitTraining_disabled;
}

void __47__CSFPreferences_shouldDisableImplicitTraining__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Disable Implicit Enrollment", @"com.apple.voicetrigger.notbackedup");
  if (v0)
  {
    if (CSIsInternalBuild_onceToken != -1)
    {
      v2 = v0;
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
      v0 = v2;
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      v1 = v0;
      shouldDisableImplicitTraining_disabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (unint64_t)overridingFrameSkipRate
{
  if (overridingFrameSkipRate_onceToken != -1)
  {
    dispatch_once(&overridingFrameSkipRate_onceToken, &__block_literal_global_514);
  }

  return overridingFrameSkipRate_overridingFrameSkipRateValue;
}

void __41__CSFPreferences_overridingFrameSkipRate__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Overriding Fingerproint Frame Skip Rate", @"com.apple.voicetrigger.notbackedup");
    if (v0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        overridingFrameSkipRate_overridingFrameSkipRateValue = [v0 unsignedIntValue];
      }
    }
  }
}

- (id)powerLoggingCurrentLanguage
{
  v2 = CFPreferencesCopyAppValue(@"Power Logging Current Language", @"com.apple.voicetrigger.notbackedup");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPowerLoggingCurrentLanguage:(id)a3
{
  _CSNotBackedupPreferencesSetValueForKey(a3, @"Power Logging Current Language");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (void)whiteListMultiPhraseLocale:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(CSFPreferences *)self whiteListedMultiPhraseLocales];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v5 && [v5 count])
    {
      [v6 addObjectsFromArray:v5];
    }

    [v6 addObject:v7];
    _CSNotBackedupPreferencesSetValueForKey(v6, @"Whitelisted Multiphrase Locales");

    v4 = v7;
  }
}

- (id)whiteListedMultiPhraseLocales
{
  v2 = CFPreferencesCopyAppValue(@"Whitelisted Multiphrase Locales", @"com.apple.voicetrigger.notbackedup");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)powerLoggingCurrentAssetConfigVersion
{
  v2 = CFPreferencesCopyAppValue(@"Power Logging Current Asset Config Version", @"com.apple.voicetrigger.notbackedup");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPowerLoggingCurrentAssetConfigVersion:(id)a3
{
  _CSNotBackedupPreferencesSetValueForKey(a3, @"Power Logging Current Asset Config Version");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (BOOL)forceMitigateForHybridSDSD
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
    if (forceMitigateForHybridSDSD_onceToken != -1)
    {
      dispatch_once(&forceMitigateForHybridSDSD_onceToken, &__block_literal_global_499);
    }
  }

  return forceMitigateForHybridSDSD_forceMitigateForHybridSDSD;
}

uint64_t __44__CSFPreferences_forceMitigateForHybridSDSD__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Force Mitigate For HybridSDSD", @"com.apple.voicetrigger.notbackedup");
  if (v0)
  {
    LOBYTE(v0) = [v0 BOOLValue];
  }

  forceMitigateForHybridSDSD_forceMitigateForHybridSDSD = v0;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)forceSetRePromptRequired
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
    if (forceSetRePromptRequired_onceToken != -1)
    {
      dispatch_once(&forceSetRePromptRequired_onceToken, &__block_literal_global_494);
    }
  }

  return forceSetRePromptRequired_forceSetRePromptRequired;
}

uint64_t __42__CSFPreferences_forceSetRePromptRequired__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Force Set Re-Prompt Required", @"com.apple.voicetrigger");
  if (v0)
  {
    LOBYTE(v0) = [v0 BOOLValue];
  }

  forceSetRePromptRequired_forceSetRePromptRequired = v0;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)forceRePromptVoiceTrigger
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
    if (forceRePromptVoiceTrigger_onceToken != -1)
    {
      dispatch_once(&forceRePromptVoiceTrigger_onceToken, &__block_literal_global_489);
    }
  }

  return forceRePromptVoiceTrigger_forceReEnrollVoiceTrigger;
}

uint64_t __43__CSFPreferences_forceRePromptVoiceTrigger__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Force Re-Prompt VoiceTrigger Buddy", @"com.apple.voicetrigger");
  if (v0)
  {
    LOBYTE(v0) = [v0 BOOLValue];
  }

  forceRePromptVoiceTrigger_forceReEnrollVoiceTrigger = v0;

  return MEMORY[0x1EEE66BB8]();
}

- (id)enrollmentIdForVoiceProfileiCloudMetrics
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"EnrollmentId Voice Profile iCloud Enrollment", @"com.apple.voicetrigger.notbackedup");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSFPreferences enrollmentIdForVoiceProfileiCloudMetrics]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched enrollmentId %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"Creation Date of EnrollmentId used in Voice Profile iCloud Enrollment", @"com.apple.voicetrigger.notbackedup");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = CSLogContextFacilityCoreSpeech;
  v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (isKindOfClass)
  {
    if (v5)
    {
      v9 = 136315394;
      v10 = "[CSFPreferences dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated]";
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s date found %@", &v9, 0x16u);
    }

    v6 = v2;
  }

  else
  {
    if (v5)
    {
      v9 = 136315138;
      v10 = "[CSFPreferences dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s date not found. Return nil... ", &v9, 0xCu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setEnrollmentIdForVoiceProfileiCloudMetrics:(id)a3 on:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSFPreferences setEnrollmentIdForVoiceProfileiCloudMetrics:on:]";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Setting enrollmentId %@ on %@... ", &v9, 0x20u);
  }

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  _CSNotBackedupPreferencesSetValueForKey(v5, @"EnrollmentId Voice Profile iCloud Enrollment");
  _CSNotBackedupPreferencesSetValueForKey(v6, @"Creation Date of EnrollmentId used in Voice Profile iCloud Enrollment");
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)firstPassDebuggingEnabled
{
  if (firstPassDebuggingEnabled_onceToken != -1)
  {
    dispatch_once(&firstPassDebuggingEnabled_onceToken, &__block_literal_global_478);
  }

  return firstPassDebuggingEnabled_firstPassDebug;
}

void __43__CSFPreferences_firstPassDebuggingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"First Pass Debug", @"com.apple.voicetrigger.notbackedup");
    firstPassDebuggingEnabled_firstPassDebug = v0 != 0;
  }
}

- (id)readSpeakerIdScoreOverrrideConfig
{
  if (readSpeakerIdScoreOverrrideConfig_onceToken != -1)
  {
    dispatch_once(&readSpeakerIdScoreOverrrideConfig_onceToken, &__block_literal_global_473);
  }

  v3 = readSpeakerIdScoreOverrrideConfig_scoreMap;

  return v3;
}

void __51__CSFPreferences_readSpeakerIdScoreOverrrideConfig__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"SpeakerID Score Override Map", @"com.apple.voicetrigger");
    v1 = readSpeakerIdScoreOverrrideConfig_scoreMap;
    readSpeakerIdScoreOverrrideConfig_scoreMap = v0;

    if (readSpeakerIdScoreOverrrideConfig_scoreMap && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = [readSpeakerIdScoreOverrrideConfig_scoreMap mutableCopy];
    }

    else
    {
      v2 = [MEMORY[0x1E695DF20] dictionary];
    }

    readSpeakerIdScoreOverrrideConfig_scoreMap = v2;

    MEMORY[0x1EEE66BB8]();
  }
}

- (BOOL)bypassSpeakerIdForMitigation
{
  if (bypassSpeakerIdForMitigation_onceToken != -1)
  {
    dispatch_once(&bypassSpeakerIdForMitigation_onceToken, &__block_literal_global_468);
  }

  return bypassSpeakerIdForMitigation_enabled;
}

void __46__CSFPreferences_bypassSpeakerIdForMitigation__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Bypass SpeakerId based Mitigation", @"com.apple.voicetrigger");
    if (v0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v1 = [v0 BOOLValue];
    }

    else
    {
      v1 = 0;
    }

    v3 = CFPreferencesCopyAppValue(@"Bypass SpeakerId based Mitigation", @"com.apple.voicetrigger.notbackedup");

    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = [v3 BOOLValue];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }

    bypassSpeakerIdForMitigation_enabled = (v1 | v2) & 1;

    MEMORY[0x1EEE66BE0]();
  }
}

- (BOOL)forceFailExclaveAssetMapping
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"Force Fail Exclave Asset Mapping", @"com.apple.voicetrigger.notbackedup");
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)overwritingVoiceTriggerMLock
{
  if (overwritingVoiceTriggerMLock_onceToken != -1)
  {
    dispatch_once(&overwritingVoiceTriggerMLock_onceToken, &__block_literal_global_463);
  }

  return overwritingVoiceTriggerMLock_voiceTriggerMLockEnabled;
}

void __46__CSFPreferences_overwritingVoiceTriggerMLock__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Enable VoiceTrigger Mlock", @"com.apple.voicetrigger.notbackedup");
    if (v0)
    {
      v1 = v0;
      if (objc_opt_respondsToSelector())
      {
        overwritingVoiceTriggerMLock_voiceTriggerMLockEnabled = [v1 BOOLValue];
      }
    }

    MEMORY[0x1EEE66BE0]();
  }
}

- (BOOL)shouldOverwriteVoiceTriggerMLock
{
  if (shouldOverwriteVoiceTriggerMLock_onceToken != -1)
  {
    dispatch_once(&shouldOverwriteVoiceTriggerMLock_onceToken, &__block_literal_global_458_8197);
  }

  return shouldOverwriteVoiceTriggerMLock_shouldOverwrite;
}

void __50__CSFPreferences_shouldOverwriteVoiceTriggerMLock__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Enable VoiceTrigger Mlock", @"com.apple.voicetrigger.notbackedup");
    if (v0)
    {
      shouldOverwriteVoiceTriggerMLock_shouldOverwrite = 1;
    }
  }
}

- (BOOL)isSelfTriggerEnabledAccessory
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS])
  {
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
    v2 = CFPreferencesCopyAppValue(@"SelfTrigger Enabled in Accessory", @"com.apple.voicetrigger");
    v3 = v2;
    if (v2)
    {
      v4 = [v2 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSFPreferences isSelfTriggerEnabledAccessory]";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Called in unexpected platform!", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void __35__CSFPreferences_bypassTrialAssets__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Bypass Trial Assets", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      if (objc_opt_respondsToSelector())
      {
        bypassTrialAssets_bypassTrial = [v1 BOOLValue];
      }
    }

    MEMORY[0x1EEE66BE0]();
  }
}

- (id)fakeMitigationAssetPath
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyValue(@"Mitigation Asset Overriding File Path", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isMitigationAssetOverridingEnabled
{
  if (isMitigationAssetOverridingEnabled_onceToken != -1)
  {
    dispatch_once(&isMitigationAssetOverridingEnabled_onceToken, &__block_literal_global_445);
  }

  return isMitigationAssetOverridingEnabled_enabled;
}

void __52__CSFPreferences_isMitigationAssetOverridingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Mitigation Asset Overriding File Path", @"com.apple.voicetrigger");
    if (v0)
    {
      isMitigationAssetOverridingEnabled_enabled = 1;
    }
  }
}

- (id)fakeVoiceTriggerAudioAccessoryFirstPassAssetPath
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyValue(@"VoiceTrigger Asset Overriding File Path", @"com.apple.voicetrigger", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fakeSpeakerRecognitionAssetPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8198;
  v9 = __Block_byref_object_dispose__8199;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CSFPreferences_fakeSpeakerRecognitionAssetPath__block_invoke;
  block[3] = &unk_1E865C120;
  block[4] = &v5;
  if (fakeSpeakerRecognitionAssetPath_onceToken != -1)
  {
    dispatch_once(&fakeSpeakerRecognitionAssetPath_onceToken, block);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__CSFPreferences_fakeSpeakerRecognitionAssetPath__block_invoke(uint64_t a1)
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    obj = CFPreferencesCopyValue(@"SpeakerRecognition Asset Overriding File Path", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
    if (obj)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
      }
    }
  }
}

- (id)fakeVoiceTriggerAssetPath
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyValue(@"VoiceTrigger Asset Overriding File Path", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isVoiceTriggerAssetOverridingEnabled
{
  if (isVoiceTriggerAssetOverridingEnabled_onceToken != -1)
  {
    dispatch_once(&isVoiceTriggerAssetOverridingEnabled_onceToken, &__block_literal_global_437);
  }

  return isVoiceTriggerAssetOverridingEnabled_enabled;
}

void __54__CSFPreferences_isVoiceTriggerAssetOverridingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"VoiceTrigger Asset Overriding File Path", @"com.apple.voicetrigger");
    if (v0)
    {
      isVoiceTriggerAssetOverridingEnabled_enabled = 1;
    }
  }
}

- (BOOL)isEndpointAssetBypassTrialEnabled
{
  if (isEndpointAssetBypassTrialEnabled_onceToken != -1)
  {
    dispatch_once(&isEndpointAssetBypassTrialEnabled_onceToken, &__block_literal_global_432);
  }

  return isEndpointAssetBypassTrialEnabled_enabled;
}

void __51__CSFPreferences_isEndpointAssetBypassTrialEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Endpoint Asset Bypass Trial Enabled", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isEndpointAssetBypassTrialEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (id)fakeEndpointAssetPath
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyValue(@"Endpoint Asset Overriding File Path", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEndpointAssetOverridingEnabled
{
  if (isEndpointAssetOverridingEnabled_onceToken != -1)
  {
    dispatch_once(&isEndpointAssetOverridingEnabled_onceToken, &__block_literal_global_424);
  }

  return isEndpointAssetOverridingEnabled_enabled;
}

void __50__CSFPreferences_isEndpointAssetOverridingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Endpoint Asset Overriding Enabled", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isEndpointAssetOverridingEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

void __50__CSFPreferences_isEndpointEnhancedLoggingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Endpoint Enhanced Logging", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isEndpointEnhancedLoggingEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (void)enableEndpointEnhancedLogging:(id)a3
{
  _CSPreferencesSetValueForKeyFromRoot(a3, @"Endpoint Enhanced Logging");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (BOOL)isAttentiveSiriAPIEnabled
{
  if (isAttentiveSiriAPIEnabled_onceToken != -1)
  {
    dispatch_once(&isAttentiveSiriAPIEnabled_onceToken, &__block_literal_global_417);
  }

  return isAttentiveSiriAPIEnabled_enabled;
}

void __43__CSFPreferences_isAttentiveSiriAPIEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Attentive Siri API", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isAttentiveSiriAPIEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (void)enableAttentiveSiriAPI:(id)a3
{
  _CSPreferencesSetValueForKeyFromRoot(a3, @"Attentive Siri API");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (int64_t)geckoLoggingLevel
{
  if (geckoLoggingLevel_onceToken != -1)
  {
    dispatch_once(&geckoLoggingLevel_onceToken, &__block_literal_global_409);
  }

  return geckoLoggingLevel_geckoLoggingLevel;
}

void __35__CSFPreferences_geckoLoggingLevel__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"NearMissAudioLoggingLevel", @"com.apple.voicetrigger.notbackedup");
  if (v0)
  {
    v1 = v0;
    geckoLoggingLevel_geckoLoggingLevel = [v0 integerValue];
    v0 = v1;
  }
}

- (BOOL)isModelBenchmarkingEnabled
{
  if (isModelBenchmarkingEnabled_onceToken != -1)
  {
    dispatch_once(&isModelBenchmarkingEnabled_onceToken, &__block_literal_global_407);
  }

  return isModelBenchmarkingEnabled_enabled;
}

void __44__CSFPreferences_isModelBenchmarkingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Enable Model Benchmarking", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isModelBenchmarkingEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (BOOL)isReducedPHSThresholdEnabled
{
  if (isReducedPHSThresholdEnabled_onceToken != -1)
  {
    dispatch_once(&isReducedPHSThresholdEnabled_onceToken, &__block_literal_global_402);
  }

  return isReducedPHSThresholdEnabled_enabled;
}

void __46__CSFPreferences_isReducedPHSThresholdEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Enable Reduced PHS Threshold", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isReducedPHSThresholdEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (BOOL)isP2PTransferEnabled
{
  if (isP2PTransferEnabled_onceToken != -1)
  {
    dispatch_once(&isP2PTransferEnabled_onceToken, &__block_literal_global_397);
  }

  return isP2PTransferEnabled_enabled;
}

void __38__CSFPreferences_isP2PTransferEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable P2P Transfer", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    isP2PTransferEnabled_enabled = [v0 BOOLValue];
    v0 = v1;
  }
}

- (id)getIdleUserPreventSleepAssertionAcquitionDate
{
  v2 = CFPreferencesCopyAppValue(@"Idle User Prevent Sleep Assertion Acquition Time", @"com.apple.voicetrigger.notbackedup");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIdleUserPreventSleepAssertionAcquitionDate:(id)a3
{
  _CSNotBackedupPreferencesSetValueForKey(a3, @"Idle User Prevent Sleep Assertion Acquition Time");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
}

- (void)setRemoteDarwinEverConnectedWithNotifyKey:(const char *)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CSFPreferences_setRemoteDarwinEverConnectedWithNotifyKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  if (setRemoteDarwinEverConnectedWithNotifyKey__onceToken != -1)
  {
    dispatch_once(&setRemoteDarwinEverConnectedWithNotifyKey__onceToken, block);
  }
}

uint64_t __60__CSFPreferences_setRemoteDarwinEverConnectedWithNotifyKey___block_invoke(uint64_t a1)
{
  _CSNotBackedupPreferencesSetValueForKey(MEMORY[0x1E695E118], @"Remote Darwin Ever Connected");
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
  v2 = *(a1 + 32);

  return notify_post(v2);
}

- (id)languageCodeDarwin
{
  v9 = *MEMORY[0x1E69E9840];
  if (!+[CSUtils isDarwinOS])
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSFPreferences languageCodeDarwin]";
      _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s Not supported on this platform", &v7, 0xCu);
    }
  }

  v3 = CFPreferencesCopyAppValue(@"Siri Language Code Darwin", @"com.apple.voicetrigger");
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setSiriLanguageCodeDarwin:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[CSUtils isDarwinOS])
  {
    _CSPreferencesSetValueForKey(v3, @"Siri Language Code Darwin");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CSFPreferences setSiriLanguageCodeDarwin:]";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Not supported on this platform", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getASVUserIntent:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Intent Type", @"com.apple.voicetrigger");
  v5 = v4;
  if (v4)
  {
    [v3 setUserIntentType:{objc_msgSend(v4, "unsignedLongLongValue")}];
    v6 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Intent Time", @"com.apple.voicetrigger");
    v7 = v6;
    if (v6)
    {
      [v3 setUserIntentTime:{objc_msgSend(v6, "longLongValue")}];
      v8 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Intent Volume", @"com.apple.voicetrigger");
      v9 = v8;
      if (v8)
      {
        [v8 floatValue];
        [v3 setUserIntentVolume:?];
        v10 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Latest Volume Time", @"com.apple.voicetrigger");
        v11 = v10;
        if (v10)
        {
          [v3 setLatestVolumeTime:{objc_msgSend(v10, "longLongValue")}];
          v12 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Latest Volume", @"com.apple.voicetrigger");
          v13 = v12;
          if (v12)
          {
            [v12 floatValue];
            [v3 setLatestVolume:?];
            v14 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Permanent Offset Enabled", @"com.apple.voicetrigger");
            v15 = v14;
            if (v14)
            {
              v16 = [v14 BOOLValue];
              v17 = v3;
            }

            else
            {
              v23 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v43 = "[CSFPreferences getASVUserIntent:]";
                _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to load permanent offset status. Defaulting to no permanent volume offset", buf, 0xCu);
              }

              v17 = v3;
              v16 = 0;
            }

            [v17 setPermanentOffsetIsEnabled:v16];
            v24 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Permanent Offset Factor", @"com.apple.voicetrigger");
            v25 = v24;
            if (v24)
            {
              [v24 floatValue];
              v27 = *&v26;
            }

            else
            {
              v28 = CSLogContextFacilityCoreSpeech;
              v27 = 1.0;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v43 = "[CSFPreferences getASVUserIntent:]";
                _os_log_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to load permanent offset factor. Defaulting to unity permanent volume offset factor", buf, 0xCu);
              }
            }

            *&v26 = v27;
            [v3 setPermanentOffsetFactor:v26];
            v29 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              log = v29;
              v40 = [v3 userIntentType];
              v39 = [v3 userIntentTime];
              [v3 userIntentVolume];
              v31 = v30;
              v32 = [v3 latestVolumeTime];
              [v3 latestVolume];
              v34 = v33;
              v35 = v15;
              v36 = [v3 permanentOffsetIsEnabled];
              [v3 permanentOffsetFactor];
              *buf = 136316930;
              v43 = "[CSFPreferences getASVUserIntent:]";
              v44 = 2050;
              v45 = v40;
              v46 = 2050;
              v47 = v39;
              v48 = 2050;
              v49 = v31;
              v50 = 2050;
              v51 = v32;
              v52 = 2050;
              v53 = v34;
              v54 = 1026;
              v55 = v36;
              v15 = v35;
              v56 = 2050;
              v57 = v37;
              _os_log_impl(&dword_1DDA4B000, log, OS_LOG_TYPE_DEFAULT, "%s Loaded Adaptive Siri Volume intentType: %{public}llu, intentTime: %{public}llu, intentVolume: %{public}f, latestVolumeTime: %{public}lld, latestVolume:%{public}f, permanentOffsetIsEnabled: %{public}d, permanentOffsetFactor: %{public}f", buf, 0x4Eu);
            }
          }

          else
          {
            v22 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v43 = "[CSFPreferences getASVUserIntent:]";
              _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to latest volume. Ignoring intent", buf, 0xCu);
            }

            [v3 setUserIntentTime:0x8000000000000000];
          }
        }

        else
        {
          v21 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v43 = "[CSFPreferences getASVUserIntent:]";
            _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to load latest volume time. Ignoring intent", buf, 0xCu);
          }

          [v3 setUserIntentTime:0x8000000000000000];
        }
      }

      else
      {
        v20 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v43 = "[CSFPreferences getASVUserIntent:]";
          _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to load user intent volume. Ignoring intent", buf, 0xCu);
        }

        [v3 setUserIntentTime:0x8000000000000000];
      }
    }

    else
    {
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v43 = "[CSFPreferences getASVUserIntent:]";
        _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to load user intent time. Ignoring intent", buf, 0xCu);
      }

      [v3 setUserIntentTime:0x8000000000000000];
    }
  }

  else
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[CSFPreferences getASVUserIntent:]";
      _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s Adaptive Siri Volume failed to load user intent type. Ignoring intent", buf, 0xCu);
    }

    [v3 setUserIntentTime:0x8000000000000000];
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)setASVUserIntent:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v17 = [v3 numberWithUnsignedLongLong:{objc_msgSend(v4, "userIntentType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "userIntentTime")}];
  v6 = MEMORY[0x1E696AD98];
  [v4 userIntentVolume];
  v7 = [v6 numberWithFloat:?];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "latestVolumeTime")}];
  v9 = MEMORY[0x1E696AD98];
  [v4 latestVolume];
  v10 = [v9 numberWithFloat:?];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "permanentOffsetIsEnabled")}];
  v12 = MEMORY[0x1E696AD98];
  [v4 permanentOffsetFactor];
  v13 = [v12 numberWithFloat:?];
  v14 = MEMORY[0x1E696AD98];
  v15 = [v4 userIntentValidForSeconds];

  v16 = [v14 numberWithUnsignedLongLong:v15];
  _CSPreferencesSetValueForKey(v17, @"Adaptive Siri Volume State Intent Type");
  _CSPreferencesSetValueForKey(v5, @"Adaptive Siri Volume State Intent Time");
  _CSPreferencesSetValueForKey(v7, @"Adaptive Siri Volume State Intent Volume");
  _CSPreferencesSetValueForKey(v8, @"Adaptive Siri Volume State Latest Volume Time");
  _CSPreferencesSetValueForKey(v10, @"Adaptive Siri Volume State Latest Volume");
  _CSPreferencesSetValueForKey(v11, @"Adaptive Siri Volume State Permanent Offset Enabled");
  _CSPreferencesSetValueForKey(v13, @"Adaptive Siri Volume State Permanent Offset Factor");
  _CSPreferencesSetValueForKey(v16, @"Adaptive Siri Volume State Intent Valid For Seconds");
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (BOOL)isSelfTriggerNearMissAudioLoggingEnabled
{
  if (isSelfTriggerNearMissAudioLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isSelfTriggerNearMissAudioLoggingEnabled_onceToken, &__block_literal_global_373);
  }

  return isSelfTriggerNearMissAudioLoggingEnabled_enabled;
}

void __58__CSFPreferences_isSelfTriggerNearMissAudioLoggingEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable Self Trigger Near-Miss Audio Logging", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    isSelfTriggerNearMissAudioLoggingEnabled_enabled = [v0 BOOLValue];
    v0 = v1;
  }
}

- (BOOL)isSelfTriggerFileLoggingEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && isSelfTriggerFileLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isSelfTriggerFileLoggingEnabled_onceToken, &__block_literal_global_368);
  }

  return isSelfTriggerFileLoggingEnabled_enabled;
}

void __49__CSFPreferences_isSelfTriggerFileLoggingEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable Self Trigger Audio Logging", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    isSelfTriggerFileLoggingEnabled_enabled = [v0 BOOLValue];
    v0 = v1;
  }
}

- (BOOL)isAdBlockerAudioLoggingEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && isAdBlockerAudioLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isAdBlockerAudioLoggingEnabled_onceToken, &__block_literal_global_363);
  }

  return isAdBlockerAudioLoggingEnabled_enabled;
}

void __48__CSFPreferences_isAdBlockerAudioLoggingEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable AdBlocker Audio Logging", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    isAdBlockerAudioLoggingEnabled_enabled = [v0 BOOLValue];
    v0 = v1;
  }
}

- (BOOL)isMultiChannelAudioLoggingEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && isMultiChannelAudioLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isMultiChannelAudioLoggingEnabled_onceToken, &__block_literal_global_357);
  }

  return isMultiChannelAudioLoggingEnabled_multiChannelAudioLogging;
}

void __51__CSFPreferences_isMultiChannelAudioLoggingEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"MultiChannelAudioLoggingEnabled", @"com.apple.voicetrigger");
  v2 = v0;
  if (v0)
  {
    isMultiChannelAudioLoggingEnabled_multiChannelAudioLogging = [v0 BOOLValue];
    if (isMultiChannelAudioLoggingEnabled_multiChannelAudioLogging)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((isMultiChannelAudioLoggingEnabled_multiChannelAudioLogging & 1) == 0)
  {
LABEL_3:
    v1 = [MEMORY[0x1E698D1B8] sharedPreferences];
    isMultiChannelAudioLoggingEnabled_multiChannelAudioLogging = [v1 fileLoggingIsEnabled];
  }

LABEL_4:
}

- (BOOL)isMphVTEnabled
{
  if (isMphVTEnabled_onceToken != -1)
  {
    dispatch_once(&isMphVTEnabled_onceToken, &__block_literal_global_352);
  }

  return isMphVTEnabled_mphVTEnabled;
}

void __32__CSFPreferences_isMphVTEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"MultiPhraseVTEnabled", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      isMphVTEnabled_mphVTEnabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (BOOL)bypassPersonalizedHeySiri
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
    if (bypassPersonalizedHeySiri_onceToken != -1)
    {
      dispatch_once(&bypassPersonalizedHeySiri_onceToken, &__block_literal_global_347);
    }
  }

  return bypassPersonalizedHeySiri_bypassPersonalizedHeySiri;
}

uint64_t __43__CSFPreferences_bypassPersonalizedHeySiri__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Bypass Personalized HeySiri", @"com.apple.voicetrigger.notbackedup");
  if (v0)
  {
    LOBYTE(v0) = [v0 BOOLValue];
  }

  bypassPersonalizedHeySiri_bypassPersonalizedHeySiri = v0;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)opportuneSpeakListenerBypassEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"Enable OpportuneSpeakListener Bypass", @"com.apple.voicetrigger");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

- (BOOL)companionSyncVoiceTriggerUtterancesEnabled
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
    return 0;
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"VoiceTrigger Companion Sync Enabled", @"com.apple.voicetrigger");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

- (void)setFakeHearstModelPath:(id)a3
{
  v3 = a3;
  if (CSIsInternalBuild_onceToken == -1)
  {
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v3;
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
    v3 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (CSIsInternalBuild_isInternal)
  {
    v4 = v3;
    _CSPreferencesSetValueForKeyFromRoot(v3, @"Hearst Fake Model Path");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
    v3 = v4;
  }

LABEL_5:
}

- (id)fakeHearstModelPath
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyValue(@"Hearst Fake Model Path", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHearstSecondPassModelVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (CSIsInternalBuild_onceToken != -1)
  {
    v6 = v3;
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
    v4 = v6;
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v5 = v4;
    CFPreferencesSetValue(@"Hearst Second Pass Model Version", v4, @"com.apple.voicetrigger.notbackedup", @"mobile", *MEMORY[0x1E695E898]);
    v3 = CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)setHearstFirstPassModelVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (CSIsInternalBuild_onceToken != -1)
  {
    v6 = v3;
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
    v4 = v6;
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v5 = v4;
    CFPreferencesSetValue(@"Hearst First Pass Model Version", v4, @"com.apple.voicetrigger.notbackedup", @"mobile", *MEMORY[0x1E695E898]);
    v3 = CFPreferencesAppSynchronize(@"com.apple.voicetrigger.notbackedup");
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (float)overwritingRemoteVADScore
{
  if (overwritingRemoteVADScore_onceToken != -1)
  {
    dispatch_once(&overwritingRemoteVADScore_onceToken, &__block_literal_global_330);
  }

  return *&overwritingRemoteVADScore_overrideScore;
}

void __43__CSFPreferences_overwritingRemoteVADScore__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Overwrite Remote VAD Score", @"com.apple.voicetrigger");
  if (v0)
  {
    v2 = v0;
    [v0 floatValue];
    v0 = v2;
    overwritingRemoteVADScore_overrideScore = v1;
  }
}

- (BOOL)shouldOverwriteRemoteVADScore
{
  if (shouldOverwriteRemoteVADScore_onceToken != -1)
  {
    dispatch_once(&shouldOverwriteRemoteVADScore_onceToken, &__block_literal_global_325);
  }

  return shouldOverwriteRemoteVADScore_ret;
}

void __47__CSFPreferences_shouldOverwriteRemoteVADScore__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Overwrite Remote VAD Score", @"com.apple.voicetrigger");
  if (v0)
  {
    shouldOverwriteRemoteVADScore_ret = 1;
  }
}

- (BOOL)useSiriActivationSPIForwatchOS
{
  if (useSiriActivationSPIForwatchOS_onceToken != -1)
  {
    dispatch_once(&useSiriActivationSPIForwatchOS_onceToken, &__block_literal_global_320_8249);
  }

  return useSiriActivationSPIForwatchOS_ret;
}

void __48__CSFPreferences_useSiriActivationSPIForwatchOS__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable SiriActivation watchOS", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    useSiriActivationSPIForwatchOS_ret = [v0 BOOLValue];
    v0 = v1;
  }
}

- (BOOL)useSiriActivationSPIForHomePod
{
  if (useSiriActivationSPIForHomePod_onceToken != -1)
  {
    dispatch_once(&useSiriActivationSPIForHomePod_onceToken, &__block_literal_global_315);
  }

  return useSiriActivationSPIForHomePod_ret;
}

void __48__CSFPreferences_useSiriActivationSPIForHomePod__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Enable SiriActivation HomePod", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    useSiriActivationSPIForHomePod_ret = [v0 BOOLValue];
    v0 = v1;
  }
}

- (unint64_t)maxNumGradingFiles
{
  v2 = CFPreferencesCopyAppValue(@"Max Number Grading Files", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 50;
  }

  return v4;
}

- (unint64_t)maxNumLoggingFiles
{
  v2 = CFPreferencesCopyAppValue(@"Max Number Logging Files", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (int)adaptiveSiriVolumeRecentIntent
{
  v2 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Intent Type", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)adaptiveSiriVolumePermanentOffset
{
  v2 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Permanent Offset Factor", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (BOOL)isAdaptiveSiriVolumePermanentOffsetEnabled
{
  v2 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Permanent Offset Enabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAdaptiveSiriVolumeTemporaryIntentValid
{
  v2 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Intent Time", @"com.apple.voicetrigger");
  v3 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume State Intent Valid For Seconds", @"com.apple.voicetrigger");
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v11 = 0;
  if (!v5)
  {
    v6 = [v2 longLongValue];
    v7 = [v4 unsignedLongLongValue];
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSince1970];
    v10 = (v9 - v6);

    if (v7 > v10)
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)smartSiriVolumeContextAwareLoggingEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSFPreferences_smartSiriVolumeContextAwareLoggingEnabled__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  if (smartSiriVolumeContextAwareLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&smartSiriVolumeContextAwareLoggingEnabled_onceToken, block);
  }

  return smartSiriVolumeContextAwareLoggingEnabled_enabled;
}

void __59__CSFPreferences_smartSiriVolumeContextAwareLoggingEnabled__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) smartSiriVolumeContextAwareEnabled])
  {
    v1 = +[CSFPreferences sharedPreferences];
    v2 = [v1 fileLoggingIsEnabled];

    if (v2)
    {
      smartSiriVolumeContextAwareLoggingEnabled_enabled = 1;
    }
  }
}

- (BOOL)smartSiriVolumeSoftVolumeEnabled
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
    return 0;
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"SmartSiriVolume SoftVolume Enabled", @"com.apple.voicetrigger");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

- (unint64_t)speakerIdScoreReportingType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSFPreferences_speakerIdScoreReportingType__block_invoke;
  block[3] = &unk_1E865C120;
  block[4] = &v5;
  if (speakerIdScoreReportingType_onceToken != -1)
  {
    dispatch_once(&speakerIdScoreReportingType_onceToken, block);
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__CSFPreferences_speakerIdScoreReportingType__block_invoke(uint64_t a1)
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyAppValue(@"SpeakerId Score Type", @"com.apple.voicetrigger");
    if (v2)
    {
      v4 = v2;
      *(*(*(a1 + 32) + 8) + 24) = [v2 unsignedIntegerValue];
      v2 = v4;
      v3 = *(*(a1 + 32) + 8);
      if ((*(v3 + 24) - 4) <= 0xFFFFFFFFFFFFFFFCLL)
      {
        *(v3 + 24) = 3;
      }
    }
  }
}

- (BOOL)isSpeakerRecognitionAvailable
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 1;
  }

  v2 = CFPreferencesCopyAppValue(@"SpeakerId Enabled", @"com.apple.voicetrigger");
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

- (id)audioInjectionFilePath
{
  v12 = *MEMORY[0x1E69E9840];
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    goto LABEL_15;
  }

  v2 = CFPreferencesCopyAppValue(@"Audio Injection File Path", @"com.apple.voicetrigger");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSFPreferences audioInjectionFilePath]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s kCSAudioInjectionFilePathKey is not array type", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v2 = v2;
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 136315394;
    *&buf[4] = "[CSFPreferences audioInjectionFilePath]";
    *&buf[12] = 1024;
    *&buf[14] = [v2 count];
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s kCSAudioInjectionFilePathKey array size = %d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v11 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__CSFPreferences_audioInjectionFilePath__block_invoke;
  v9[3] = &unk_1E865B3D8;
  v9[4] = buf;
  [v2 enumerateObjectsUsingBlock:v9];
  if (v2)
  {
    v5 = *(*&buf[8] + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(buf, 8);

  if ((v5 & 1) == 0)
  {
LABEL_14:

LABEL_15:
    v2 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

void __40__CSFPreferences_audioInjectionFilePath__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSFPreferences audioInjectionFilePath]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s kCSAudioInjectionFilePathKey doesn't have NSString as an array entry", &v10, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setAudioInjectionFilePath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal)
  {
    _CSPreferencesSetValueForKey(v3, @"Audio Injection File Path");
    CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSFPreferences setAudioInjectionFilePath:]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s setAudioInjectionFilePath: is only available on internal builds", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)bundleAudioInjectionEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && bundleAudioInjectionEnabled_onceToken != -1)
  {
    dispatch_once(&bundleAudioInjectionEnabled_onceToken, &__block_literal_global_271);
  }

  return bundleAudioInjectionEnabled_enabled;
}

void __45__CSFPreferences_bundleAudioInjectionEnabled__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"Bundle Audio Injection Enabled", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    bundleAudioInjectionEnabled_enabled = [v0 BOOLValue];
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (bundleAudioInjectionEnabled_enabled)
    {
      v3 = @"YES";
    }

    v5 = 136315394;
    v6 = "[CSFPreferences bundleAudioInjectionEnabled]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s enabled: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)useSpeexForAudioInjection
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1 && useSpeexForAudioInjection_onceToken != -1)
  {
    dispatch_once(&useSpeexForAudioInjection_onceToken, &__block_literal_global_264);
  }

  return useSpeexForAudioInjection_enabled;
}

void __43__CSFPreferences_useSpeexForAudioInjection__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Speex Audio Injection Enabled", @"com.apple.voicetrigger");
  if (v0)
  {
    v1 = v0;
    useSpeexForAudioInjection_enabled = [v0 BOOLValue];
    v0 = v1;
  }
}

void __39__CSFPreferences_audioInjectionEnabled__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"Audio Injection Enabled", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    audioInjectionEnabled_enabled = [v0 BOOLValue];
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (audioInjectionEnabled_enabled)
    {
      v3 = @"YES";
    }

    v5 = 136315394;
    v6 = "[CSFPreferences audioInjectionEnabled]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s enabled: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)enableBenchmarkService:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__CSFPreferences_enableBenchmarkService___block_invoke;
    v8[3] = &unk_1E865B3B0;
    v8[4] = &buf;
    v9 = a3;
    if (enableBenchmarkService__onceToken != -1)
    {
      dispatch_once(&enableBenchmarkService__onceToken, v8);
    }

    v4 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    v4 = 0;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSFPreferences enableBenchmarkService:]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s benchmarkService: is only avaiable on internal builds", &buf, 0xCu);
      v4 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

void __41__CSFPreferences_enableBenchmarkService___block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"Enable Model Benchmarking", @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
  v4 = v2;
  if (v2)
  {
    LODWORD(v2) = [v2 BOOLValue];
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (*(a1 + 40) != v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
    _CSPreferencesSetValueForKeyFromRoot(v3, @"Enable Model Benchmarking");

    CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
  }
}

- (BOOL)myriadFileLoggingEnabled
{
  if (myriadFileLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&myriadFileLoggingEnabled_onceToken, &__block_literal_global_248);
  }

  return myriadFileLoggingEnabled_enabled;
}

void __42__CSFPreferences_myriadFileLoggingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Myriad File Logging Enabled", @"com.apple.voicetrigger");
    if (v0)
    {
      v1 = v0;
      myriadFileLoggingEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (id)interstitialAbsoluteDirForLevel:(int64_t)a3
{
  v5 = [(CSFPreferences *)self baseDir];
  v6 = [(CSFPreferences *)self interstitialRelativeDirForLevel:a3];
  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (id)interstitialRelativeDirForLevel:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", a3];
  v4 = [@"VoiceTrigger/interstitial" stringByAppendingPathComponent:v3];

  return v4;
}

- (double)remoteVoiceTriggerEndpointTimeoutWithDefault:(double)a3
{
  v4 = CFPreferencesCopyAppValue(@"Remote VoiceTrigger Endpoint Timeout", @"com.apple.voicetrigger");
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    a3 = v6;
  }

  return a3;
}

- (double)remoteVoiceTriggerDelayTime
{
  v2 = CFPreferencesCopyAppValue(@"Remote VoiceTrigger Delay", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)_isDirectory:(id)a3
{
  v7 = 0;
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  [v5 fileExistsAtPath:v4 isDirectory:&v7];

  return v7;
}

- (id)getStartOfSpeechAudioLogFilePath
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"Logs/CrashReporter/CoreSpeech/sos/"];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:0];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0;
    v8 = [v7 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v20];
    v6 = v20;

    if ((v8 & 1) == 0)
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v18 = v9;
        v19 = [v6 localizedDescription];
        *buf = 136315650;
        v22 = "[CSFPreferences getStartOfSpeechAudioLogFilePath]";
        v23 = 2114;
        v24 = v3;
        v25 = 2114;
        v26 = v19;
        _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, "%s Couldn't create SoS log directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v3 = @"/tmp";
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v10 setDateFormat:@"yyyyMMdd_HHmmss.SSS"];
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];

  v13 = &stru_1F58FE330;
  if (v12)
  {
    v13 = v12;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v3, v13];
  v15 = [v14 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)clearMyriadSettingsOnAccessory:(id)a3
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"Accessory Media Playback Interrupted Time";
  v8[1] = @"Accessory Media Playback Status";
  v8[2] = @"Accessory Alarm Playback Status";
  v8[3] = @"Accessory Timer Playback Status";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v8 count:4];
  [(CSFPreferences *)self _clearAccessorySettingForKeys:v6 forAccessory:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearTimerPlayingStatusOnAccessory:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"Accessory Timer Playback Status";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [(CSFPreferences *)self _clearAccessorySettingForKeys:v6 forAccessory:v5, v8, v9];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearAlarmPlayingStatusOnAccessory:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"Accessory Alarm Playback Status";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [(CSFPreferences *)self _clearAccessorySettingForKeys:v6 forAccessory:v5, v8, v9];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearMediaPlayingStatusOnAccessory:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"Accessory Media Playback Status";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [(CSFPreferences *)self _clearAccessorySettingForKeys:v6 forAccessory:v5, v8, v9];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearMediaPlaybackInterruptedTimeOnAccessory:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"Accessory Media Playback Interrupted Time";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [(CSFPreferences *)self _clearAccessorySettingForKeys:v6 forAccessory:v5, v8, v9];

  v7 = *MEMORY[0x1E69E9840];
}

- (double)getMediaPlaybackInterruptedTime:(id)a3
{
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(@"RemoraDevices", @"com.apple.voicetrigger");
  v5 = 0.0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v3)
      {
        v6 = [v4 objectForKey:v3];
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [v6 objectForKey:@"Accessory Media Playback Interrupted Time"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v7 doubleValue];
              v5 = v8;
            }
          }
        }
      }

      else
      {
        v6 = CFPreferencesCopyAppValue(@"Accessory Media Playback Interrupted Time", @"com.apple.voicetrigger");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 doubleValue];
          v5 = v9;
        }
      }
    }
  }

  return v5;
}

- (void)_clearAccessorySettingForKeys:(id)a3 forAccessory:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = CFPreferencesCopyAppValue(@"RemoraDevices", @"com.apple.voicetrigger");
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 mutableCopy];

      if (v6)
      {
        v10 = [v9 objectForKey:v6];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 mutableCopy];
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            v12 = v5;
            v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v19;
              do
              {
                v16 = 0;
                do
                {
                  if (*v19 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [v11 removeObjectForKey:{*(*(&v18 + 1) + 8 * v16++), v18}];
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
              }

              while (v14);
            }

            [v9 setObject:v11 forKey:v6];
            _CSPreferencesSetValueForKey(v9, @"RemoraDevices");
          }
        }
      }
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)getBooleanAccessorySettingValueForKey:(id)a3 forAccessory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CFPreferencesCopyAppValue(@"RemoraDevices", @"com.apple.voicetrigger");
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        v8 = [v7 objectForKey:v6];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 objectForKey:v5];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v9 BOOLValue];
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
        v8 = CFPreferencesCopyAppValue(v5, @"com.apple.voicetrigger");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v8 BOOLValue];
LABEL_14:

          goto LABEL_15;
        }
      }

      v10 = 0;
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

id __98__CSFPreferences_setMediaPlayingSettingForAccessory_isMediaPlaying_isInterrupted_interruptedTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [v3 setObject:v4 forKey:@"Accessory Media Playback Status"];

    if (*(a1 + 41) == 1)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
      [v3 setObject:v5 forKey:@"Accessory Media Playback Interrupted Time"];
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __70__CSFPreferences_setBooleanAccessorySettingValue_forKey_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [v3 setObject:v4 forKey:*(a1 + 32)];

    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updatePreferenceSettingsForAccessory:(id)a3 settingsUpdateBlock:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = CFPreferencesCopyAppValue(@"RemoraDevices", @"com.apple.voicetrigger");
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = v7;

  if (v13)
  {
    v9 = [v8 objectForKey:?];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v11 = v10;
    v12 = v5[2](v5, v10);
    if (v12)
    {
      [v8 setObject:v12 forKey:v13];
      _CSPreferencesSetValueForKey(v8, @"RemoraDevices");
    }
  }
}

- (BOOL)forceVoiceTriggerAOPMode
{
  if (forceVoiceTriggerAOPMode_onceToken != -1)
  {
    dispatch_once(&forceVoiceTriggerAOPMode_onceToken, &__block_literal_global_183_8325);
  }

  return forceVoiceTriggerAOPMode_result;
}

void __42__CSFPreferences_forceVoiceTriggerAOPMode__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Force VoiceTrigger AOP Mode", @"com.apple.voicetrigger");
    v1 = v0;
    if (v0)
    {
      forceVoiceTriggerAOPMode_result = [v0 BOOLValue];
    }

    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v3 = @"NO";
      if (forceVoiceTriggerAOPMode_result)
      {
        v3 = @"YES";
      }

      v5 = 136315394;
      v6 = "[CSFPreferences forceVoiceTriggerAOPMode]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Force enabling VoiceTrigger AOP mode ? %{public}@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)forceVoiceTriggerAPMode
{
  if (forceVoiceTriggerAPMode_onceToken != -1)
  {
    dispatch_once(&forceVoiceTriggerAPMode_onceToken, &__block_literal_global_178_8331);
  }

  return forceVoiceTriggerAPMode_result;
}

void __41__CSFPreferences_forceVoiceTriggerAPMode__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Force VoiceTrigger AP Mode", @"com.apple.voicetrigger");
    v1 = v0;
    if (v0)
    {
      forceVoiceTriggerAPMode_result = [v0 BOOLValue];
    }

    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v3 = @"NO";
      if (forceVoiceTriggerAPMode_result)
      {
        v3 = @"YES";
      }

      v5 = 136315394;
      v6 = "[CSFPreferences forceVoiceTriggerAPMode]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Force enabling VoiceTrigger AP mode ? %{public}@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __46__CSFPreferences_forceHearstHijackEligibility__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Force Hearst Hijack Eligibility", @"com.apple.voicetrigger");
    v1 = v0;
    if (v0)
    {
      forceHearstHijackEligibility_result = [v0 BOOLValue];
    }

    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v3 = @"NO";
      if (forceHearstHijackEligibility_result)
      {
        v3 = @"YES";
      }

      v5 = 136315394;
      v6 = "[CSFPreferences forceHearstHijackEligibility]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Force hearst hijack eligibility ? %{public}@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)startOfSpeechAudioLoggingEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"Enable SoS Audio Logging", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)getJarvisTriggerMode
{
  v2 = CFPreferencesCopyAppValue(@"Jarvis Trigger Mode", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setJarvisTriggerMode:(int64_t)a3
{
  v4 = 5;
  while (1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    _CSPreferencesSetValueForKey(v5, @"Jarvis Trigger Mode");

    CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
    v6 = CFPreferencesCopyAppValue(@"Jarvis Trigger Mode", @"com.apple.voicetrigger");
    v7 = v6;
    if (v6)
    {
      if ([v6 integerValue] == a3)
      {
        break;
      }
    }

    if (!--v4)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCSPreferencesJarvisTriggerModeDidChangeDarwinNotification", 0, 0, 1u);
}

- (BOOL)jarvisAudioLoggingEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"Jarvis Audio Logging Enabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)personalizedSiriEnrollmentAudioLoggingEnabledFromRoot
{
  if (personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_onceToken != -1)
  {
    dispatch_once(&personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_onceToken, &__block_literal_global_154);
  }

  return personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_audioLoggingEnabled;
}

void __71__CSFPreferences_personalizedSiriEnrollmentAudioLoggingEnabledFromRoot__block_invoke()
{
  v0 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.voicetrigger.notbackedup.plist"];
  if (v0)
  {
    v3 = v0;
    v1 = [v0 objectForKeyedSubscript:@"Personalized Siri Enrollment Audio Logging Enabled"];

    v0 = v3;
    if (v1)
    {
      v2 = [v3 objectForKeyedSubscript:@"Personalized Siri Enrollment Audio Logging Enabled"];
      personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_audioLoggingEnabled = [v2 BOOLValue];

      v0 = v3;
    }
  }
}

- (BOOL)personalizedSiriEnrollmentAudioLoggingEnabled
{
  if (personalizedSiriEnrollmentAudioLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&personalizedSiriEnrollmentAudioLoggingEnabled_onceToken, &__block_literal_global_149);
  }

  return personalizedSiriEnrollmentAudioLoggingEnabled_audioLoggingEnabled;
}

uint64_t __63__CSFPreferences_personalizedSiriEnrollmentAudioLoggingEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Personalized Siri Enrollment Audio Logging Enabled", @"com.apple.voicetrigger.notbackedup");
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v0 = [v0 BOOLValue];
    v1 = v3;
  }

  personalizedSiriEnrollmentAudioLoggingEnabled_audioLoggingEnabled = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)speakerRecognitionAudioLoggingEnabled
{
  if (speakerRecognitionAudioLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&speakerRecognitionAudioLoggingEnabled_onceToken, &__block_literal_global_144);
  }

  return speakerRecognitionAudioLoggingEnabled_speakerRecognitionAudioLogging;
}

void __55__CSFPreferences_speakerRecognitionAudioLoggingEnabled__block_invoke()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v0 = CFPreferencesCopyAppValue(@"Speaker Recognition Audio Logging Enabled", @"com.apple.voicetrigger");
    v1 = v0;
    if (v0)
    {
      v2 = v0;
      v0 = [v0 BOOLValue];
      v1 = v2;
    }

    speakerRecognitionAudioLoggingEnabled_speakerRecognitionAudioLogging = v0;

    MEMORY[0x1EEE66BB8](v0, v1);
  }

  else
  {
    speakerRecognitionAudioLoggingEnabled_speakerRecognitionAudioLogging = 0;
  }
}

- (BOOL)secondPassAudioLoggingEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"Second Pass Audio Logging Enabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)myriadHashFilePath
{
  v2 = [(CSFPreferences *)self myriadHashDirectory];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v6 = [v2 stringByAppendingPathComponent:@"siriBC"];

  return v6;
}

- (id)myriadHashDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"VoiceTrigger"];

  return v3;
}

- (id)assistantAudioFileLogDirectory
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(CSFPreferences *)self assistantLogDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"SpeechLogs"];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v12 = "[CSFPreferences assistantAudioFileLogDirectory]";
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Couldn't create speech log directory at path %{public}@ %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)assistantLogDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"/Logs/CrashReporter/Assistant/"];

  return v3;
}

- (id)trialBaseAssetDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"VoiceTrigger/TrialAssetData"];

  return v3;
}

- (id)getSSVLogFilePathWithSessionIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CSFPreferences *)self baseDir];
  v6 = [v5 stringByAppendingPathComponent:@"Logs/CrashReporter/Assistant/smartSiriVolumeContextAwareLogs/"];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6 isDirectory:0];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    v11 = [v10 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v18];
    v9 = v18;

    if ((v11 & 1) == 0)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v16 = v12;
        v17 = [v9 localizedDescription];
        *buf = 136315650;
        v20 = "[CSFPreferences getSSVLogFilePathWithSessionIdentifier:]";
        v21 = 2114;
        v22 = v6;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Couldn't create SSV log directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v6 = @"/tmp";
    }
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/SSV_%@.json", v6, v4];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)ssvLogDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"/Logs/CrashReporter/Assistant/smartSiriVolumeContextAwareLogs/"];

  return v3;
}

- (id)remoteGradingDataDirectory
{
  v2 = [(CSFPreferences *)self remoteP2pLogDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"RemoteGradingData/"];

  return v3;
}

- (id)remoteP2pLogDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"VoiceTrigger/RemoteP2PLogs/"];

  return v3;
}

- (id)mhLogDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"/Logs/CrashReporter/Assistant/MHLog/"];

  return v3;
}

- (id)getRPIAssistantAudioSamplingDateSubDirectory:(id)a3
{
  v4 = a3;
  v5 = +[CSUtils defaultDateFormatter];
  v6 = [v5 stringFromDate:v4];

  v7 = [(CSFPreferences *)self getRPIAssistantAudioSamplingDirectory];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

- (id)getRPIAssistantAudioSamplingDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [MEMORY[0x1E698D0E0] sampledSubDirectoryPath];
  v4 = [v2 stringByAppendingPathComponent:v3];

  v5 = [v4 stringByAppendingPathComponent:@"RPIAssistantSampledAudio"];

  return v5;
}

- (id)getOnDeviceCompilationCacheDirectoryForBenchmark
{
  v2 = [(CSFPreferences *)self _getCoreSpeechGroupContainerPath];
  v3 = [v2 stringByAppendingPathComponent:@"Caches/benchmarkTempOnDeviceCompilationCaches/Siri/"];

  return v3;
}

- (id)getLegacyOnDeviceCompilationCacheDirectory
{
  v2 = [(CSFPreferences *)self baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"Caches/CoreSpeech/"];

  return v3;
}

- (id)geckoAudioLogDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CSFPreferences_geckoAudioLogDirectory__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  if (geckoAudioLogDirectory_onceToken != -1)
  {
    dispatch_once(&geckoAudioLogDirectory_onceToken, block);
  }

  return geckoAudioLogDirectory_path;
}

void __40__CSFPreferences_geckoAudioLogDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) baseDir];
  v1 = [v3 stringByAppendingPathComponent:@"VoiceTrigger/nearmiss/audio/"];
  v2 = geckoAudioLogDirectory_path;
  geckoAudioLogDirectory_path = v1;
}

- (id)voiceTriggerAudioLogDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CSFPreferences_voiceTriggerAudioLogDirectory__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  if (voiceTriggerAudioLogDirectory_onceToken != -1)
  {
    dispatch_once(&voiceTriggerAudioLogDirectory_onceToken, block);
  }

  return voiceTriggerAudioLogDirectory_path;
}

void __47__CSFPreferences_voiceTriggerAudioLogDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) baseDir];
  v1 = [v3 stringByAppendingPathComponent:@"Logs/CrashReporter/VoiceTrigger/audio/"];
  v2 = voiceTriggerAudioLogDirectory_path;
  voiceTriggerAudioLogDirectory_path = v1;
}

- (id)baseDir
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = [@"/var/mobile" stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    v3 = CPSharedResourcesDirectory();
    v2 = [v3 stringByAppendingPathComponent:@"Library"];
  }

  return v2;
}

- (void)setFileLoggingLevel:(id)a3
{
  _CSPreferencesSetValueForKey(a3, @"File Logging Level");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (id)fileLoggingLevel
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v2 = CFPreferencesCopyAppValue(@"File Logging Level", @"com.apple.voicetrigger");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)disableAdaptiveSiriVolume:(id)a3
{
  _CSPreferencesSetValueForKey(a3, @"Adaptive Siri Volume Disabled");

  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (BOOL)_isAdaptiveSiriVolumeDisabled
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    goto LABEL_7;
  }

  if (CSIsHorsemanJunior_onceToken != -1)
  {
    dispatch_once(&CSIsHorsemanJunior_onceToken, &__block_literal_global_20);
  }

  if (CSIsHorsemanJunior_isHorsemanJunior != 1)
  {
    return 1;
  }

LABEL_7:
  v2 = CFPreferencesCopyAppValue(@"Adaptive Siri Volume Disabled", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)fileLoggingIsEnabled
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    goto LABEL_7;
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 0;
  }

LABEL_7:
  v3 = [(CSFPreferences *)self fileLoggingLevel];
  v4 = [v3 intValue] > 0;

  return v4;
}

- (void)setFileLoggingIsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = &unk_1F5916A00;
  }

  else
  {
    v3 = 0;
  }

  [(CSFPreferences *)self setFileLoggingLevel:v3];
}

- (BOOL)_storeModeEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.demo-settings");
  v2 = CFPreferencesCopyAppValue(@"StoreDemoMode", @"com.apple.demo-settings");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)getAttendingTimeoutConfig
{
  v12 = *MEMORY[0x1E69E9840];
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    v2 = 10.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = CFPreferencesCopyAppValue(@"Attending Timeout", @"com.apple.voicetrigger");
  if (v3)
  {
    if (CSIsInternalBuild_onceToken != -1)
    {
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      [v3 floatValue];
      v2 = v4;
    }
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSFPreferences getAttendingTimeoutConfig]";
    v10 = 2048;
    v11 = v2;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s attendingTimeout: %f", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)twoShotNotificationEnabled
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    return 1;
  }

  v2 = CFPreferencesCopyAppValue(@"Enable Two Shot Notification", @"com.apple.voicetrigger");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isDeferredAsrResultsEnabled
{
  if (isDeferredAsrResultsEnabled_onceToken != -1)
  {
    dispatch_once(&isDeferredAsrResultsEnabled_onceToken, &__block_literal_global_54);
  }

  return isDeferredAsrResultsEnabled_deferredASRResultsEnabled;
}

void __45__CSFPreferences_isDeferredAsrResultsEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Deferred ASR Delivery", @"com.apple.voicetrigger");
  if (v0)
  {
    if (CSIsInternalBuild_onceToken != -1)
    {
      v2 = v0;
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
      v0 = v2;
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      v1 = v0;
      isDeferredAsrResultsEnabled_deferredASRResultsEnabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (BOOL)isGazeSignalEnabled
{
  if (isGazeSignalEnabled_onceToken != -1)
  {
    dispatch_once(&isGazeSignalEnabled_onceToken, &__block_literal_global_49_8428);
  }

  return isGazeSignalEnabled_enableGaze;
}

void __37__CSFPreferences_isGazeSignalEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Gaze Signal Needed", @"com.apple.voicetrigger");
  if (v0)
  {
    if (CSIsInternalBuild_onceToken != -1)
    {
      v2 = v0;
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
      v0 = v2;
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      v1 = v0;
      isGazeSignalEnabled_enableGaze = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (BOOL)isGazeMandatory
{
  if (isGazeMandatory_onceToken != -1)
  {
    dispatch_once(&isGazeMandatory_onceToken, &__block_literal_global_44_8430);
  }

  return isGazeMandatory_gazeNeeded;
}

void __33__CSFPreferences_isGazeMandatory__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"Gaze Mandatory", @"com.apple.voicetrigger");
  if (v0)
  {
    if (CSIsInternalBuild_onceToken != -1)
    {
      v2 = v0;
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
      v0 = v2;
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      v1 = v0;
      isGazeMandatory_gazeNeeded = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (BOOL)isGazeSimlModelEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"Gaze SIML Model Enabled", @"com.apple.voicetrigger");
  if (!v2)
  {
    goto LABEL_6;
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
LABEL_6:
    v3 = 1;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSFPreferences isGazeSimlModelEnabled]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s enabled:%u", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isAttentiveSiriAudioLoggingEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (isAttentiveSiriAudioLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isAttentiveSiriAudioLoggingEnabled_onceToken, &__block_literal_global_36);
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSFPreferences isAttentiveSiriAudioLoggingEnabled]";
    v7 = 1024;
    v8 = isAttentiveSiriAudioLoggingEnabled_enabled;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s enabled:%u", &v5, 0x12u);
  }

  result = isAttentiveSiriAudioLoggingEnabled_enabled;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __52__CSFPreferences_isAttentiveSiriAudioLoggingEnabled__block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"AttentiveSiri AudioLogging Enabled", @"com.apple.voicetrigger");
  if (v0)
  {
    if (CSIsInternalBuild_onceToken != -1)
    {
      v2 = v0;
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
      v0 = v2;
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      v1 = v0;
      isAttentiveSiriAudioLoggingEnabled_enabled = [v0 BOOLValue];
      v0 = v1;
    }
  }
}

- (void)setVoiceTriggerEverUsed
{
  if (setVoiceTriggerEverUsed_onceToken != -1)
  {
    dispatch_once(&setVoiceTriggerEverUsed_onceToken, &__block_literal_global_30);
  }
}

uint64_t __41__CSFPreferences_setVoiceTriggerEverUsed__block_invoke()
{
  _CSPreferencesSetValueForKey(MEMORY[0x1E695E118], @"VoiceTriggerEverUsed");

  return CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
}

- (BOOL)phraseSpotterEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v3 = CFPreferencesCopyAppValue(@"Phrase Detector Enabled", @"com.apple.voicetrigger");
  v4 = v3;
  if (v3)
  {
    LOBYTE(v5) = [v3 BOOLValue];
  }

  else
  {
    v5 = ![(CSFPreferences *)self _storeModeEnabled];
  }

  return v5;
}

@end