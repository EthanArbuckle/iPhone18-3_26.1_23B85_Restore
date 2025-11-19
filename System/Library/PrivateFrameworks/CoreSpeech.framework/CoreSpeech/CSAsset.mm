@interface CSAsset
+ (BOOL)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)a3 engineMinorVersion:(id)a4 accessoryRTModelType:(id)a5;
+ (unint64_t)getSSVDeviceType;
+ (unsigned)SSVDefaultDistanceChannelCount;
+ (unsigned)SSVDefaultLKFSChannelCount;
+ (unsigned)SSVDefaultNoiseChannelCount;
- (BOOL)_allowMultiPhrase:(id)a3 forceSkipEngineVersionCheck:(BOOL)a4;
- (BOOL)containsMultiUserThresholds;
- (BOOL)satImplicitTrainingEnabled;
- (BOOL)useSpeakerRecognitionAsset;
- (NSDictionary)SSVParameterDirectionary;
- (NSString)keywordDetectorConfigPathRecognizer;
- (NSString)keywordDetectorNDAPIConfigFilePath;
- (NSString)keywordDetectorQuasarConfigFilePath;
- (double)SSVCADistanceModelConfidenceThreshold;
- (float)SSVCADBToTTSMaximumOutput;
- (float)SSVCADBToTTSMinimumOutput;
- (float)SSVCADBToTTSPostTransitionDC;
- (float)SSVCADBToTTSPostTransitionMultiplier;
- (float)SSVCADBToTTSPostTransitionOffset;
- (float)SSVCADBToTTSPreTransitionMultiplier;
- (float)SSVCADBToTTSPreTransitionOffset;
- (float)SSVCADBToTTSTransitionPoint;
- (float)SSVCADecibelToLinearLogBase;
- (float)SSVCADefaultMusicStrength;
- (float)SSVCADefaultOutputTTSVolume;
- (float)SSVCADefaultSpeechStrength;
- (float)SSVCADefaultZeroFloatingPointValue;
- (float)SSVCADeviceDefaultASVOffMinTTSVolume;
- (float)SSVCADeviceDefaultMaxTTSVolume;
- (float)SSVCADeviceDefaultMicSensitivityOffset;
- (float)SSVCADeviceDefaultMinTTSVolume;
- (float)SSVCADeviceSimpleASVOffMinTTSVolume;
- (float)SSVCADeviceSimpleDBToSystemVolSlope;
- (float)SSVCADeviceSimpleMaxTTSVolume;
- (float)SSVCADeviceSimpleMaxTargetDB;
- (float)SSVCADeviceSimpleMicSensitivityOffset;
- (float)SSVCADeviceSimpleMinTTSVolume;
- (float)SSVCADeviceSimpleMinTargetDB;
- (float)SSVCADeviceSimpleOutputMaxTargetDB;
- (float)SSVCADeviceSimpleOutputMinTargetDB;
- (float)SSVCADeviceSimpleOutputSlope;
- (float)SSVCADropInCallAnnouncementMinTTSVolume;
- (float)SSVCAExponentialDistanceHistoryDegradationFactor;
- (float)SSVCALinearToDecibelConstantMultiplier;
- (float)SSVCAListenPollingIntervalAtStartInSeconds;
- (float)SSVCAMaxTTSSystemVolume;
- (float)SSVCAMaximumCompensatedSpeechLevelNearField;
- (float)SSVCAMaximumLinearSoundLevel;
- (float)SSVCAMinTTSSystemVolume;
- (float)SSVCAMinimumDistanceUpdateWaitPeriodSeconds;
- (float)SSVCAMinimumLinearSoundLevel;
- (float)SSVCAMusicHistoricalSamplesInSeconds;
- (float)SSVCANoiseActivityThreshold;
- (float)SSVCASignalToSigmoidMusicDilationFactorDeviceDefault;
- (float)SSVCASignalToSigmoidMusicDilationFactorDeviceSimple;
- (float)SSVCASignalToSigmoidMusicHOffsetDeviceDefault;
- (float)SSVCASignalToSigmoidMusicHOffsetDeviceSimple;
- (float)SSVCASignalToSigmoidMusicSteepnessDeviceDefault;
- (float)SSVCASignalToSigmoidMusicSteepnessDeviceSimple;
- (float)SSVCASignalToSigmoidMusicVOffsetDeviceDefault;
- (float)SSVCASignalToSigmoidMusicVOffsetDeviceSimple;
- (float)SSVCASignalToSigmoidMusicVSpreadDeviceDefault;
- (float)SSVCASignalToSigmoidMusicVSpreadDeviceSimple;
- (float)SSVCASignalToSigmoidNoiseDilationFactor;
- (float)SSVCASignalToSigmoidNoiseHOffset;
- (float)SSVCASignalToSigmoidNoiseSteepness;
- (float)SSVCASignalToSigmoidNoiseVOffset;
- (float)SSVCASignalToSigmoidNoiseVSpread;
- (float)SSVCASignalToSigmoidSpeechDilationFactor;
- (float)SSVCASignalToSigmoidSpeechHOffset;
- (float)SSVCASignalToSigmoidSpeechSteepness;
- (float)SSVCASignalToSigmoidSpeechVOffset;
- (float)SSVCASignalToSigmoidSpeechVSpread;
- (float)SSVCASpeakerDistanceFarBoostFactor;
- (float)SSVCASpeakerDistanceMidBoostFactor;
- (float)SSVCASpeakerDistanceNearBoostFactor;
- (float)SSVCAUserIntentPermanentOffsetFactorDelta;
- (float)SSVCAUserIntentPermanentOffsetFactorLowerBound;
- (float)SSVCAUserIntentPermanentOffsetFactorUpperBound;
- (float)SSVCAUserIntentVolumeDecreaseFactor;
- (float)SSVCAUserIntentVolumeIncreaseFactor;
- (float)SSVCAVoiceTriggerBasedTTSValidForSeconds;
- (float)SSVCAVoiceTriggerInitialSilenceDurationSeconds;
- (float)SSVCAVolumeHalfLifeSeconds;
- (float)SSVLKFSMicSensitivityOffset;
- (float)SSVLKFSTTSMappingInputRangeHigh;
- (float)SSVLKFSTTSMappingInputRangeLow;
- (float)SSVLKFSTTSMappingOutputRangeHigh;
- (float)SSVLKFSTTSMappingOutputRangeLow;
- (float)SSVLKFSTimeConstant;
- (float)SSVNoiseMicSensitivityOffset;
- (float)SSVNoiseMicSensitivityOffsetDeviceSimple;
- (float)SSVNoiseTTSMappingInputRangeHigh;
- (float)SSVNoiseTTSMappingInputRangeLow;
- (float)SSVNoiseTTSMappingOutputRangeHigh;
- (float)SSVNoiseTTSMappingOutputRangeLow;
- (float)SSVNoiseTimeConstant;
- (float)SSVNoiseWeight;
- (float)SSVTTSVolumeLowerLimitDB;
- (float)SSVTTSVolumeUpperLimitDB;
- (float)SSVUserOffsetInputRangeHigh;
- (float)SSVUserOffsetInputRangeLow;
- (float)SSVUserOffsetOutputRangeHigh;
- (float)SSVUserOffsetOutputRangeLow;
- (float)keywordDetectorThreshold;
- (float)keywordDetectorWaitTimeSinceVT;
- (float)pruningExplicitUttThresholdPSR;
- (float)pruningExplicitUttThresholdSAT;
- (float)pruningThresholdPSR;
- (float)pruningThresholdSAT;
- (float)psrCombinationWeight;
- (float)satImplicitProfileDeltaThreshold;
- (float)satImplicitProfileThreshold;
- (float)satScoreThreshold;
- (float)satScoreThresholdForPhId:(unint64_t)a3;
- (float)satVTImplicitThreshold;
- (id)RTModelWithFallbackLanguage:(id)a3;
- (id)_adaptiveSiriVolumeDictionary;
- (id)_buildRTModelWithBlobConfig:(id)a3 requestOptions:(id)a4;
- (id)_getNumberFromASVDictionaryForKey:(id)a3 category:(id)a4 default:(id)a5;
- (id)_rtModelWithRequestOptions:(id)a3 accessoryBlobs:(id)a4;
- (id)_splitBlobsByPhraseType:(id)a3;
- (id)_userSelectedPhraseTypeToRTModelPhraseType:(id)a3;
- (id)createRTModelWithLocale:(id)a3;
- (id)getPhraseConfig:(unint64_t)a3;
- (id)latestHearstRTModelWithRequestOptions:(id)a3;
- (id)localeMapWithName:(id)a3;
- (id)rtModelLocaleMapWithModelType:(int64_t)a3;
- (id)rtModelWithRequestOptions:(id)a3;
- (int)SSVCADistanceInputBufferDurationSeconds;
- (int)SSVCANoiseActivityCountThreshold;
- (int)SSVCASmartSiriVolumeSyncedMetricLogsToRetain;
- (int)SSVCASmartSiriVolumeUnsyncedMetricLogsToRetain;
- (int64_t)multiUserConfidentScoreThreshold;
- (int64_t)multiUserConfidentScoreThresholdForPhId:(unint64_t)a3;
- (int64_t)multiUserDeltaScoreThreshold;
- (int64_t)multiUserDeltaScoreThresholdForPhId:(unint64_t)a3;
- (int64_t)multiUserHighScoreThreshold;
- (int64_t)multiUserHighScoreThresholdForPhId:(unint64_t)a3;
- (int64_t)multiUserLowScoreThreshold;
- (int64_t)multiUserLowScoreThresholdForPhId:(unint64_t)a3;
- (unint64_t)SSVCADeviceSimplePreTriggerSilenceSampleCount;
- (unint64_t)SSVCADistanceResultSampleCountTolerance;
- (unint64_t)SSVCADistanceResultsBufferSize;
- (unint64_t)SSVCADspCoefsCount;
- (unint64_t)SSVCADspNumStages;
- (unint64_t)SSVCAHistoricalVolumeBufferSize;
- (unint64_t)SSVCAMusicResultsBufferSize;
- (unint64_t)SSVCANoiseActivityHistoricalSampleCount;
- (unint64_t)SSVCANoiseResultsBufferSize;
- (unint64_t)SSVCAUserIntentValidForSeconds;
- (unint64_t)SSVDistanceChannelBitset;
- (unint64_t)SSVLKFSChannelBitset;
- (unint64_t)SSVNoiseLevelChannelBitset;
- (unint64_t)maxAllowedEnrollmentUtterances;
- (unint64_t)pruningNumRetentionUtterance;
- (unsigned)SSVCAAnnouncementStatusFetchTimeoutMs;
- (unsigned)SSVCAMaxFrameSize;
- (unsigned)SSVEnergyBufferSize;
- (unsigned)SSVLKFSLowerPercentile;
- (unsigned)SSVLKFSUpperPercentile;
- (unsigned)SSVNoiseLowerPercentile;
- (unsigned)SSVNoiseUpperPercentile;
@end

