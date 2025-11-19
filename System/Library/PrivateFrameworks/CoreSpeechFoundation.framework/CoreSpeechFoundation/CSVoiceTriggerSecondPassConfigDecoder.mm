@interface CSVoiceTriggerSecondPassConfigDecoder
+ (BOOL)decodeUseKeywordSpotting:(id)a3 fromCategory:(id)a4;
+ (float)decodePreTriggerAudioTime:(id)a3 fromCategory:(id)a4;
+ (float)decodePrependingAudioTime:(id)a3 fromCategory:(id)a4;
+ (float)decodeTrailingAudioTime:(id)a3 fromCategory:(id)a4;
+ (id)categoryForFirstPass:(unint64_t)a3;
+ (id)decodeConfigFileNDAPI:(id)a3 fromCategory:(id)a4;
+ (id)decodeConfigFileRecognizer:(id)a3 fromCategory:(id)a4;
+ (id)decodeConfigFrom:(id)a3 forFirstPassSource:(unint64_t)a4;
+ (id)decodeQuasarCheckerResultCutOffCount:(id)a3 fromCategory:(id)a4;
+ (id)decodeWearerDetectionConfig:(id)a3 fromCategory:(id)a4;
+ (id)fetchAllVoiceTriggerSecondPassRecognizer:(id)a3;
@end

@implementation CSVoiceTriggerSecondPassConfigDecoder

+ (id)fetchAllVoiceTriggerSecondPassRecognizer:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [a3 resourcePath];
  v4 = [CSAsset getConfigFileNameForAssetType:0];
  v5 = [v3 stringByAppendingPathComponent:v4];
  if (+[CSUtils horsemanDeviceType]!= 1)
  {
    v7 = 0;
LABEL_6:
    v8 = [CSUtils readValuesFromJsonFile:v5 keyword:@"configFileRecognizer"];

    goto LABEL_7;
  }

  v6 = [CSUtils readValuesFromJsonFile:v5 keyword:@"configFileRecognizerB238"];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = v6;
  if (![v6 count])
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v3 stringByAppendingPathComponent:{*(*(&v20 + 1) + 8 * i), v20}];
        v16 = [v15 stringByStandardizingPath];
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [v9 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)decodeWearerDetectionConfig:(id)a3 fromCategory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 getNumberForKey:@"remoteVADThreshold" category:v5 default:&unk_1F5916CC0];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 getNumberForKey:@"minimumPhraseLengthForVADGating" category:v5 default:&unk_1F5916CD0];
  [v10 floatValue];
  v12 = v11;

  v13 = [v6 getNumberForKey:@"secondPassShadowMicScoreThresholdForVADGating" category:v5 default:&unk_1F5916CE0];
  [v13 floatValue];
  v15 = v14;

  v16 = [v6 getNumberForKey:@"remoteVADMyriadThreshold" category:v5 default:&unk_1F5916CC0];
  [v16 floatValue];
  v18 = v17;

  v19 = [v6 getValueForKey:v5 category:@"phrasesToSkipBoronDecisionMaking"];

  v20 = [CSVoiceTriggerAirPodWearerDetectionConfig alloc];
  LODWORD(v21) = v9;
  LODWORD(v22) = v12;
  LODWORD(v23) = v15;
  LODWORD(v24) = v18;
  v25 = [(CSVoiceTriggerAirPodWearerDetectionConfig *)v20 initWithThreshold:v19 minimumPhraseLength:v21 shadowMicScoreThreshold:v22 myriadThreshold:v23 phrasesToSkipBoronDecisionMaking:v24];

  return v25;
}

+ (BOOL)decodeUseKeywordSpotting:(id)a3 fromCategory:(id)a4
{
  v4 = [a3 getNumberForKey:@"useKeywordSpotting" category:a4 default:MEMORY[0x1E695E110]];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)decodeConfigFileRecognizer:(id)a3 fromCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 resourcePath];
  if (+[CSUtils horsemanDeviceType](CSUtils, "horsemanDeviceType") != 1 || ([v5 getStringForKey:@"configFileRecognizerB238" category:v6 default:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [v5 getStringForKey:@"configFileRecognizer" category:v6 default:@"recognizer.json"];
  }

  v9 = [v7 stringByAppendingPathComponent:v8];

  return v9;
}

+ (id)decodeConfigFileNDAPI:(id)a3 fromCategory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 resourcePath];
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    v8 = @"config_marsh.txt";
  }

  else
  {
    v8 = @"config.txt";
  }

  v9 = [v6 getStringForKey:@"configFileNDAPI" category:v5 default:v8];

  v10 = [v7 stringByAppendingPathComponent:v9];

  return v10;
}

