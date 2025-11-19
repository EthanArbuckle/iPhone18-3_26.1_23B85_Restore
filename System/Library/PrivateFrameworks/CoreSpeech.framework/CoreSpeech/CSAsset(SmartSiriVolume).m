@interface CSAsset(SmartSiriVolume)
+ (uint64_t)SSVDefaultDistanceChannelCount;
+ (uint64_t)SSVDefaultLKFSChannelCount;
+ (uint64_t)SSVDefaultNoiseChannelCount;
+ (uint64_t)getSSVDeviceType;
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
- (float)SSVCASignalToSigmoidMusicHOffsetDeviceDefault;
- (float)SSVCASignalToSigmoidMusicSteepnessDeviceDefault;
- (float)SSVCASignalToSigmoidMusicVOffsetDeviceDefault;
- (float)SSVCASignalToSigmoidMusicVSpreadDeviceDefault;
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
- (float)SSVTTSVolumeLowerLimitDB;
- (float)SSVTTSVolumeUpperLimitDB;
- (float)SSVUserOffsetInputRangeHigh;
- (float)SSVUserOffsetInputRangeLow;
- (float)SSVUserOffsetOutputRangeHigh;
- (float)SSVUserOffsetOutputRangeLow;
- (id)SSVParameterDirectionary;
- (id)_adaptiveSiriVolumeDictionary;
- (id)_getNumberFromASVDictionaryForKey:()SmartSiriVolume category:default:;
- (uint64_t)SSVCAAnnouncementStatusFetchTimeoutMs;
- (uint64_t)SSVCADeviceSimplePreTriggerSilenceSampleCount;
- (uint64_t)SSVCADistanceInputBufferDurationSeconds;
- (uint64_t)SSVCADistanceResultSampleCountTolerance;
- (uint64_t)SSVCADistanceResultsBufferSize;
- (uint64_t)SSVCADspCoefsCount;
- (uint64_t)SSVCADspNumStages;
- (uint64_t)SSVCAHistoricalVolumeBufferSize;
- (uint64_t)SSVCAMaxFrameSize;
- (uint64_t)SSVCAMusicResultsBufferSize;
- (uint64_t)SSVCANoiseActivityCountThreshold;
- (uint64_t)SSVCANoiseActivityHistoricalSampleCount;
- (uint64_t)SSVCANoiseResultsBufferSize;
- (uint64_t)SSVCASmartSiriVolumeSyncedMetricLogsToRetain;
- (uint64_t)SSVCASmartSiriVolumeUnsyncedMetricLogsToRetain;
- (uint64_t)SSVCAUserIntentValidForSeconds;
- (uint64_t)SSVDistanceChannelBitset;
- (uint64_t)SSVEnergyBufferSize;
- (uint64_t)SSVLKFSChannelBitset;
- (uint64_t)SSVLKFSLowerPercentile;
- (uint64_t)SSVLKFSUpperPercentile;
- (uint64_t)SSVNoiseLevelChannelBitset;
- (uint64_t)SSVNoiseLowerPercentile;
- (uint64_t)SSVNoiseUpperPercentile;
- (void)SSVCADeviceSimpleASVOffMinTTSVolume;
- (void)SSVCASignalToSigmoidMusicDilationFactorDeviceSimple;
- (void)SSVCASignalToSigmoidMusicHOffsetDeviceSimple;
- (void)SSVCASignalToSigmoidMusicSteepnessDeviceSimple;
- (void)SSVCASignalToSigmoidMusicVOffsetDeviceSimple;
- (void)SSVCASignalToSigmoidMusicVSpreadDeviceSimple;
- (void)SSVNoiseWeight;
@end

@implementation CSAsset(SmartSiriVolume)