@implementation CSAsset

- (NSDictionary)SSVParameterDirectionary
{
  v32[0] = @"noiseLevelChannelBitset";
  v31 = [NSNumber numberWithUnsignedLongLong:[(CSAsset *)self SSVNoiseLevelChannelBitset]];
  v33[0] = v31;
  v32[1] = @"LKFSChannelBitset";
  v30 = [NSNumber numberWithUnsignedLongLong:[(CSAsset *)self SSVLKFSChannelBitset]];
  v33[1] = v30;
  v32[2] = @"energyBufferSize";
  v29 = [NSNumber numberWithUnsignedInt:[(CSAsset *)self SSVEnergyBufferSize]];
  v33[2] = v29;
  v32[3] = @"noiseLowerPercentile";
  v28 = [NSNumber numberWithUnsignedInt:[(CSAsset *)self SSVNoiseLowerPercentile]];
  v33[3] = v28;
  v32[4] = @"noiseUpperPercentile";
  v27 = [NSNumber numberWithUnsignedInt:[(CSAsset *)self SSVNoiseUpperPercentile]];
  v33[4] = v27;
  v32[5] = @"LKFSLowerPercentile";
  v26 = [NSNumber numberWithUnsignedInt:[(CSAsset *)self SSVLKFSLowerPercentile]];
  v33[5] = v26;
  v32[6] = @"LKFSUpperPercentile";
  v25 = [NSNumber numberWithUnsignedInt:[(CSAsset *)self SSVLKFSUpperPercentile]];
  v33[6] = v25;
  v32[7] = @"noiseTimeConstant";
  [(CSAsset *)self SSVNoiseTimeConstant];
  v24 = [NSNumber numberWithFloat:?];
  v33[7] = v24;
  v32[8] = @"noiseMicSensitivityOffset";
  [(CSAsset *)self SSVNoiseMicSensitivityOffset];
  v23 = [NSNumber numberWithFloat:?];
  v33[8] = v23;
  v32[9] = @"LKFSTimeConstant";
  [(CSAsset *)self SSVLKFSTimeConstant];
  v22 = [NSNumber numberWithFloat:?];
  v33[9] = v22;
  v32[10] = @"LKFSMicSensitivityOffset";
  [(CSAsset *)self SSVLKFSMicSensitivityOffset];
  v21 = [NSNumber numberWithFloat:?];
  v33[10] = v21;
  v32[11] = @"noiseTTSMappingInputRangeLow";
  [(CSAsset *)self SSVNoiseTTSMappingInputRangeLow];
  v20 = [NSNumber numberWithFloat:?];
  v33[11] = v20;
  v32[12] = @"noiseTTSMappingInputRangeHigh";
  [(CSAsset *)self SSVNoiseTTSMappingInputRangeHigh];
  v19 = [NSNumber numberWithFloat:?];
  v33[12] = v19;
  v32[13] = @"noiseTTSMappingOutputRangeLow";
  [(CSAsset *)self SSVNoiseTTSMappingOutputRangeLow];
  v18 = [NSNumber numberWithFloat:?];
  v33[13] = v18;
  v32[14] = @"noiseTTSMappingOutputRangeHigh";
  [(CSAsset *)self SSVNoiseTTSMappingOutputRangeHigh];
  v17 = [NSNumber numberWithFloat:?];
  v33[14] = v17;
  v32[15] = @"LKFSTTSMappingInputRangeLow";
  [(CSAsset *)self SSVLKFSTTSMappingInputRangeLow];
  v16 = [NSNumber numberWithFloat:?];
  v33[15] = v16;
  v32[16] = @"LKFSTTSMappingInputRangeHigh";
  [(CSAsset *)self SSVLKFSTTSMappingInputRangeHigh];
  v15 = [NSNumber numberWithFloat:?];
  v33[16] = v15;
  v32[17] = @"LKFSTTSMappingOutputRangeLow";
  [(CSAsset *)self SSVLKFSTTSMappingOutputRangeLow];
  v14 = [NSNumber numberWithFloat:?];
  v33[17] = v14;
  v32[18] = @"LKFSTTSMappingOutputRangeHigh";
  [(CSAsset *)self SSVLKFSTTSMappingOutputRangeHigh];
  v3 = [NSNumber numberWithFloat:?];
  v33[18] = v3;
  v32[19] = @"userOffsetInputRangeLow";
  [(CSAsset *)self SSVUserOffsetInputRangeLow];
  v4 = [NSNumber numberWithFloat:?];
  v33[19] = v4;
  v32[20] = @"userOffsetInputRangeHigh";
  [(CSAsset *)self SSVUserOffsetInputRangeHigh];
  v5 = [NSNumber numberWithFloat:?];
  v33[20] = v5;
  v32[21] = @"userOffsetOutputRangeLow";
  [(CSAsset *)self SSVUserOffsetOutputRangeLow];
  v6 = [NSNumber numberWithFloat:?];
  v33[21] = v6;
  v32[22] = @"userOffsetOutputRangeHigh";
  [(CSAsset *)self SSVUserOffsetOutputRangeHigh];
  v7 = [NSNumber numberWithFloat:?];
  v33[22] = v7;
  v32[23] = @"TTSVolumeLowerLimitDB";
  [(CSAsset *)self SSVTTSVolumeLowerLimitDB];
  v8 = [NSNumber numberWithFloat:?];
  v33[23] = v8;
  v32[24] = @"TTSVolumeUpperLimitDB";
  [(CSAsset *)self SSVTTSVolumeUpperLimitDB];
  v9 = [NSNumber numberWithFloat:?];
  v33[24] = v9;
  v32[25] = @"noiseWeight";
  [(CSAsset *)self SSVNoiseWeight];
  v10 = [NSNumber numberWithFloat:?];
  v33[25] = v10;
  v32[26] = @"DistanceChannelBitset";
  v11 = [NSNumber numberWithUnsignedLongLong:[(CSAsset *)self SSVDistanceChannelBitset]];
  v33[26] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:27];

  return v12;
}

