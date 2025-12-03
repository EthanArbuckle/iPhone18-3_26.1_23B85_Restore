@interface CSVoiceTriggerSecondPassConfigDecoder
+ (BOOL)decodeUseKeywordSpotting:(id)spotting fromCategory:(id)category;
+ (float)decodePreTriggerAudioTime:(id)time fromCategory:(id)category;
+ (float)decodePrependingAudioTime:(id)time fromCategory:(id)category;
+ (float)decodeTrailingAudioTime:(id)time fromCategory:(id)category;
+ (id)categoryForFirstPass:(unint64_t)pass;
+ (id)decodeConfigFileNDAPI:(id)i fromCategory:(id)category;
+ (id)decodeConfigFileRecognizer:(id)recognizer fromCategory:(id)category;
+ (id)decodeConfigFrom:(id)from forFirstPassSource:(unint64_t)source;
+ (id)decodeQuasarCheckerResultCutOffCount:(id)count fromCategory:(id)category;
+ (id)decodeWearerDetectionConfig:(id)config fromCategory:(id)category;
+ (id)fetchAllVoiceTriggerSecondPassRecognizer:(id)recognizer;
@end

@implementation CSVoiceTriggerSecondPassConfigDecoder

+ (id)fetchAllVoiceTriggerSecondPassRecognizer:(id)recognizer
{
  v25 = *MEMORY[0x1E69E9840];
  resourcePath = [recognizer resourcePath];
  v4 = [CSAsset getConfigFileNameForAssetType:0];
  v5 = [resourcePath stringByAppendingPathComponent:v4];
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

        v15 = [resourcePath stringByAppendingPathComponent:{*(*(&v20 + 1) + 8 * i), v20}];
        stringByStandardizingPath = [v15 stringByStandardizingPath];
        [v9 addObject:stringByStandardizingPath];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [v9 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)decodeWearerDetectionConfig:(id)config fromCategory:(id)category
{
  categoryCopy = category;
  configCopy = config;
  v7 = [configCopy getNumberForKey:@"remoteVADThreshold" category:categoryCopy default:&unk_1F5916CC0];
  [v7 floatValue];
  v9 = v8;

  v10 = [configCopy getNumberForKey:@"minimumPhraseLengthForVADGating" category:categoryCopy default:&unk_1F5916CD0];
  [v10 floatValue];
  v12 = v11;

  v13 = [configCopy getNumberForKey:@"secondPassShadowMicScoreThresholdForVADGating" category:categoryCopy default:&unk_1F5916CE0];
  [v13 floatValue];
  v15 = v14;

  v16 = [configCopy getNumberForKey:@"remoteVADMyriadThreshold" category:categoryCopy default:&unk_1F5916CC0];
  [v16 floatValue];
  v18 = v17;

  v19 = [configCopy getValueForKey:categoryCopy category:@"phrasesToSkipBoronDecisionMaking"];

  v20 = [CSVoiceTriggerAirPodWearerDetectionConfig alloc];
  LODWORD(v21) = v9;
  LODWORD(v22) = v12;
  LODWORD(v23) = v15;
  LODWORD(v24) = v18;
  v25 = [(CSVoiceTriggerAirPodWearerDetectionConfig *)v20 initWithThreshold:v19 minimumPhraseLength:v21 shadowMicScoreThreshold:v22 myriadThreshold:v23 phrasesToSkipBoronDecisionMaking:v24];

  return v25;
}

+ (BOOL)decodeUseKeywordSpotting:(id)spotting fromCategory:(id)category
{
  v4 = [spotting getNumberForKey:@"useKeywordSpotting" category:category default:MEMORY[0x1E695E110]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)decodeConfigFileRecognizer:(id)recognizer fromCategory:(id)category
{
  recognizerCopy = recognizer;
  categoryCopy = category;
  resourcePath = [recognizerCopy resourcePath];
  if (+[CSUtils horsemanDeviceType](CSUtils, "horsemanDeviceType") != 1 || ([recognizerCopy getStringForKey:@"configFileRecognizerB238" category:categoryCopy default:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [recognizerCopy getStringForKey:@"configFileRecognizer" category:categoryCopy default:@"recognizer.json"];
  }

  v9 = [resourcePath stringByAppendingPathComponent:v8];

  return v9;
}

+ (id)decodeConfigFileNDAPI:(id)i fromCategory:(id)category
{
  categoryCopy = category;
  iCopy = i;
  resourcePath = [iCopy resourcePath];
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

  v9 = [iCopy getStringForKey:@"configFileNDAPI" category:categoryCopy default:v8];

  v10 = [resourcePath stringByAppendingPathComponent:v9];

  return v10;
}

+ (float)decodeTrailingAudioTime:(id)time fromCategory:(id)category
{
  v4 = [time getNumberForKey:@"analyzerTrailingAudioTime" category:category default:&unk_1F5916CB0];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (float)decodePrependingAudioTime:(id)time fromCategory:(id)category
{
  v4 = [time getNumberForKey:@"analyzerPrependingAudioTime" category:category default:&unk_1F5916CA0];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (float)decodePreTriggerAudioTime:(id)time fromCategory:(id)category
{
  v4 = [time getNumberForKey:@"preTriggerAudioTime" category:category default:&unk_1F5916CA0];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

+ (id)decodeQuasarCheckerResultCutOffCount:(id)count fromCategory:(id)category
{
  v4 = [count getNumberForKey:@"quasarCheckerResultCutOffTime" category:category default:&unk_1F5916C90];
  [v4 floatValue];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];
  +[CSConfig inputRecordingSampleRate];
  *&v8 = v6 * *&v8;

  return [v7 numberWithFloat:v8];
}

+ (id)decodeConfigFrom:(id)from forFirstPassSource:(unint64_t)source
{
  v34 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v7 = [self categoryForFirstPass:source];
  if (([fromCopy containsCategory:v7] & 1) == 0)
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
  [self decodePreTriggerAudioTime:fromCopy fromCategory:v7];
  v11 = v10;
  [self decodePrependingAudioTime:fromCopy fromCategory:v7];
  v13 = v12;
  [self decodeTrailingAudioTime:fromCopy fromCategory:v7];
  v15 = v14;
  resourcePath = [fromCopy resourcePath];
  v16 = [self decodeConfigFileNDAPI:fromCopy fromCategory:v7];
  HIDWORD(v28) = [self decodeUseRecognizerCombination:fromCopy fromCategory:v7];
  v17 = [self decodeConfigFileRecognizer:fromCopy fromCategory:v7];
  v18 = [self decodeUseKeywordSpotting:fromCopy fromCategory:v7];
  v19 = [CSVoiceTriggerPhraseConfigDecoder decodeConfigFrom:fromCopy category:v7];
  v20 = [self decodeWearerDetectionConfig:fromCopy fromCategory:v7];
  v21 = [self decodeQuasarCheckerResultCutOffCount:fromCopy fromCategory:v7];
  LOBYTE(v28) = [self decodeuseTimeBasedTriggerLength:fromCopy fromCategory:v7];
  LODWORD(v22) = v11;
  LODWORD(v23) = v13;
  LODWORD(v24) = v15;
  v25 = [(CSVoiceTriggerSecondPassConfig *)v9 initWithPreTriggerAudioTime:resourcePath prependingAudioTime:v16 trailingAudioTime:HIDWORD(v28) resourcePath:v17 configPathNDAPI:v18 useRecognizerCombination:v19 configPathRecognizer:v22 useKeywordSpotting:v23 phraseConfigs:v24 wearerDetectionConfig:v20 quasarCheckerResultCutOffCount:v21 useTimeBasedTriggerLength:v28];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)categoryForFirstPass:(unint64_t)pass
{
  if (pass > 5)
  {
    if (pass <= 7)
    {
      if (pass != 6)
      {
        return @"voiceTriggerSecondPassRemora";
      }

      return @"voiceTriggerSecondPassHearst";
    }

    switch(pass)
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

  if (pass <= 2)
  {
    if (pass == 1)
    {
      return @"voiceTriggerSecondPassAP";
    }

    if (pass == 2)
    {
      return @"voiceTriggerSecondPassAOP";
    }

    return @"voiceTriggerSecondPass";
  }

  if (pass == 3)
  {
    return @"voiceTriggerSecondPassHearst";
  }

  if (pass == 4)
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