- (id)SSVParameterDirectionary
{
  v52[27] = *MEMORY[0x277D85DE8];
  v51[0] = @"noiseLevelChannelBitset";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "SSVNoiseLevelChannelBitset")}];
  v52[0] = v50;
  v51[1] = @"LKFSChannelBitset";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "SSVLKFSChannelBitset")}];
  v52[1] = v49;
  v51[2] = @"energyBufferSize";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "SSVEnergyBufferSize")}];
  v52[2] = v48;
  v51[3] = @"noiseLowerPercentile";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "SSVNoiseLowerPercentile")}];
  v52[3] = v47;
  v51[4] = @"noiseUpperPercentile";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "SSVNoiseUpperPercentile")}];
  v52[4] = v46;
  v51[5] = @"LKFSLowerPercentile";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "SSVLKFSLowerPercentile")}];
  v52[5] = v45;
  v51[6] = @"LKFSUpperPercentile";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "SSVLKFSUpperPercentile")}];
  v52[6] = v44;
  v51[7] = @"noiseTimeConstant";
  v2 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseTimeConstant];
  v43 = [v2 numberWithFloat:?];
  v52[7] = v43;
  v51[8] = @"noiseMicSensitivityOffset";
  v3 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseMicSensitivityOffset];
  v42 = [v3 numberWithFloat:?];
  v52[8] = v42;
  v51[9] = @"LKFSTimeConstant";
  v4 = MEMORY[0x277CCABB0];
  [a1 SSVLKFSTimeConstant];
  v41 = [v4 numberWithFloat:?];
  v52[9] = v41;
  v51[10] = @"LKFSMicSensitivityOffset";
  v5 = MEMORY[0x277CCABB0];
  [a1 SSVLKFSMicSensitivityOffset];
  v40 = [v5 numberWithFloat:?];
  v52[10] = v40;
  v51[11] = @"noiseTTSMappingInputRangeLow";
  v6 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseTTSMappingInputRangeLow];
  v39 = [v6 numberWithFloat:?];
  v52[11] = v39;
  v51[12] = @"noiseTTSMappingInputRangeHigh";
  v7 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseTTSMappingInputRangeHigh];
  v38 = [v7 numberWithFloat:?];
  v52[12] = v38;
  v51[13] = @"noiseTTSMappingOutputRangeLow";
  v8 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseTTSMappingOutputRangeLow];
  v37 = [v8 numberWithFloat:?];
  v52[13] = v37;
  v51[14] = @"noiseTTSMappingOutputRangeHigh";
  v9 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseTTSMappingOutputRangeHigh];
  v36 = [v9 numberWithFloat:?];
  v52[14] = v36;
  v51[15] = @"LKFSTTSMappingInputRangeLow";
  v10 = MEMORY[0x277CCABB0];
  [a1 SSVLKFSTTSMappingInputRangeLow];
  v35 = [v10 numberWithFloat:?];
  v52[15] = v35;
  v51[16] = @"LKFSTTSMappingInputRangeHigh";
  v11 = MEMORY[0x277CCABB0];
  [a1 SSVLKFSTTSMappingInputRangeHigh];
  v34 = [v11 numberWithFloat:?];
  v52[16] = v34;
  v51[17] = @"LKFSTTSMappingOutputRangeLow";
  v12 = MEMORY[0x277CCABB0];
  [a1 SSVLKFSTTSMappingOutputRangeLow];
  v33 = [v12 numberWithFloat:?];
  v52[17] = v33;
  v51[18] = @"LKFSTTSMappingOutputRangeHigh";
  v13 = MEMORY[0x277CCABB0];
  [a1 SSVLKFSTTSMappingOutputRangeHigh];
  v14 = [v13 numberWithFloat:?];
  v52[18] = v14;
  v51[19] = @"userOffsetInputRangeLow";
  v15 = MEMORY[0x277CCABB0];
  [a1 SSVUserOffsetInputRangeLow];
  v16 = [v15 numberWithFloat:?];
  v52[19] = v16;
  v51[20] = @"userOffsetInputRangeHigh";
  v17 = MEMORY[0x277CCABB0];
  [a1 SSVUserOffsetInputRangeHigh];
  v18 = [v17 numberWithFloat:?];
  v52[20] = v18;
  v51[21] = @"userOffsetOutputRangeLow";
  v19 = MEMORY[0x277CCABB0];
  [a1 SSVUserOffsetOutputRangeLow];
  v20 = [v19 numberWithFloat:?];
  v52[21] = v20;
  v51[22] = @"userOffsetOutputRangeHigh";
  v21 = MEMORY[0x277CCABB0];
  [a1 SSVUserOffsetOutputRangeHigh];
  v22 = [v21 numberWithFloat:?];
  v52[22] = v22;
  v51[23] = @"TTSVolumeLowerLimitDB";
  v23 = MEMORY[0x277CCABB0];
  [a1 SSVTTSVolumeLowerLimitDB];
  v24 = [v23 numberWithFloat:?];
  v52[23] = v24;
  v51[24] = @"TTSVolumeUpperLimitDB";
  v25 = MEMORY[0x277CCABB0];
  [a1 SSVTTSVolumeUpperLimitDB];
  v26 = [v25 numberWithFloat:?];
  v52[24] = v26;
  v51[25] = @"noiseWeight";
  v27 = MEMORY[0x277CCABB0];
  [a1 SSVNoiseWeight];
  v28 = [v27 numberWithFloat:?];
  v52[25] = v28;
  v51[26] = @"DistanceChannelBitset";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "SSVDistanceChannelBitset")}];
  v52[26] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:27];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_getNumberFromASVDictionaryForKey:()SmartSiriVolume category:default:
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _adaptiveSiriVolumeDictionary];
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
    v19 = *MEMORY[0x277D01598];
    v18 = v10;
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = "[CSAsset(SmartSiriVolume) _getNumberFromASVDictionaryForKey:category:default:]";
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v8;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s Cannot access to %{public}@ %{public}@ using default value=%{public}@", &v22, 0x2Au);
      v18 = v10;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (float)SSVCADropInCallAnnouncementMinTTSVolume
{
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v3 = @"SSVCADeviceSimpleDropInCallAnnouncementMinTTSVolume";
    v4 = &unk_283668108;
  }

  else
  {
    if (v2 == 1)
    {
      v3 = @"SSVCADeviceDefaultDropInCallAnnouncementMinTTSVolume";
    }

    else
    {
      v3 = @"SSVCADeviceSimple2DropInCallAnnouncementMinTTSVolume";
    }

    v4 = &unk_283668098;
  }

  v5 = [a1 _getNumberFromASVDictionaryForKey:v3 category:@"smartSiriVolume" default:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (float)SSVCAMaximumCompensatedSpeechLevelNearField
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMaximumCompensatedSpeechLevelNearField" category:@"smartSiriVolume" default:&unk_2836680F8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCAHistoricalVolumeBufferSize
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAHistoricalVolumeBufferSize" category:@"smartSiriVolume" default:&unk_283667130];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCAVolumeHalfLifeSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAVolumeHalfLifeSeconds" category:@"smartSiriVolume" default:&unk_2836680E8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceDefaultMicSensitivityOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceDefaultMicSensitivityOffset" category:@"smartSiriVolume" default:&unk_283667D18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)SSVCADeviceSimpleASVOffMinTTSVolume
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v5 = @"SSVCADeviceSimpleASVOffMinTTSVolume";
    v6 = &unk_2836680C8;
LABEL_8:
    v7 = [a1 _getNumberFromASVDictionaryForKey:v5 category:@"smartSiriVolume" default:v6];
    [v7 floatValue];

    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 1)
  {
    v5 = @"SSVCADeviceSimple2ASVOffMinTTSVolume";
    v6 = &unk_2836680D8;
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[CSAsset(SmartSiriVolume) SSVCADeviceSimpleASVOffMinTTSVolume]";
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s Minimum TTS volume for ASV disabled case requested for device default!", &v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (float)SSVCADeviceDefaultASVOffMinTTSVolume
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceDefaultASVOffMinTTSVolume" category:@"smartSiriVolume" default:&unk_2836680B8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceDefaultMaxTTSVolume
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMaxTTSSystemVolumeSimple2" category:@"smartSiriVolume" default:&unk_283668048];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceDefaultMinTTSVolume
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMinTTSSystemVolumeSimple2" category:@"smartSiriVolume" default:&unk_283667F58];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceSimpleMaxTTSVolume
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCADeviceSimpleMaxTTSVolume";
    v3 = &unk_2836680A8;
  }

  else
  {
    v2 = @"SSVCAMaxTTSSystemVolumeSimple2";
    v3 = &unk_283668048;
  }

  v4 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)SSVCADeviceSimpleMinTTSVolume
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCADeviceSimpleMinTTSVolume";
    v3 = &unk_283668098;
  }

  else
  {
    v2 = @"SSVCAMinTTSSystemVolumeSimple2";
    v3 = &unk_283667F58;
  }

  v4 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)SSVCAUserIntentPermanentOffsetFactorUpperBound
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentPermanentOffsetFactorUpperBound" category:@"smartSiriVolume" default:&unk_283667E48];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAUserIntentPermanentOffsetFactorLowerBound
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentPermanentOffsetFactorLowerBound" category:@"smartSiriVolume" default:&unk_283668088];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAUserIntentPermanentOffsetFactorDelta
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentPermanentOffsetFactorDelta" category:@"smartSiriVolume" default:&unk_283668078];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAUserIntentVolumeDecreaseFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentVolumeDecreaseFactor" category:@"smartSiriVolume" default:&unk_283668068];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAUserIntentVolumeIncreaseFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentVolumeIncreaseFactor" category:@"smartSiriVolume" default:&unk_283668058];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCAUserIntentValidForSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAUserIntentValidForSeconds" category:@"smartSiriVolume" default:&unk_283667118];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCAMaxTTSSystemVolume
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCAMaxTTSSystemVolume";
    v3 = &unk_283667E08;
  }

  else
  {
    v2 = @"SSVCAMaxTTSSystemVolumeSimple2";
    v3 = &unk_283668048;
  }

  v4 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)SSVCAMinTTSSystemVolume
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCAMinTTSSystemVolume";
    v3 = &unk_283667D18;
  }

  else
  {
    v2 = @"SSVCAMinTTSSystemVolumeSimple2";
    v3 = &unk_283667F58;
  }

  v4 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (uint64_t)SSVCADeviceSimplePreTriggerSilenceSampleCount
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimplePreTriggerSilenceSampleCount" category:@"smartSiriVolume" default:&unk_283667100];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCADeviceSimpleMicSensitivityOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleMicSensitivityOffset" category:@"smartSiriVolume" default:&unk_283667CD8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceSimpleDBToSystemVolSlope
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleDBToSystemVolSlope" category:@"smartSiriVolume" default:&unk_283668038];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceSimpleMaxTargetDB
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleMaxTargetDB" category:@"smartSiriVolume" default:&unk_283667D18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceSimpleMinTargetDB
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADeviceSimpleMinTargetDB" category:@"smartSiriVolume" default:&unk_283667DA8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADeviceSimpleOutputSlope
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCADeviceSimpleOutputSlope";
    v3 = &unk_283668018;
  }

  else
  {
    v2 = @"SSVCADeviceSimple2OutputSlope";
    v3 = &unk_283668028;
  }

  v4 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)SSVCADeviceSimpleOutputMaxTargetDB
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCADeviceSimpleOutputMaxTargetDB";
  }

  else
  {
    v2 = @"SSVCADeviceSimple2OutputMaxTargetDB";
  }

  v3 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:&unk_283667D18];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)SSVCADeviceSimpleOutputMinTargetDB
{
  if ([MEMORY[0x277D018F8] horsemanDeviceType] == 2)
  {
    v2 = @"SSVCADeviceSimpleOutputMinTargetDB";
    v3 = &unk_283667FF8;
  }

  else
  {
    v2 = @"SSVCADeviceSimple2OutputMinTargetDB";
    v3 = &unk_283668008;
  }

  v4 = [a1 _getNumberFromASVDictionaryForKey:v2 category:@"smartSiriVolume" default:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (float)SSVCAMusicHistoricalSamplesInSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMusicHistoricalSamplesInSeconds" category:@"smartSiriVolume" default:&unk_283667DF8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCADistanceResultSampleCountTolerance
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADistanceResultSampleCountTolerance" category:@"smartSiriVolume" default:&unk_2836670E8];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCAExponentialDistanceHistoryDegradationFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAExponentialDistanceHistoryDegradationFactor" category:@"smartSiriVolume" default:&unk_283667FE8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCADistanceResultsBufferSize
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADistanceResultsBufferSize" category:@"smartSiriVolume" default:&unk_2836670D0];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVCADspNumStages
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADspNumStages" category:@"smartSiriVolume" default:&unk_2836670B8];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVCADspCoefsCount
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADspCoefsCount" category:@"smartSiriVolume" default:&unk_2836670A0];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVCANoiseActivityHistoricalSampleCount
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCANoiseActivityHistoricalSampleCount" category:@"smartSiriVolume" default:&unk_283667088];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCADefaultMusicStrength
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADefaultMusicStrength" category:@"smartSiriVolume" default:&unk_283667D18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADefaultSpeechStrength
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADefaultSpeechStrength" category:@"smartSiriVolume" default:&unk_283667FD8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCAMusicResultsBufferSize
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMusicResultsBufferSize" category:@"smartSiriVolume" default:&unk_283667070];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVCANoiseResultsBufferSize
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCANoiseResultsBufferSize" category:@"smartSiriVolume" default:&unk_283667070];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCANoiseActivityThreshold
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCANoiseActivityThreshold" category:@"smartSiriVolume" default:&unk_283667FC8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAMinimumDistanceUpdateWaitPeriodSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMinimumDistanceUpdateWaitPeriodSeconds" category:@"smartSiriVolume" default:&unk_283667E08];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSPostTransitionMultiplier
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPostTransitionMultiplier" category:@"smartSiriVolume" default:&unk_283667FB8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSPostTransitionDC
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPostTransitionDC" category:@"smartSiriVolume" default:&unk_283667E18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSPostTransitionOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPostTransitionOffset" category:@"smartSiriVolume" default:&unk_283667FA8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSPreTransitionMultiplier
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPreTransitionMultiplier" category:@"smartSiriVolume" default:&unk_283667F98];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSPreTransitionOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSPreTransitionOffset" category:@"smartSiriVolume" default:&unk_283667F88];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSTransitionPoint
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSTransitionPoint" category:@"smartSiriVolume" default:&unk_283667D48];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSMaximumOutput
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSMaximumOutput" category:@"smartSiriVolume" default:&unk_283667F78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADBToTTSMinimumOutput
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADBToTTSMinimumOutput" category:@"smartSiriVolume" default:&unk_283667F68];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidSpeechSteepness
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechSteepness" category:@"smartSiriVolume" default:&unk_283667F58];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidNoiseSteepness
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseSteepness" category:@"smartSiriVolume" default:&unk_283667F48];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)SSVCASignalToSigmoidMusicSteepnessDeviceSimple
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v5 = @"SSVCASignalToSigmoidMusicSteepnessDeviceSimple";
LABEL_8:
    v6 = [a1 _getNumberFromASVDictionaryForKey:v5 category:@"smartSiriVolume" default:&unk_283667F38];
    [v6 floatValue];

    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 1)
  {
    v5 = @"SSVCASignalToSigmoidMusicSteepnessDeviceSimple2";
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicSteepnessDeviceSimple]";
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s Music steepness requested for device default!", &v8, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (float)SSVCASignalToSigmoidMusicSteepnessDeviceDefault
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicSteepnessDeviceDefault" category:@"smartSiriVolume" default:&unk_283667F38];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidSpeechHOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechHOffset" category:@"smartSiriVolume" default:&unk_283667F28];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)SSVCASignalToSigmoidMusicHOffsetDeviceSimple
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v5 = @"SSVCASignalToSigmoidMusicHOffsetDeviceSimple";
    v6 = &unk_283667F18;