- (id)_getNumberFromASVDictionaryForKey:(id)a3 category:(id)a4 default:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSAsset *)self _adaptiveSiriVolumeDictionary];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  v13 = [v11 objectForKeyedSubscript:v9];
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  v15 = [v12 objectForKeyedSubscript:v9];
  v16 = [v15 objectForKeyedSubscript:v8];

  if (v16)
  {
    v17 = [v12 objectForKeyedSubscript:v9];
    v18 = [v17 objectForKeyedSubscript:v8];
  }

  else
  {
LABEL_5:
    v19 = CSLogCategoryASV;
    v18 = v10;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = "[CSAsset(SmartSiriVolume) _getNumberFromASVDictionaryForKey:category:default:]";
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v8;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Cannot access to %{public}@ %{public}@ using default value=%{public}@", &v21, 0x2Au);
      v18 = v10;
    }
  }

  return v18;
}

- (float)SSVCADropInCallAnnouncementMinTTSVolume
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v4 = @"SSVCADeviceSimpleDropInCallAnnouncementMinTTSVolume";
    v5 = &off_10025F540;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = @"SSVCADeviceDefaultDropInCallAnnouncementMinTTSVolume";
    }

    else
    {
      v4 = @"SSVCADeviceSimple2DropInCallAnnouncementMinTTSVolume";
    }

    v5 = &off_10025F4D0;
  }

  v6 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v4 category:@"smartSiriVolume" default:v5];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (float)SSVCAMaximumCompensatedSpeechLevelNearField
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMaximumCompensatedSpeechLevelNearField" category:@"smartSiriVolume" default:&off_10025F530];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)SSVCAHistoricalVolumeBufferSize
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAHistoricalVolumeBufferSize" category:@"smartSiriVolume" default:&off_10025E048];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCAVolumeHalfLifeSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAVolumeHalfLifeSeconds" category:@"smartSiriVolume" default:&off_10025F520];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceDefaultMicSensitivityOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceDefaultMicSensitivityOffset" category:@"smartSiriVolume" default:&off_10025F150];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceSimpleASVOffMinTTSVolume
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v6 = @"SSVCADeviceSimpleASVOffMinTTSVolume";
    v7 = &off_10025F500;
LABEL_8:
    v8 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v6 category:@"smartSiriVolume" default:v7];
    [v8 floatValue];
    v10 = v9;

    return v10;
  }

  if (v3 != 1)
  {
    v6 = @"SSVCADeviceSimple2ASVOffMinTTSVolume";
    v7 = &off_10025F510;
    goto LABEL_8;
  }

  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "[CSAsset(SmartSiriVolume) SSVCADeviceSimpleASVOffMinTTSVolume]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Minimum TTS volume for ASV disabled case requested for device default!", &v11, 0xCu);
  }

  return 0.15;
}

