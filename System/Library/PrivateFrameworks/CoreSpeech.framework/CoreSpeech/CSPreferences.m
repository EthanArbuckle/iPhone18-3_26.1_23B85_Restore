@interface CSPreferences
+ (id)sharedPreferences;
- (BOOL)fileLoggingIsEnabled;
- (BOOL)isAdaptiveSiriVolumePermanentOffsetEnabled;
- (BOOL)isAdaptiveSiriVolumeTemporaryIntentValid;
- (BOOL)isAttentiveSiriAudioLoggingEnabled;
- (BOOL)isAttentiveSiriEnabled;
- (BOOL)isFlexibleFollowupsSupported;
- (BOOL)isFlexibleFollowupsUserDisabled;
- (BOOL)isGazeMandatory;
- (BOOL)isGazeSignalEnabled;
- (BOOL)isGazeSimlModelEnabled;
- (BOOL)isPHSSupported;
- (BOOL)smartSiriVolumeContextAwareEnabled;
- (BOOL)twoShotNotificationEnabled;
- (BOOL)useSiriActivationSPIForHomePod;
- (BOOL)voiceTriggerEnabled;
- (float)adaptiveSiriVolumePermanentOffset;
- (float)getAttendingTimeoutConfig;
- (id)dateWhenVoiceTriggerRePrompted;
- (id)getStartOfSpeechAudioLogFilePath;
- (id)trialBaseAssetDirectory;
- (id)voiceTriggerAudioLogDirectory;
- (int)adaptiveSiriVolumeRecentIntent;
- (void)disableAdaptiveSiriVolume:(id)a3;
- (void)setAudioInjectionFilePath:(id)a3;
@end

@implementation CSPreferences

- (id)dateWhenVoiceTriggerRePrompted
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 dateWhenVoiceTriggerRePrompted];

  return v3;
}

- (BOOL)isFlexibleFollowupsSupported
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isFlexibleFollowupsSupported];

  return v3;
}

- (BOOL)isFlexibleFollowupsUserDisabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isFlexibleFollowupsUserDisabled];

  return v3;
}

- (int)adaptiveSiriVolumeRecentIntent
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 adaptiveSiriVolumeRecentIntent];

  return v3;
}

- (float)adaptiveSiriVolumePermanentOffset
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  [v2 adaptiveSiriVolumePermanentOffset];
  v4 = v3;

  return v4;
}

- (BOOL)isAdaptiveSiriVolumePermanentOffsetEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isAdaptiveSiriVolumePermanentOffsetEnabled];

  return v3;
}

- (BOOL)isAdaptiveSiriVolumeTemporaryIntentValid
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isAdaptiveSiriVolumeTemporaryIntentValid];

  return v3;
}

- (void)disableAdaptiveSiriVolume:(id)a3
{
  v3 = MEMORY[0x277D01788];
  v4 = a3;
  v5 = [v3 sharedPreferences];
  [v5 disableAdaptiveSiriVolume:v4];
}

- (BOOL)smartSiriVolumeContextAwareEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 smartSiriVolumeContextAwareEnabled];

  return v3;
}

- (id)trialBaseAssetDirectory
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 trialBaseAssetDirectory];

  return v3;
}

- (BOOL)useSiriActivationSPIForHomePod
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 useSiriActivationSPIForHomePod];

  return v3;
}

- (void)setAudioInjectionFilePath:(id)a3
{
  v3 = MEMORY[0x277D01788];
  v4 = a3;
  v5 = [v3 sharedPreferences];
  [v5 setAudioInjectionFilePath:v4];
}

- (id)getStartOfSpeechAudioLogFilePath
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 getStartOfSpeechAudioLogFilePath];

  return v3;
}

- (BOOL)twoShotNotificationEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 twoShotNotificationEnabled];

  return v3;
}

- (float)getAttendingTimeoutConfig
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  [v2 getAttendingTimeoutConfig];
  v4 = v3;

  return v4;
}

- (BOOL)isGazeSignalEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isGazeSignalEnabled];

  return v3;
}

- (BOOL)isGazeMandatory
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isGazeMandatory];

  return v3;
}

- (BOOL)isGazeSimlModelEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isGazeSimlModelEnabled];

  return v3;
}

- (BOOL)isAttentiveSiriAudioLoggingEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isAttentiveSiriAudioLoggingEnabled];

  return v3;
}

- (BOOL)isAttentiveSiriEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isAttentiveSiriEnabled];

  return v3;
}

- (BOOL)isPHSSupported
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isPHSSupported];

  return v3;
}

- (BOOL)voiceTriggerEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  return v3;
}

- (id)voiceTriggerAudioLogDirectory
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 voiceTriggerAudioLogDirectory];

  return v3;
}

- (BOOL)fileLoggingIsEnabled
{
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 fileLoggingIsEnabled];

  return v3;
}

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    dispatch_once(&sharedPreferences_onceToken, &__block_literal_global_19736);
  }

  v3 = sharedPreferences_sSharedPreferences;

  return v3;
}

void __34__CSPreferences_sharedPreferences__block_invoke()
{
  v0 = objc_alloc_init(CSPreferences);
  v1 = sharedPreferences_sSharedPreferences;
  sharedPreferences_sSharedPreferences = v0;
}

@end