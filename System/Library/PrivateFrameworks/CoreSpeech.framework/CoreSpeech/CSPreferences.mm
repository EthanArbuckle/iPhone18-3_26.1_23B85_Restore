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
- (void)disableAdaptiveSiriVolume:(id)volume;
- (void)setAudioInjectionFilePath:(id)path;
@end

@implementation CSPreferences

- (id)dateWhenVoiceTriggerRePrompted
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  dateWhenVoiceTriggerRePrompted = [mEMORY[0x277D01788] dateWhenVoiceTriggerRePrompted];

  return dateWhenVoiceTriggerRePrompted;
}

- (BOOL)isFlexibleFollowupsSupported
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isFlexibleFollowupsSupported = [mEMORY[0x277D01788] isFlexibleFollowupsSupported];

  return isFlexibleFollowupsSupported;
}

- (BOOL)isFlexibleFollowupsUserDisabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isFlexibleFollowupsUserDisabled = [mEMORY[0x277D01788] isFlexibleFollowupsUserDisabled];

  return isFlexibleFollowupsUserDisabled;
}

- (int)adaptiveSiriVolumeRecentIntent
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  adaptiveSiriVolumeRecentIntent = [mEMORY[0x277D01788] adaptiveSiriVolumeRecentIntent];

  return adaptiveSiriVolumeRecentIntent;
}

- (float)adaptiveSiriVolumePermanentOffset
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  [mEMORY[0x277D01788] adaptiveSiriVolumePermanentOffset];
  v4 = v3;

  return v4;
}

- (BOOL)isAdaptiveSiriVolumePermanentOffsetEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isAdaptiveSiriVolumePermanentOffsetEnabled = [mEMORY[0x277D01788] isAdaptiveSiriVolumePermanentOffsetEnabled];

  return isAdaptiveSiriVolumePermanentOffsetEnabled;
}

- (BOOL)isAdaptiveSiriVolumeTemporaryIntentValid
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isAdaptiveSiriVolumeTemporaryIntentValid = [mEMORY[0x277D01788] isAdaptiveSiriVolumeTemporaryIntentValid];

  return isAdaptiveSiriVolumeTemporaryIntentValid;
}

- (void)disableAdaptiveSiriVolume:(id)volume
{
  v3 = MEMORY[0x277D01788];
  volumeCopy = volume;
  sharedPreferences = [v3 sharedPreferences];
  [sharedPreferences disableAdaptiveSiriVolume:volumeCopy];
}

- (BOOL)smartSiriVolumeContextAwareEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  smartSiriVolumeContextAwareEnabled = [mEMORY[0x277D01788] smartSiriVolumeContextAwareEnabled];

  return smartSiriVolumeContextAwareEnabled;
}

- (id)trialBaseAssetDirectory
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  trialBaseAssetDirectory = [mEMORY[0x277D01788] trialBaseAssetDirectory];

  return trialBaseAssetDirectory;
}

- (BOOL)useSiriActivationSPIForHomePod
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  useSiriActivationSPIForHomePod = [mEMORY[0x277D01788] useSiriActivationSPIForHomePod];

  return useSiriActivationSPIForHomePod;
}

- (void)setAudioInjectionFilePath:(id)path
{
  v3 = MEMORY[0x277D01788];
  pathCopy = path;
  sharedPreferences = [v3 sharedPreferences];
  [sharedPreferences setAudioInjectionFilePath:pathCopy];
}

- (id)getStartOfSpeechAudioLogFilePath
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  getStartOfSpeechAudioLogFilePath = [mEMORY[0x277D01788] getStartOfSpeechAudioLogFilePath];

  return getStartOfSpeechAudioLogFilePath;
}

- (BOOL)twoShotNotificationEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  twoShotNotificationEnabled = [mEMORY[0x277D01788] twoShotNotificationEnabled];

  return twoShotNotificationEnabled;
}

- (float)getAttendingTimeoutConfig
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  [mEMORY[0x277D01788] getAttendingTimeoutConfig];
  v4 = v3;

  return v4;
}

- (BOOL)isGazeSignalEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isGazeSignalEnabled = [mEMORY[0x277D01788] isGazeSignalEnabled];

  return isGazeSignalEnabled;
}

- (BOOL)isGazeMandatory
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isGazeMandatory = [mEMORY[0x277D01788] isGazeMandatory];

  return isGazeMandatory;
}

- (BOOL)isGazeSimlModelEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isGazeSimlModelEnabled = [mEMORY[0x277D01788] isGazeSimlModelEnabled];

  return isGazeSimlModelEnabled;
}

- (BOOL)isAttentiveSiriAudioLoggingEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isAttentiveSiriAudioLoggingEnabled = [mEMORY[0x277D01788] isAttentiveSiriAudioLoggingEnabled];

  return isAttentiveSiriAudioLoggingEnabled;
}

- (BOOL)isAttentiveSiriEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isAttentiveSiriEnabled = [mEMORY[0x277D01788] isAttentiveSiriEnabled];

  return isAttentiveSiriEnabled;
}

- (BOOL)isPHSSupported
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isPHSSupported = [mEMORY[0x277D01788] isPHSSupported];

  return isPHSSupported;
}

- (BOOL)voiceTriggerEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D01788] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (id)voiceTriggerAudioLogDirectory
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  voiceTriggerAudioLogDirectory = [mEMORY[0x277D01788] voiceTriggerAudioLogDirectory];

  return voiceTriggerAudioLogDirectory;
}

- (BOOL)fileLoggingIsEnabled
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  fileLoggingIsEnabled = [mEMORY[0x277D01788] fileLoggingIsEnabled];

  return fileLoggingIsEnabled;
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