- (float)SSVCADeviceDefaultASVOffMinTTSVolume
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceDefaultASVOffMinTTSVolume" category:@"smartSiriVolume" default:&off_10025F4F0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceDefaultMaxTTSVolume
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMaxTTSSystemVolumeSimple2" category:@"smartSiriVolume" default:&off_10025F480];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceDefaultMinTTSVolume
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMinTTSSystemVolumeSimple2" category:@"smartSiriVolume" default:&off_10025F390];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceSimpleMaxTTSVolume
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCADeviceSimpleMaxTTSVolume";
    v4 = &off_10025F4E0;
  }

  else
  {
    v3 = @"SSVCAMaxTTSSystemVolumeSimple2";
    v4 = &off_10025F480;
  }

  v5 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (float)SSVCADeviceSimpleMinTTSVolume
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCADeviceSimpleMinTTSVolume";
    v4 = &off_10025F4D0;
  }

  else
  {
    v3 = @"SSVCAMinTTSSystemVolumeSimple2";
    v4 = &off_10025F390;
  }

  v5 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (float)SSVCAUserIntentPermanentOffsetFactorUpperBound
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentPermanentOffsetFactorUpperBound" category:@"smartSiriVolume" default:&off_10025F280];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAUserIntentPermanentOffsetFactorLowerBound
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentPermanentOffsetFactorLowerBound" category:@"smartSiriVolume" default:&off_10025F4C0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAUserIntentPermanentOffsetFactorDelta
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentPermanentOffsetFactorDelta" category:@"smartSiriVolume" default:&off_10025F4B0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAUserIntentVolumeDecreaseFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentVolumeDecreaseFactor" category:@"smartSiriVolume" default:&off_10025F4A0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAUserIntentVolumeIncreaseFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentVolumeIncreaseFactor" category:@"smartSiriVolume" default:&off_10025F490];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)SSVCAUserIntentValidForSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentValidForSeconds" category:@"smartSiriVolume" default:&off_10025E030];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCAMaxTTSSystemVolume
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCAMaxTTSSystemVolume";
    v4 = &off_10025F240;
  }

  else
  {
    v3 = @"SSVCAMaxTTSSystemVolumeSimple2";
    v4 = &off_10025F480;
  }

  v5 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (float)SSVCAMinTTSSystemVolume
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCAMinTTSSystemVolume";
    v4 = &off_10025F150;
  }

  else
  {
    v3 = @"SSVCAMinTTSSystemVolumeSimple2";
    v4 = &off_10025F390;
  }

  v5 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (unint64_t)SSVCADeviceSimplePreTriggerSilenceSampleCount
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimplePreTriggerSilenceSampleCount" category:@"smartSiriVolume" default:&off_10025E018];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCADeviceSimpleMicSensitivityOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleMicSensitivityOffset" category:@"smartSiriVolume" default:&off_10025F110];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceSimpleDBToSystemVolSlope
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleDBToSystemVolSlope" category:@"smartSiriVolume" default:&off_10025F470];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceSimpleMaxTargetDB
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleMaxTargetDB" category:@"smartSiriVolume" default:&off_10025F150];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceSimpleMinTargetDB
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleMinTargetDB" category:@"smartSiriVolume" default:&off_10025F1E0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADeviceSimpleOutputSlope
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCADeviceSimpleOutputSlope";
    v4 = &off_10025F450;
  }

  else
  {
    v3 = @"SSVCADeviceSimple2OutputSlope";
    v4 = &off_10025F460;
  }

  v5 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (float)SSVCADeviceSimpleOutputMaxTargetDB
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCADeviceSimpleOutputMaxTargetDB";
  }

  else
  {
    v3 = @"SSVCADeviceSimple2OutputMaxTargetDB";
  }

  v4 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:&off_10025F150];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)SSVCADeviceSimpleOutputMinTargetDB
{
  if (+[CSUtils horsemanDeviceType]== 2)
  {
    v3 = @"SSVCADeviceSimpleOutputMinTargetDB";
    v4 = &off_10025F430;
  }

  else
  {
    v3 = @"SSVCADeviceSimple2OutputMinTargetDB";
    v4 = &off_10025F440;
  }

  v5 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (float)SSVCAMusicHistoricalSamplesInSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMusicHistoricalSamplesInSeconds" category:@"smartSiriVolume" default:&off_10025F230];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)SSVCADistanceResultSampleCountTolerance
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADistanceResultSampleCountTolerance" category:@"smartSiriVolume" default:&off_10025E000];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCAExponentialDistanceHistoryDegradationFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAExponentialDistanceHistoryDegradationFactor" category:@"smartSiriVolume" default:&off_10025F420];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)SSVCADistanceResultsBufferSize
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADistanceResultsBufferSize" category:@"smartSiriVolume" default:&off_10025DFE8];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)SSVCADspNumStages
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADspNumStages" category:@"smartSiriVolume" default:&off_10025DFD0];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)SSVCADspCoefsCount
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADspCoefsCount" category:@"smartSiriVolume" default:&off_10025DFB8];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)SSVCANoiseActivityHistoricalSampleCount
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCANoiseActivityHistoricalSampleCount" category:@"smartSiriVolume" default:&off_10025DFA0];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCADefaultMusicStrength
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADefaultMusicStrength" category:@"smartSiriVolume" default:&off_10025F150];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADefaultSpeechStrength
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADefaultSpeechStrength" category:@"smartSiriVolume" default:&off_10025F410];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)SSVCAMusicResultsBufferSize
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMusicResultsBufferSize" category:@"smartSiriVolume" default:&off_10025DF88];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)SSVCANoiseResultsBufferSize
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCANoiseResultsBufferSize" category:@"smartSiriVolume" default:&off_10025DF88];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCANoiseActivityThreshold
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCANoiseActivityThreshold" category:@"smartSiriVolume" default:&off_10025F400];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAMinimumDistanceUpdateWaitPeriodSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMinimumDistanceUpdateWaitPeriodSeconds" category:@"smartSiriVolume" default:&off_10025F240];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSPostTransitionMultiplier
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPostTransitionMultiplier" category:@"smartSiriVolume" default:&off_10025F3F0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSPostTransitionDC
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPostTransitionDC" category:@"smartSiriVolume" default:&off_10025F250];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSPostTransitionOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPostTransitionOffset" category:@"smartSiriVolume" default:&off_10025F3E0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSPreTransitionMultiplier
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPreTransitionMultiplier" category:@"smartSiriVolume" default:&off_10025F3D0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSPreTransitionOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPreTransitionOffset" category:@"smartSiriVolume" default:&off_10025F3C0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSTransitionPoint
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSTransitionPoint" category:@"smartSiriVolume" default:&off_10025F180];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSMaximumOutput
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSMaximumOutput" category:@"smartSiriVolume" default:&off_10025F3B0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADBToTTSMinimumOutput
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSMinimumOutput" category:@"smartSiriVolume" default:&off_10025F3A0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidSpeechSteepness
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechSteepness" category:@"smartSiriVolume" default:&off_10025F390];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidNoiseSteepness
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseSteepness" category:@"smartSiriVolume" default:&off_10025F380];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidMusicSteepnessDeviceSimple
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v6 = @"SSVCASignalToSigmoidMusicSteepnessDeviceSimple";
LABEL_8:
    v7 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v6 category:@"smartSiriVolume" default:&off_10025F370];
    [v7 floatValue];
    v9 = v8;

    return v9;
  }

  if (v3 != 1)
  {
    v6 = @"SSVCASignalToSigmoidMusicSteepnessDeviceSimple2";
    goto LABEL_8;
  }

  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicSteepnessDeviceSimple]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Music steepness requested for device default!", &v10, 0xCu);
  }

  return 0.1;
}

- (float)SSVCASignalToSigmoidMusicSteepnessDeviceDefault
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicSteepnessDeviceDefault" category:@"smartSiriVolume" default:&off_10025F370];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidSpeechHOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechHOffset" category:@"smartSiriVolume" default:&off_10025F360];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidMusicHOffsetDeviceSimple
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v6 = @"SSVCASignalToSigmoidMusicHOffsetDeviceSimple";
    v7 = &off_10025F350;
LABEL_8:
    v8 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v6 category:@"smartSiriVolume" default:v7];
    [v8 floatValue];
    v10 = v9;

    return v10;
  }

  if (v3 != 1)
  {
    v6 = @"SSVCASignalToSigmoidMusicHOffsetDeviceSimple2";
    v7 = &off_10025F340;
    goto LABEL_8;
  }

  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicHOffsetDeviceSimple]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s H Offset requested for device default!", &v11, 0xCu);
  }

  return -28.0;
}

- (float)SSVCASignalToSigmoidMusicHOffsetDeviceDefault
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicHOffsetDeviceDefault" category:@"smartSiriVolume" default:&off_10025F340];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidNoiseHOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseHOffset" category:@"smartSiriVolume" default:&off_10025F330];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidSpeechVOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechVOffset" category:@"smartSiriVolume" default:&off_10025F320];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidMusicVOffsetDeviceSimple
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v6 = @"SSVCASignalToSigmoidMusicVOffsetDeviceSimple";
LABEL_8:
    v7 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v6 category:@"smartSiriVolume" default:&off_10025F180];
    [v7 floatValue];
    v9 = v8;

    return v9;
  }

  if (v3 != 1)
  {
    v6 = @"SSVCASignalToSigmoidMusicVOffsetDeviceSimple2";
    goto LABEL_8;
  }

  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicVOffsetDeviceSimple]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s V Offset requested for device default!", &v10, 0xCu);
  }

  return -30.0;
}

- (float)SSVCASignalToSigmoidMusicVOffsetDeviceDefault
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicVOffsetDeviceDefault" category:@"smartSiriVolume" default:&off_10025F180];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidNoiseVOffset
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseVOffset" category:@"smartSiriVolume" default:&off_10025F320];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidSpeechVSpread
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechVSpread" category:@"smartSiriVolume" default:&off_10025F310];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidMusicVSpreadDeviceSimple
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v6 = @"SSVCASignalToSigmoidMusicVSpreadDeviceSimple";
LABEL_8:
    v7 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v6 category:@"smartSiriVolume" default:&off_10025F2B0];
    [v7 floatValue];
    v9 = v8;

    return v9;
  }

  if (v3 != 1)
  {
    v6 = @"SSVCASignalToSigmoidMusicVSpreadDeviceSimple2";
    goto LABEL_8;
  }

  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicVSpreadDeviceSimple]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s V Spread requested for device default!", &v10, 0xCu);
  }

  return 20.0;
}

- (float)SSVCASignalToSigmoidMusicVSpreadDeviceDefault
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicVSpreadDeviceDefault" category:@"smartSiriVolume" default:&off_10025F2B0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidNoiseVSpread
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseVSpread" category:@"smartSiriVolume" default:&off_10025F300];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidSpeechDilationFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechDilationFactor" category:@"smartSiriVolume" default:&off_10025F1D0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidMusicDilationFactorDeviceSimple
{
  v3 = +[CSUtils horsemanDeviceType];
  if (v3 == 2)
  {
    v6 = @"SSVCASignalToSigmoidMusicDilationFactorDeviceSimple";
    v7 = &off_10025F2F0;
LABEL_8:
    v8 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:v6 category:@"smartSiriVolume" default:v7];
    [v8 floatValue];
    v10 = v9;

    return v10;
  }

  if (v3 != 1)
  {
    v6 = @"SSVCASignalToSigmoidMusicDilationFactorDeviceSimple2";
    v7 = &off_10025F2E0;
    goto LABEL_8;
  }

  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicDilationFactorDeviceSimple]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Dilation factor requested for device default!", &v11, 0xCu);
  }

  return 4.2;
}