+ (float)decodeTrailingAudioTime:(id)a3 fromCategory:(id)a4
{
  v4 = [a3 getNumberForKey:@"analyzerTrailingAudioTime" category:a4 default:&unk_1F5916CB0];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (float)decodePrependingAudioTime:(id)a3 fromCategory:(id)a4
{
  v4 = [a3 getNumberForKey:@"analyzerPrependingAudioTime" category:a4 default:&unk_1F5916CA0];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (float)decodePreTriggerAudioTime:(id)a3 fromCategory:(id)a4
{
  v4 = [a3 getNumberForKey:@"preTriggerAudioTime" category:a4 default:&unk_1F5916CA0];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (id)decodeQuasarCheckerResultCutOffCount:(id)a3 fromCategory:(id)a4
{
  v4 = [a3 getNumberForKey:@"quasarCheckerResultCutOffTime" category:a4 default:&unk_1F5916C90];
  [v4 floatValue];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];
  +[CSConfig inputRecordingSampleRate];
  *&v8 = v6 * *&v8;

  return [v7 numberWithFloat:v8];
}

+ (id)decodeConfigFrom:(id)a3 forFirstPassSource:(unint64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 categoryForFirstPass:a4];
  if (([v6 containsCategory:v7] & 1) == 0)
  {

    v8 = CSLogCategoryVT;
    v7 = @"voiceTriggerSecondPass";
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "+[CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:forFirstPassSource:]";
      v32 = 2114;
      v33 = @"voiceTriggerSecondPass";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s CategoryKey %{public}@ not found, falling back to default", buf, 0x16u);
    }
  }

  v9 = [CSVoiceTriggerSecondPassConfig alloc];
  [a1 decodePreTriggerAudioTime:v6 fromCategory:v7];
  v11 = v10;
  [a1 decodePrependingAudioTime:v6 fromCategory:v7];
  v13 = v12;
  [a1 decodeTrailingAudioTime:v6 fromCategory:v7];
  v15 = v14;
  v29 = [v6 resourcePath];
  v16 = [a1 decodeConfigFileNDAPI:v6 fromCategory:v7];
  HIDWORD(v28) = [a1 decodeUseRecognizerCombination:v6 fromCategory:v7];
  v17 = [a1 decodeConfigFileRecognizer:v6 fromCategory:v7];
  v18 = [a1 decodeUseKeywordSpotting:v6 fromCategory:v7];
  v19 = [CSVoiceTriggerPhraseConfigDecoder decodeConfigFrom:v6 category:v7];
  v20 = [a1 decodeWearerDetectionConfig:v6 fromCategory:v7];
  v21 = [a1 decodeQuasarCheckerResultCutOffCount:v6 fromCategory:v7];
  LOBYTE(v28) = [a1 decodeuseTimeBasedTriggerLength:v6 fromCategory:v7];
  LODWORD(v22) = v11;
  LODWORD(v23) = v13;
  LODWORD(v24) = v15;
  v25 = [(CSVoiceTriggerSecondPassConfig *)v9 initWithPreTriggerAudioTime:v29 prependingAudioTime:v16 trailingAudioTime:HIDWORD(v28) resourcePath:v17 configPathNDAPI:v18 useRecognizerCombination:v19 configPathRecognizer:v22 useKeywordSpotting:v23 phraseConfigs:v24 wearerDetectionConfig:v20 quasarCheckerResultCutOffCount:v21 useTimeBasedTriggerLength:v28];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)categoryForFirstPass:(unint64_t)a3
{
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 != 6)
      {
        return @"voiceTriggerSecondPassRemora";
      }

      return @"voiceTriggerSecondPassHearst";
    }

    switch(a3)
    {
      case 8uLL:
        return @"voiceTriggerSecondPassDuringRingtone";
      case 9uLL:
        return @"voiceTriggerSecondPassDuringConnectedCall";
      case 0xAuLL:
        return @"voiceTriggerSecondPassEnrollment";
    }

    return @"voiceTriggerSecondPass";
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      return @"voiceTriggerSecondPassAP";
    }

    if (a3 == 2)
    {
      return @"voiceTriggerSecondPassAOP";
    }

    return @"voiceTriggerSecondPass";
  }

  if (a3 == 3)
  {
    return @"voiceTriggerSecondPassHearst";
  }

  if (a3 == 4)
  {
    return @"voiceTriggerSecondPassJarvis";
  }

  if ([CSUtils supportCompactPlus:v3])
  {
    return @"voiceTriggerSecondPassPlus";
  }

  return @"voiceTriggerSecondPass";
}

@end