LABEL_8:
    v7 = [a1 _getNumberFromASVDictionaryForKey:v5 category:@"smartSiriVolume" default:v6];
    [v7 floatValue];

    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 1)
  {
    v5 = @"SSVCASignalToSigmoidMusicHOffsetDeviceSimple2";
    v6 = &unk_283667F08;
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicHOffsetDeviceSimple]";
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s H Offset requested for device default!", &v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (float)SSVCASignalToSigmoidMusicHOffsetDeviceDefault
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicHOffsetDeviceDefault" category:@"smartSiriVolume" default:&unk_283667F08];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidNoiseHOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseHOffset" category:@"smartSiriVolume" default:&unk_283667EF8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidSpeechVOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechVOffset" category:@"smartSiriVolume" default:&unk_283667EE8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)SSVCASignalToSigmoidMusicVOffsetDeviceSimple
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v5 = @"SSVCASignalToSigmoidMusicVOffsetDeviceSimple";
LABEL_8:
    v6 = [a1 _getNumberFromASVDictionaryForKey:v5 category:@"smartSiriVolume" default:&unk_283667D48];
    [v6 floatValue];

    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 1)
  {
    v5 = @"SSVCASignalToSigmoidMusicVOffsetDeviceSimple2";
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicVOffsetDeviceSimple]";
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s V Offset requested for device default!", &v8, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (float)SSVCASignalToSigmoidMusicVOffsetDeviceDefault
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicVOffsetDeviceDefault" category:@"smartSiriVolume" default:&unk_283667D48];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidNoiseVOffset
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseVOffset" category:@"smartSiriVolume" default:&unk_283667EE8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidSpeechVSpread
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechVSpread" category:@"smartSiriVolume" default:&unk_283667ED8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)SSVCASignalToSigmoidMusicVSpreadDeviceSimple
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v5 = @"SSVCASignalToSigmoidMusicVSpreadDeviceSimple";
LABEL_8:
    v6 = [a1 _getNumberFromASVDictionaryForKey:v5 category:@"smartSiriVolume" default:&unk_283667E78];
    [v6 floatValue];

    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 1)
  {
    v5 = @"SSVCASignalToSigmoidMusicVSpreadDeviceSimple2";
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicVSpreadDeviceSimple]";
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s V Spread requested for device default!", &v8, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (float)SSVCASignalToSigmoidMusicVSpreadDeviceDefault
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicVSpreadDeviceDefault" category:@"smartSiriVolume" default:&unk_283667E78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidNoiseVSpread
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseVSpread" category:@"smartSiriVolume" default:&unk_283667EC8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidSpeechDilationFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidSpeechDilationFactor" category:@"smartSiriVolume" default:&unk_283667D98];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)SSVCASignalToSigmoidMusicDilationFactorDeviceSimple
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] horsemanDeviceType];
  if (v2 == 2)
  {
    v5 = @"SSVCASignalToSigmoidMusicDilationFactorDeviceSimple";
    v6 = &unk_283667EB8;
LABEL_8:
    v7 = [a1 _getNumberFromASVDictionaryForKey:v5 category:@"smartSiriVolume" default:v6];
    [v7 floatValue];

    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 1)
  {
    v5 = @"SSVCASignalToSigmoidMusicDilationFactorDeviceSimple2";
    v6 = &unk_283667EA8;
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[CSAsset(SmartSiriVolume) SSVCASignalToSigmoidMusicDilationFactorDeviceSimple]";
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s Dilation factor requested for device default!", &v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (float)SSVCASignalToSigmoidMusicDilationFactorDeviceDefault
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidMusicDilationFactorDeviceDefault" category:@"smartSiriVolume" default:&unk_283667EA8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASignalToSigmoidNoiseDilationFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASignalToSigmoidNoiseDilationFactor" category:@"smartSiriVolume" default:&unk_283667E98];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCADecibelToLinearLogBase
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADecibelToLinearLogBase" category:@"smartSiriVolume" default:&unk_283667E88];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCALinearToDecibelConstantMultiplier
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCALinearToDecibelConstantMultiplier" category:@"smartSiriVolume" default:&unk_283667E78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAMaximumLinearSoundLevel
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMaximumLinearSoundLevel" category:@"smartSiriVolume" default:&unk_283667E68];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAMinimumLinearSoundLevel
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMinimumLinearSoundLevel" category:@"smartSiriVolume" default:&unk_283667E58];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (double)SSVCADistanceModelConfidenceThreshold
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADistanceModelConfidenceThreshold" category:@"smartSiriVolume" default:&unk_283667878];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASpeakerDistanceNearBoostFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASpeakerDistanceNearBoostFactor" category:@"smartSiriVolume" default:&unk_283667E48];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASpeakerDistanceMidBoostFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASpeakerDistanceMidBoostFactor" category:@"smartSiriVolume" default:&unk_283667E38];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCASpeakerDistanceFarBoostFactor
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASpeakerDistanceFarBoostFactor" category:@"smartSiriVolume" default:&unk_283667E28];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCANoiseActivityCountThreshold
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCANoiseActivityCountThreshold" category:@"smartSiriVolume" default:&unk_283667058];
  v2 = [v1 intValue];

  return v2;
}