- (float)SSVCASignalToSigmoidMusicDilationFactorDeviceDefault
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicDilationFactorDeviceDefault" category:@"smartSiriVolume" default:&off_10025F2E0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASignalToSigmoidNoiseDilationFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseDilationFactor" category:@"smartSiriVolume" default:&off_10025F2D0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCADecibelToLinearLogBase
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADecibelToLinearLogBase" category:@"smartSiriVolume" default:&off_10025F2C0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCALinearToDecibelConstantMultiplier
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCALinearToDecibelConstantMultiplier" category:@"smartSiriVolume" default:&off_10025F2B0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAMaximumLinearSoundLevel
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMaximumLinearSoundLevel" category:@"smartSiriVolume" default:&off_10025F2A0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAMinimumLinearSoundLevel
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMinimumLinearSoundLevel" category:@"smartSiriVolume" default:&off_10025F290];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (double)SSVCADistanceModelConfidenceThreshold
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADistanceModelConfidenceThreshold" category:@"smartSiriVolume" default:&off_10025E988];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASpeakerDistanceNearBoostFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASpeakerDistanceNearBoostFactor" category:@"smartSiriVolume" default:&off_10025F280];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASpeakerDistanceMidBoostFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASpeakerDistanceMidBoostFactor" category:@"smartSiriVolume" default:&off_10025F270];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCASpeakerDistanceFarBoostFactor
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASpeakerDistanceFarBoostFactor" category:@"smartSiriVolume" default:&off_10025F260];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int)SSVCANoiseActivityCountThreshold
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCANoiseActivityCountThreshold" category:@"smartSiriVolume" default:&off_10025DF70];
  v3 = [v2 intValue];

  return v3;
}

- (float)SSVCADefaultOutputTTSVolume
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADefaultOutputTTSVolume" category:@"smartSiriVolume" default:&off_10025F250];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unsigned)SSVCAAnnouncementStatusFetchTimeoutMs
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAAnnouncementStatusFetchTimeoutMs" category:@"smartSiriVolume" default:&off_10025DF58];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (float)SSVCADefaultZeroFloatingPointValue
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADefaultZeroFloatingPointValue" category:@"smartSiriVolume" default:&off_10025F150];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVCAListenPollingIntervalAtStartInSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAListenPollingIntervalAtStartInSeconds" category:@"smartSiriVolume" default:&off_10025F240];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int)SSVCADistanceInputBufferDurationSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCADistanceInputBufferDurationSeconds" category:@"smartSiriVolume" default:&off_10025DF40];
  v3 = [v2 intValue];

  return v3;
}

- (float)SSVCAVoiceTriggerInitialSilenceDurationSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAVoiceTriggerInitialSilenceDurationSeconds" category:@"smartSiriVolume" default:&off_10025F220];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int)SSVCASmartSiriVolumeSyncedMetricLogsToRetain
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASmartSiriVolumeSyncedMetricLogsToRetain" category:@"smartSiriVolume" default:&off_10025DF28];
  v3 = [v2 intValue];

  return v3;
}

- (int)SSVCASmartSiriVolumeUnsyncedMetricLogsToRetain
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCASmartSiriVolumeUnsyncedMetricLogsToRetain" category:@"smartSiriVolume" default:&off_10025DF28];
  v3 = [v2 intValue];

  return v3;
}

- (float)SSVCAVoiceTriggerBasedTTSValidForSeconds
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAVoiceTriggerBasedTTSValidForSeconds" category:@"smartSiriVolume" default:&off_10025F230];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unsigned)SSVCAMaxFrameSize
{
  v2 = [(CSAsset *)self _getNumberFromASVDictionaryForKey:@"SSVCAMaxFrameSize" category:@"smartSiriVolume" default:&off_10025DF10];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)SSVDistanceChannelBitset
{
  v3 = &off_10025DEB0;
  if (CSIsHorseman())
  {
    v4 = +[CSUtils horsemanDeviceType];
    v5 = &off_10025DE98;
    if (v4 != 3)
    {
      v5 = &off_10025DEB0;
    }

    if (v4 == 2)
    {
      v3 = &off_10025DEF8;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = [(CSAsset *)self getNumberForKey:@"DistanceChannelBitset" category:@"smartSiriVolume" default:v3];
  v7 = [v6 unsignedLongLongValue];

  return v7;
}

- (unint64_t)SSVLKFSChannelBitset
{
  v3 = &off_10025DEC8;
  if (CSIsHorseman() && +[CSUtils horsemanDeviceType]== 3)
  {
    v3 = &off_10025DEE0;
  }

  v4 = [(CSAsset *)self getNumberForKey:@"LKFSChannelBitset" category:@"smartSiriVolume" default:v3];
  v5 = [v4 unsignedLongLongValue];

  return v5;
}

- (unint64_t)SSVNoiseLevelChannelBitset
{
  v3 = &off_10025DEB0;
  if (CSIsHorseman())
  {
    v4 = +[CSUtils horsemanDeviceType];
    v5 = &off_10025DE98;
    if (v4 != 3)
    {
      v5 = &off_10025DEB0;
    }

    if (v4 == 2)
    {
      v3 = &off_10025DE80;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = [(CSAsset *)self getNumberForKey:@"noiseLevelChannelBitset" category:@"smartSiriVolume" default:v3];
  v7 = [v6 unsignedLongLongValue];

  return v7;
}

- (float)SSVNoiseWeight
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseWeight" category:@"smartSiriVolume" default:&off_10025F220];
  [v2 floatValue];
  v4 = v3;

  result = fminf(v4, 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (float)SSVTTSVolumeUpperLimitDB
{
  v2 = [(CSAsset *)self getNumberForKey:@"TTSVolumeUpperLimitDB" category:@"smartSiriVolume" default:&off_10025F200];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVTTSVolumeLowerLimitDB
{
  v2 = [(CSAsset *)self getNumberForKey:@"TTSVolumeLowerLimitDB" category:@"smartSiriVolume" default:&off_10025F210];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVUserOffsetOutputRangeHigh
{
  v2 = [(CSAsset *)self getNumberForKey:@"userOffsetOutputRangeHigh" category:@"smartSiriVolume" default:&off_10025F200];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVUserOffsetOutputRangeLow
{
  v2 = [(CSAsset *)self getNumberForKey:@"userOffsetOutputRangeLow" category:@"smartSiriVolume" default:&off_10025F1F0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVUserOffsetInputRangeHigh
{
  v2 = [(CSAsset *)self getNumberForKey:@"userOffsetInputRangeHigh" category:@"smartSiriVolume" default:&off_10025F150];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVUserOffsetInputRangeLow
{
  v2 = [(CSAsset *)self getNumberForKey:@"userOffsetInputRangeLow" category:@"smartSiriVolume" default:&off_10025F1E0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVLKFSTTSMappingOutputRangeHigh
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSTTSMappingOutputRangeHigh" category:@"smartSiriVolume" default:&off_10025F1D0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVLKFSTTSMappingOutputRangeLow
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSTTSMappingOutputRangeLow" category:@"smartSiriVolume" default:&off_10025F1C0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVLKFSTTSMappingInputRangeHigh
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSTTSMappingInputRangeHigh" category:@"smartSiriVolume" default:&off_10025F1B0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVLKFSTTSMappingInputRangeLow
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSTTSMappingInputRangeLow" category:@"smartSiriVolume" default:&off_10025F1A0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseTTSMappingOutputRangeHigh
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseTTSMappingOutputRangeHigh" category:@"smartSiriVolume" default:&off_10025F190];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseTTSMappingOutputRangeLow
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseTTSMappingOutputRangeLow" category:@"smartSiriVolume" default:&off_10025F180];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseTTSMappingInputRangeHigh
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseTTSMappingInputRangeHigh" category:@"smartSiriVolume" default:&off_10025F170];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseTTSMappingInputRangeLow
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseTTSMappingInputRangeLow" category:@"smartSiriVolume" default:&off_10025F160];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVLKFSMicSensitivityOffset
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSMicSensitivityOffset" category:@"smartSiriVolume" default:&off_10025F150];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVLKFSTimeConstant
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSTimeConstant" category:@"smartSiriVolume" default:&off_10025F140];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseMicSensitivityOffsetDeviceSimple
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseMicSensitivityOffsetDeviceSimple" category:@"smartSiriVolume" default:&off_10025F130];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseMicSensitivityOffset
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseMicSensitivityOffset" category:@"smartSiriVolume" default:&off_10025F120];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)SSVNoiseTimeConstant
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseTimeConstant" category:@"smartSiriVolume" default:&off_10025F110];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unsigned)SSVLKFSUpperPercentile
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSUpperPercentile" category:@"smartSiriVolume" default:&off_10025DE68];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)SSVLKFSLowerPercentile
{
  v2 = [(CSAsset *)self getNumberForKey:@"LKFSLowerPercentile" category:@"smartSiriVolume" default:&off_10025DE50];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)SSVNoiseUpperPercentile
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseUpperPercentile" category:@"smartSiriVolume" default:&off_10025DE68];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)SSVNoiseLowerPercentile
{
  v2 = [(CSAsset *)self getNumberForKey:@"noiseLowerPercentile" category:@"smartSiriVolume" default:&off_10025DE50];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)SSVEnergyBufferSize
{
  v2 = [(CSAsset *)self getNumberForKey:@"energyBufferSize" category:@"smartSiriVolume" default:&off_10025DE38];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (id)_adaptiveSiriVolumeDictionary
{
  v2 = [(CSAsset *)self resourcePath];
  v3 = [v2 stringByAppendingPathComponent:@"siriVolume.json"];
  v4 = [CSAsset decodeJson:v3];

  return v4;
}

+ (unint64_t)getSSVDeviceType
{
  if (CSIsHorsemanJunior())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unsigned)SSVDefaultDistanceChannelCount
{
  if (CSIsHorseman())
  {
    v2 = +[CSUtils horsemanDeviceType];
    v3 = 16128;
    if (v2 == 3)
    {
      v3 = 3840;
    }

    if (v2 == 2)
    {
      v4 = 896;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 16128;
  }

  return [CSUtils getNumElementInBitset:v4];
}

+ (unsigned)SSVDefaultLKFSChannelCount
{
  if (CSIsHorseman())
  {
    if (+[CSUtils horsemanDeviceType]== 3)
    {
      v2 = 0x100000;
    }

    else
    {
      v2 = 16;
    }
  }

  else
  {
    v2 = 16;
  }

  return [CSUtils getNumElementInBitset:v2];
}

+ (unsigned)SSVDefaultNoiseChannelCount
{
  if (CSIsHorseman())
  {
    v2 = +[CSUtils horsemanDeviceType];
    v3 = 16128;
    if (v2 == 3)
    {
      v3 = 3840;
    }

    if (v2 == 2)
    {
      v4 = 960;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 16128;
  }

  return [CSUtils getNumElementInBitset:v4];
}

- (id)_userSelectedPhraseTypeToRTModelPhraseType:(id)a3
{
  if ([a3 unsignedIntegerValue] == 1)
  {
    return @"HSJS";
  }

  else
  {
    return @"HSOnly";
  }
}

- (BOOL)_allowMultiPhrase:(id)a3 forceSkipEngineVersionCheck:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = [v5 accessoryInfo];
  v7 = [v6 supportsJustSiri];

  v8 = [v5 engineMajorVersion];
  v9 = [v8 unsignedIntValue];

  v10 = [v5 engineMinorVersion];
  v11 = [v10 unsignedIntValue];

  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (a4)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v5 allowMph];

  v16 = v7 & v14 & v15;
  v17 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316162;
    v20 = "[CSAsset(RTModel) _allowMultiPhrase:forceSkipEngineVersionCheck:]";
    v21 = 1024;
    v22 = v7 & v14 & v15;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = v15 & 1;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Multi-phrase keyword detection (%d): Accessory supports multi-phrase: %d, engine support multi-phrase: %d, device allows multi-phrase: %d", &v19, 0x24u);
  }

  return v16;
}

- (id)_rtModelWithRequestOptions:(id)a3 accessoryBlobs:(id)a4
{
  v6 = a3;
  v7 = [(CSAsset *)self _getFilteredAccessoryRTBlobListForRequestOptions:v6 accessoryBlobs:a4 forceSkipEngineVersionCheck:0];
  v8 = [v6 engineMajorVersion];
  v9 = [v8 unsignedIntValue];

  v10 = [v6 engineMinorVersion];
  v11 = [v10 unsignedIntValue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v24 = self;
    v25 = v6;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"majorVersion"];
        v18 = [v17 unsignedIntValue];

        v19 = [v16 objectForKeyedSubscript:@"minorVersion"];
        v20 = [v19 unsignedIntValue];

        if (v18 == v9 && v11 >= v20)
        {
          v6 = v25;
          v22 = [(CSAsset *)v24 _buildRTModelWithBlobConfig:v16 requestOptions:v25];
          goto LABEL_15;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    v6 = v25;
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (id)_splitBlobsByPhraseType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"phraseType"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"HSOnly";
        }

        v14 = v13;

        v15 = [v4 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(NSMutableArray);
          [v4 setObject:v15 forKey:v14];
        }

        [v15 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v16 = [v4 allKeys];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];
        v23 = [v22 sortedArrayUsingComparator:&stru_10024FC38];

        if (v23)
        {
          [v4 setObject:v23 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  return v4;
}

- (id)_buildRTModelWithBlobConfig:(id)a3 requestOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"blob"];
  if (v8)
  {
    v9 = [(CSAsset *)self resourcePath];
    v10 = [v9 stringByAppendingPathComponent:v8];

    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v10];

    v13 = CSLogContextFacilityCoreSpeech;
    if (v12)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v42 = 2114;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Reading blob from : %{public}@", buf, 0x16u);
      }

      v14 = [NSData dataWithContentsOfFile:v10];
      if (v14)
      {
        v15 = [CSFHashUtils sha1StringFromInputData:v14];
        v39 = [v15 substringWithRange:{0, 20}];

        v38 = [CSFHashUtils sha256DataFromInputData:v14];
        v16 = [v6 objectForKeyedSubscript:@"signature"];
        v37 = v16;
        if (v16)
        {
          v17 = v16;
          v18 = [(CSAsset *)self resourcePath];
          v19 = [v18 stringByAppendingPathComponent:v17];

          v20 = +[NSFileManager defaultManager];
          v21 = [v20 fileExistsAtPath:v19];

          if (v21)
          {
            v36 = [NSData dataWithContentsOfFile:v19];
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }

        v25 = [v6 objectForKeyedSubscript:@"cert"];
        v35 = v25;
        if (v25)
        {
          v26 = v25;
          v27 = [(CSAsset *)self resourcePath];
          v28 = [v27 stringByAppendingPathComponent:v26];

          v29 = +[NSFileManager defaultManager];
          v30 = [v29 fileExistsAtPath:v28];

          if (v30)
          {
            v31 = [NSData dataWithContentsOfFile:v28];
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = [CSVoiceTriggerRTModel alloc];
        v33 = [v7 siriLocale];
        v23 = [(CSVoiceTriggerRTModel *)v32 initWithData:v14 hash:v39 locale:v33 digest:v38 signature:v36 certificate:v31];
      }

      else
      {
        v24 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
          v42 = 2114;
          v43 = v10;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Blob is nil : %{public}@", buf, 0x16u);
        }

        v23 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v42 = 2114;
        v43 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s blob file is not exists at %{public}@", buf, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s blob file name is not exists", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (id)localeMapWithName:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self dictionary];
  if (v5)
  {
    v6 = v5;
    v7 = [(CSAsset *)self dictionary];
    v8 = [v7 objectForKeyedSubscript:v4];
    if (v8)
    {
      v9 = v8;
      v10 = [(CSAsset *)self dictionary];
      v11 = [v10 objectForKeyedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [(CSAsset *)self dictionary];
        v14 = [v13 objectForKeyedSubscript:v4];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "[CSAsset(RTModel) localeMapWithName:]";
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Locale map for %{public}@ is not available on asset", &v17, 0x16u);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)rtModelLocaleMapWithModelType:(int64_t)a3
{
  if (a3 == 1)
  {
    [(CSAsset *)self remoraRTModelLocaleMap];
  }

  else
  {
    [(CSAsset *)self hearstRTModelLocaleMap];
  }
  v3 = ;

  return v3;
}

- (id)rtModelWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryModelType];
  v6 = [v5 integerValue];

  if (v6)
  {
    v7 = @"adkblobs";
  }

  else
  {
    v7 = @"rtblobs";
  }

  v8 = [(CSAsset *)self dictionary];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(CSAsset *)self dictionary];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = [(CSAsset *)self dictionary];
    v13 = [v12 objectForKeyedSubscript:v7];

    v14 = [(CSAsset *)self _rtModelWithRequestOptions:v4 accessoryBlobs:v13];
  }

  else
  {
LABEL_7:
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSAsset(RTModel) rtModelWithRequestOptions:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s corespeech.json doesn't contains rtblobs", &v17, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)latestHearstRTModelWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self dictionary];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [(CSAsset *)self dictionary];
  v8 = [v7 objectForKeyedSubscript:@"rtblobs"];

  if (!v8)
  {
LABEL_18:
    v25 = 0;
    goto LABEL_23;
  }

  v9 = [(CSAsset *)self dictionary];
  v10 = [v9 objectForKeyedSubscript:@"rtblobs"];
  v29 = self;
  v30 = v4;
  v11 = [(CSAsset *)self _getFilteredAccessoryRTBlobListForRequestOptions:v4 accessoryBlobs:v10 forceSkipEngineVersionCheck:1];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (!v12)
  {
    v14 = 0;
    v32 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v32 = 0;
  v15 = 0;
  v16 = *v35;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v34 + 1) + 8 * i);
      v19 = [v18 objectForKeyedSubscript:@"majorVersion"];
      v20 = [v19 unsignedIntValue];

      v21 = [v18 objectForKeyedSubscript:@"minorVersion"];
      v22 = [v21 unsignedIntValue];

      if (v14 < v20)
      {
        v14 = v20;
LABEL_14:
        v24 = v18;

        v32 = v22;
        v15 = v24;
        continue;
      }

      if (v14 == v20 && v32 < v22)
      {
        goto LABEL_14;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  }

  while (v13);
LABEL_20:

  v26 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v39 = "[CSAsset(RTModel) latestHearstRTModelWithRequestOptions:]";
    v40 = 1024;
    v41 = v14;
    v42 = 1024;
    v43 = v32;
    v44 = 2113;
    v45 = v15;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s latestMajorVersion = %d, LatestMinorVersion = %d rtBlob = %{private}@", buf, 0x22u);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100072DDC;
  v33[3] = &unk_10024FBF8;
  v33[4] = v14;
  v33[5] = v32;
  v4 = v30;
  v27 = [[CSVoiceTriggerRTModelRequestOptions alloc] initWithCSRTModelRequestOptions:v30 builder:v33];
  v25 = [(CSAsset *)v29 _buildRTModelWithBlobConfig:v15 requestOptions:v27];

LABEL_23:

  return v25;
}

- (id)RTModelWithFallbackLanguage:(id)a3
{
  v4 = [CSUtils getSiriLanguageWithFallback:a3];
  v5 = [(CSAsset *)self createRTModelWithLocale:v4];

  return v5;
}

- (id)createRTModelWithLocale:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self resourcePath];
  v6 = &CSLogCategorySDSD_ptr;
  if (v5 && (v7 = v5, [(CSAsset *)self path], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [(CSAsset *)self resourcePath];
    v10 = [v9 stringByAppendingPathComponent:@"config_rtv2.txt"];

    v11 = [(CSAsset *)self resourcePath];
    v12 = [v11 stringByAppendingPathComponent:@"config_rt.txt"];

    v13 = [(CSAsset *)self resourcePath];
    v14 = [v13 stringByAppendingPathComponent:@"config.txt"];

    v15 = CSHasAOP();
    v16 = v14;
    if (v15)
    {
      v17 = +[NSFileManager defaultManager];
      v18 = [v17 fileExistsAtPath:v10 isDirectory:0];

      v16 = v10;
      if ((v18 & 1) == 0)
      {
        v19 = +[NSFileManager defaultManager];
        v20 = [v19 fileExistsAtPath:v12 isDirectory:0];

        v16 = v12;
        if ((v20 & 1) == 0)
        {
          v21 = CSLogContextFacilityCoreSpeech;
          v22 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
          v16 = v14;
          if (v22)
          {
            v38 = 136315650;
            v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
            v40 = 2114;
            v41 = 0;
            v42 = 2114;
            v43 = v14;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s RT specific configuration %{public}@ does not exist, defaulting to unified configuration %{public}@", &v38, 0x20u);
            v16 = v14;
          }
        }
      }
    }

    v23 = v16;
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315394;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v40 = 2114;
      v41 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Creating RT blob using: %{public}@", &v38, 0x16u);
    }

    v25 = [(CSAsset *)self resourcePath];
    v26 = [VTBlobBuilder getBlobWithConfigFilename:v23 rootDirectory:v25];

    v27 = CSLogContextFacilityCoreSpeech;
    if (v26)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136315394;
        v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        v40 = 2114;
        v41 = v23;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s CorealisRT model creation done successfully : %{public}@", &v38, 0x16u);
      }

      v28 = [(CSAsset *)self assetHashInResourcePath:v23];
    }

    else
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v38 = 136315138;
        v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Failed to create CorealisRT model", &v38, 0xCu);
      }

      v28 = 0;
    }

    v6 = &CSLogCategorySDSD_ptr;

    if (v26)
    {
      v35 = [(CSAsset *)self resourcePath];
      if (v35)
      {
        v36 = v35;
        v37 = [(CSAsset *)self path];

        if (v37)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v28 = 0;
    v26 = 0;
  }

  v29 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 136315138;
    v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Defaulting to en_US CorealisRT model", &v38, 0xCu);
  }

  v30 = [v6[343] getDefaultBlob];

  v31 = CSLogContextFacilityCoreSpeech;
  if (v30)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315138;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Default CorealisRT model creation done successfully", &v38, 0xCu);
    }

    v28 = @"nohash";
    v26 = v30;
LABEL_21:
    v32 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v40 = 2114;
      v41 = v4;
      v42 = 2114;
      v43 = v28;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s RT Model queried - %{public}@ %{public}@", &v38, 0x20u);
    }

    v33 = [[CSVoiceTriggerRTModel alloc] initWithData:v26 hash:v28 locale:v4];

    goto LABEL_27;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v38 = 136315138;
    v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Failed to create default CorealisRT model", &v38, 0xCu);
  }

  v33 = 0;
LABEL_27:

  return v33;
}

+ (BOOL)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)a3 engineMinorVersion:(id)a4 accessoryRTModelType:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 unsignedIntegerValue];
  v11 = [v8 unsignedIntegerValue];
  v12 = [v9 unsignedIntegerValue];

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "+[CSAsset(RTModel) supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming Major version:%@, Incoming Minor version:%@", &v18, 0x20u);
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v12 <= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)useSpeakerRecognitionAsset
{
  v2 = [(CSAsset *)self getNumberForKey:@"useSpeakerRecognitionAsset" category:@"speakerRecognition" default:0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)containsMultiUserThresholds
{
  v2 = [(CSAsset *)self path];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [NSData dataWithContentsOfFile:v2];
    if (!v5)
    {
      v11 = CSLogContextFacilityCoreSpeech;
      v10 = 0;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSAsset(SpeakerRecognition) containsMultiUserThresholds]";
        v19 = 2114;
        v20 = v2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Could not read: %{public}@", buf, 0x16u);
        v10 = 0;
      }

      goto LABEL_17;
    }

    v16 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v16];
    v7 = v16;
    if (v7)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = "[CSAsset(SpeakerRecognition) containsMultiUserThresholds]";
        v19 = 2114;
        v20 = v2;
        v21 = 2114;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Could not decode contents of: %{public}@: err: %{public}@", buf, 0x20u);
      }
    }

    else if (v6)
    {
      v12 = [v6 objectForKeyedSubscript:@"speakerRecognition"];
      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"speakerRecognition"];
        v14 = [v13 objectForKeyedSubscript:@"multiUserConfidentScoreThreshold"];
        v10 = v14 != 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_16;
    }

    v10 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  v10 = 0;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSAsset(SpeakerRecognition) containsMultiUserThresholds]";
    v19 = 2114;
    v20 = v2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ doesnt exist", buf, 0x16u);
    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (BOOL)satImplicitTrainingEnabled
{
  v3 = (CSIsIOS() & 1) != 0 || CSIsMac();

  return [(CSAsset *)self getBoolForKey:@"implicit_training_enabled" category:@"speakerRecognition" default:v3];
}