- (float)SSVCADefaultOutputTTSVolume
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADefaultOutputTTSVolume" category:@"smartSiriVolume" default:&unk_283667E18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCAAnnouncementStatusFetchTimeoutMs
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAAnnouncementStatusFetchTimeoutMs" category:@"smartSiriVolume" default:&unk_283667040];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (float)SSVCADefaultZeroFloatingPointValue
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADefaultZeroFloatingPointValue" category:@"smartSiriVolume" default:&unk_283667D18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVCAListenPollingIntervalAtStartInSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAListenPollingIntervalAtStartInSeconds" category:@"smartSiriVolume" default:&unk_283667E08];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCADistanceInputBufferDurationSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCADistanceInputBufferDurationSeconds" category:@"smartSiriVolume" default:&unk_283667028];
  v2 = [v1 intValue];

  return v2;
}

- (float)SSVCAVoiceTriggerInitialSilenceDurationSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAVoiceTriggerInitialSilenceDurationSeconds" category:@"smartSiriVolume" default:&unk_283667DE8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCASmartSiriVolumeSyncedMetricLogsToRetain
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASmartSiriVolumeSyncedMetricLogsToRetain" category:@"smartSiriVolume" default:&unk_283667010];
  v2 = [v1 intValue];

  return v2;
}