- (NSString)keywordDetectorNDAPIConfigFilePath
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"configFileNDAPI" category:@"voiceTriggerSecondPassAOP" default:@"config.txt"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (NSString)keywordDetectorQuasarConfigFilePath
{
  v3 = [(CSAsset *)self resourcePath];
  if (+[CSUtils horsemanDeviceType](CSUtils, "horsemanDeviceType") != 1 || (+[CSVoiceTriggerSecondPassConfigDecoder getDefaultRecognizerForB238], v4 = objc_claimAutoreleasedReturnValue(), [(CSAsset *)self getStringForKey:v4 category:@"voiceTriggerSecondPass" default:0], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [(CSAsset *)self getStringForKey:@"configFileRecognizer" category:@"voiceTriggerSecondPassAOP" default:@"recognizer.json"];
  }

  v6 = [v3 stringByAppendingPathComponent:v5];

  return v6;
}

- (unint64_t)maxAllowedEnrollmentUtterances
{
  v2 = [(CSAsset *)self getNumberForKey:@"maxEnrollmentUtterances" category:@"speakerRecognition" default:&off_10025E420];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)pruningNumRetentionUtterance
{
  v2 = [(CSAsset *)self getNumberForKey:@"numPruningRetentionUtt" category:@"speakerRecognition" default:&off_10025E408];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (float)pruningThresholdPSR
{
  v2 = [(CSAsset *)self getNumberForKey:@"pruningPSRThreshold" category:@"speakerRecognition" default:&off_10025F560];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)pruningThresholdSAT
{
  v2 = [(CSAsset *)self getNumberForKey:@"pruningSATThreshold" category:@"speakerRecognition" default:&off_10025F560];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)pruningExplicitUttThresholdPSR
{
  v2 = [(CSAsset *)self getNumberForKey:@"pruningExplicitPSRThreshold" category:@"speakerRecognition" default:&off_10025F560];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)pruningExplicitUttThresholdSAT
{
  v2 = [(CSAsset *)self getNumberForKey:@"pruningExplicitSATThreshold" category:@"speakerRecognition" default:&off_10025F560];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)satVTImplicitThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"implicitVTThreshold" category:@"speakerRecognition" default:&off_10025F560];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)satImplicitProfileDeltaThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"implicitProfileDeltaThreshold" category:@"speakerRecognition" default:&off_10025E9D8];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)satImplicitProfileThreshold
{
  [(CSAsset *)self satScoreThreshold];
  v3 = [NSNumber numberWithFloat:?];
  v4 = [(CSAsset *)self getNumberForKey:@"implicitProfileThreshold" category:@"speakerRecognition" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)psrCombinationWeight
{
  v2 = [(CSAsset *)self getNumberForKey:@"combinationWeight" category:@"speakerRecognition" default:&off_10025E9C8];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int64_t)multiUserDeltaScoreThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"multiUserDeltaScoreThreshold" category:@"speakerRecognition" default:&off_10025E3F0];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)multiUserDeltaScoreThresholdForPhId:(unint64_t)a3
{
  v4 = [(CSAsset *)self getPhraseConfig:a3];
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"multiUserDeltaScoreThreshold"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"multiUserDeltaScoreThreshold"];
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = [(CSAsset *)self multiUserDeltaScoreThreshold];
  }

  return v9;
}

- (int64_t)multiUserConfidentScoreThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"multiUserConfidentScoreThreshold" category:@"speakerRecognition" default:&off_10025E3D8];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)multiUserConfidentScoreThresholdForPhId:(unint64_t)a3
{
  v4 = [(CSAsset *)self getPhraseConfig:a3];
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"multiUserConfidentScoreThreshold"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"multiUserConfidentScoreThreshold"];
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = [(CSAsset *)self multiUserConfidentScoreThreshold];
  }

  return v9;
}

- (int64_t)multiUserHighScoreThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"multiUserHighScoreThreshold" category:@"speakerRecognition" default:&off_10025E3C0];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)multiUserHighScoreThresholdForPhId:(unint64_t)a3
{
  v4 = [(CSAsset *)self getPhraseConfig:a3];
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"multiUserHighScoreThreshold"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"multiUserHighScoreThreshold"];
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = [(CSAsset *)self multiUserHighScoreThreshold];
  }

  return v9;
}

- (int64_t)multiUserLowScoreThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"multiUserLowScoreThreshold" category:@"speakerRecognition" default:&off_10025E3A8];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)multiUserLowScoreThresholdForPhId:(unint64_t)a3
{
  v4 = [(CSAsset *)self getPhraseConfig:a3];
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"multiUserLowScoreThreshold"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"multiUserLowScoreThreshold"];
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = [(CSAsset *)self multiUserLowScoreThreshold];
  }

  return v9;
}

- (float)satScoreThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"satThreshold" category:@"speakerRecognition" default:&off_10025F550];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)satScoreThresholdForPhId:(unint64_t)a3
{
  v4 = [(CSAsset *)self getPhraseConfig:a3];
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"satThreshold"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"satThreshold"];
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    [(CSAsset *)self satScoreThreshold];
    v9 = v10;
  }

  return v9;
}

- (id)getPhraseConfig:(unint64_t)a3
{
  v4 = [(CSAsset *)self getValueForKey:@"phrase" category:@"speakerRecognition"];
  v5 = v4;
  if (v4 && [v4 count] <= a3)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CSAsset(SpeakerRecognition) getPhraseConfig:]";
      v11 = 1024;
      v12 = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Config for ph: %d doesn't exist, use default", &v9, 0x12u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
  }

  return v6;
}

- (float)keywordDetectorWaitTimeSinceVT
{
  v2 = [(CSAsset *)self getNumberForKey:@"waitTimeSinceVT" category:@"keywordDetector" default:&off_10025F5B0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (NSString)keywordDetectorConfigPathRecognizer
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"configFileRecognizer" category:@"keywordDetector" default:@"keyword_detector.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (float)keywordDetectorThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"threshold" category:@"keywordDetector" default:&off_10025F5A0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end