- (uint64_t)SSVCASmartSiriVolumeUnsyncedMetricLogsToRetain
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCASmartSiriVolumeUnsyncedMetricLogsToRetain" category:@"smartSiriVolume" default:&unk_283667010];
  v2 = [v1 intValue];

  return v2;
}

- (float)SSVCAVoiceTriggerBasedTTSValidForSeconds
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAVoiceTriggerBasedTTSValidForSeconds" category:@"smartSiriVolume" default:&unk_283667DF8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVCAMaxFrameSize
{
  v1 = [a1 _getNumberFromASVDictionaryForKey:@"SSVCAMaxFrameSize" category:@"smartSiriVolume" default:&unk_283666FF8];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVDistanceChannelBitset
{
  v2 = &unk_283666F98;
  if (CSIsHorseman())
  {
    v3 = [MEMORY[0x277D018F8] horsemanDeviceType];
    v4 = &unk_283666F80;
    if (v3 != 3)
    {
      v4 = &unk_283666F98;
    }

    if (v3 == 2)
    {
      v2 = &unk_283666FE0;
    }

    else
    {
      v2 = v4;
    }
  }

  v5 = [a1 getNumberForKey:@"DistanceChannelBitset" category:@"smartSiriVolume" default:v2];
  v6 = [v5 unsignedLongLongValue];

  return v6;
}

- (uint64_t)SSVLKFSChannelBitset
{
  v2 = &unk_283666FB0;
  if (CSIsHorseman() && [MEMORY[0x277D018F8] horsemanDeviceType] == 3)
  {
    v2 = &unk_283666FC8;
  }

  v3 = [a1 getNumberForKey:@"LKFSChannelBitset" category:@"smartSiriVolume" default:v2];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (uint64_t)SSVNoiseLevelChannelBitset
{
  v2 = &unk_283666F98;
  if (CSIsHorseman())
  {
    v3 = [MEMORY[0x277D018F8] horsemanDeviceType];
    v4 = &unk_283666F80;
    if (v3 != 3)
    {
      v4 = &unk_283666F98;
    }

    if (v3 == 2)
    {
      v2 = &unk_283666F68;
    }

    else
    {
      v2 = v4;
    }
  }

  v5 = [a1 getNumberForKey:@"noiseLevelChannelBitset" category:@"smartSiriVolume" default:v2];
  v6 = [v5 unsignedLongLongValue];

  return v6;
}

- (void)SSVNoiseWeight
{
  v1 = [a1 getNumberForKey:@"noiseWeight" category:@"smartSiriVolume" default:&unk_283667DE8];
  [v1 floatValue];
}

- (float)SSVTTSVolumeUpperLimitDB
{
  v1 = [a1 getNumberForKey:@"TTSVolumeUpperLimitDB" category:@"smartSiriVolume" default:&unk_283667DC8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVTTSVolumeLowerLimitDB
{
  v1 = [a1 getNumberForKey:@"TTSVolumeLowerLimitDB" category:@"smartSiriVolume" default:&unk_283667DD8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVUserOffsetOutputRangeHigh
{
  v1 = [a1 getNumberForKey:@"userOffsetOutputRangeHigh" category:@"smartSiriVolume" default:&unk_283667DC8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVUserOffsetOutputRangeLow
{
  v1 = [a1 getNumberForKey:@"userOffsetOutputRangeLow" category:@"smartSiriVolume" default:&unk_283667DB8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVUserOffsetInputRangeHigh
{
  v1 = [a1 getNumberForKey:@"userOffsetInputRangeHigh" category:@"smartSiriVolume" default:&unk_283667D18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVUserOffsetInputRangeLow
{
  v1 = [a1 getNumberForKey:@"userOffsetInputRangeLow" category:@"smartSiriVolume" default:&unk_283667DA8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVLKFSTTSMappingOutputRangeHigh
{
  v1 = [a1 getNumberForKey:@"LKFSTTSMappingOutputRangeHigh" category:@"smartSiriVolume" default:&unk_283667D98];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVLKFSTTSMappingOutputRangeLow
{
  v1 = [a1 getNumberForKey:@"LKFSTTSMappingOutputRangeLow" category:@"smartSiriVolume" default:&unk_283667D88];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVLKFSTTSMappingInputRangeHigh
{
  v1 = [a1 getNumberForKey:@"LKFSTTSMappingInputRangeHigh" category:@"smartSiriVolume" default:&unk_283667D78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVLKFSTTSMappingInputRangeLow
{
  v1 = [a1 getNumberForKey:@"LKFSTTSMappingInputRangeLow" category:@"smartSiriVolume" default:&unk_283667D68];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseTTSMappingOutputRangeHigh
{
  v1 = [a1 getNumberForKey:@"noiseTTSMappingOutputRangeHigh" category:@"smartSiriVolume" default:&unk_283667D58];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseTTSMappingOutputRangeLow
{
  v1 = [a1 getNumberForKey:@"noiseTTSMappingOutputRangeLow" category:@"smartSiriVolume" default:&unk_283667D48];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseTTSMappingInputRangeHigh
{
  v1 = [a1 getNumberForKey:@"noiseTTSMappingInputRangeHigh" category:@"smartSiriVolume" default:&unk_283667D38];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseTTSMappingInputRangeLow
{
  v1 = [a1 getNumberForKey:@"noiseTTSMappingInputRangeLow" category:@"smartSiriVolume" default:&unk_283667D28];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVLKFSMicSensitivityOffset
{
  v1 = [a1 getNumberForKey:@"LKFSMicSensitivityOffset" category:@"smartSiriVolume" default:&unk_283667D18];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVLKFSTimeConstant
{
  v1 = [a1 getNumberForKey:@"LKFSTimeConstant" category:@"smartSiriVolume" default:&unk_283667D08];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseMicSensitivityOffsetDeviceSimple
{
  v1 = [a1 getNumberForKey:@"noiseMicSensitivityOffsetDeviceSimple" category:@"smartSiriVolume" default:&unk_283667CF8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseMicSensitivityOffset
{
  v1 = [a1 getNumberForKey:@"noiseMicSensitivityOffset" category:@"smartSiriVolume" default:&unk_283667CE8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)SSVNoiseTimeConstant
{
  v1 = [a1 getNumberForKey:@"noiseTimeConstant" category:@"smartSiriVolume" default:&unk_283667CD8];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)SSVLKFSUpperPercentile
{
  v1 = [a1 getNumberForKey:@"LKFSUpperPercentile" category:@"smartSiriVolume" default:&unk_283666F50];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVLKFSLowerPercentile
{
  v1 = [a1 getNumberForKey:@"LKFSLowerPercentile" category:@"smartSiriVolume" default:&unk_283666F38];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVNoiseUpperPercentile
{
  v1 = [a1 getNumberForKey:@"noiseUpperPercentile" category:@"smartSiriVolume" default:&unk_283666F50];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVNoiseLowerPercentile
{
  v1 = [a1 getNumberForKey:@"noiseLowerPercentile" category:@"smartSiriVolume" default:&unk_283666F38];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)SSVEnergyBufferSize
{
  v1 = [a1 getNumberForKey:@"energyBufferSize" category:@"smartSiriVolume" default:&unk_283666F20];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (id)_adaptiveSiriVolumeDictionary
{
  v1 = [a1 resourcePath];
  v2 = [v1 stringByAppendingPathComponent:@"siriVolume.json"];
  v3 = [MEMORY[0x277D015F8] decodeJson:v2];

  return v3;
}

+ (uint64_t)getSSVDeviceType
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

+ (uint64_t)SSVDefaultDistanceChannelCount
{
  if (CSIsHorseman())
  {
    v0 = [MEMORY[0x277D018F8] horsemanDeviceType];
    v1 = 16128;
    if (v0 == 3)
    {
      v1 = 3840;
    }

    if (v0 == 2)
    {
      v2 = 896;
    }

    else
    {
      v2 = v1;
    }
  }

  else
  {
    v2 = 16128;
  }

  v3 = MEMORY[0x277D018F8];

  return [v3 getNumElementInBitset:v2];
}

+ (uint64_t)SSVDefaultLKFSChannelCount
{
  if (CSIsHorseman())
  {
    if ([MEMORY[0x277D018F8] horsemanDeviceType] == 3)
    {
      v0 = 0x100000;
    }

    else
    {
      v0 = 16;
    }
  }

  else
  {
    v0 = 16;
  }

  v1 = MEMORY[0x277D018F8];

  return [v1 getNumElementInBitset:v0];
}

+ (uint64_t)SSVDefaultNoiseChannelCount
{
  if (CSIsHorseman())
  {
    v0 = [MEMORY[0x277D018F8] horsemanDeviceType];
    v1 = 16128;
    if (v0 == 3)
    {
      v1 = 3840;
    }

    if (v0 == 2)
    {
      v2 = 960;
    }

    else
    {
      v2 = v1;
    }
  }

  else
  {
    v2 = 16128;
  }

  v3 = MEMORY[0x277D018F8];

  return [v3 getNumElementInBitset:v2];
}

@end