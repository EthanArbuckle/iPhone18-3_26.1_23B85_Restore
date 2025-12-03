@interface CSContinuousVoiceTriggerConfigDecoder
+ (id)decodeConfigFrom:(id)from;
@end

@implementation CSContinuousVoiceTriggerConfigDecoder

+ (id)decodeConfigFrom:(id)from
{
  fromCopy = from;
  resourcePath = [fromCopy resourcePath];
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    v5 = @"config_marsh.txt";
  }

  else
  {
    v5 = @"config.txt";
  }

  v6 = [fromCopy getStringForKey:@"configFileNDAPI" category:@"continuousVoiceTrigger" default:v5];
  v7 = [fromCopy getNumberForKey:@"threshold" category:@"continuousVoiceTrigger" default:&unk_1F5916BF0];
  [v7 floatValue];
  v9 = v8;

  v10 = [fromCopy getNumberForKey:@"loggingThreshold" category:@"continuousVoiceTrigger" default:&unk_1F5916BF0];
  [v10 floatValue];
  v12 = v11;

  v13 = [fromCopy getNumberForKey:@"twoShotThreshold" category:@"continuousVoiceTrigger" default:&unk_1F5916C00];
  [v13 floatValue];
  v15 = v14;

  v16 = [fromCopy getNumberForKey:@"twoShotDecisionWaitTime" category:@"continuousVoiceTrigger" default:&unk_1F5916C10];
  [v16 floatValue];
  v18 = v17;

  v19 = [fromCopy getStringForKey:@"voiceTriggerPhraseIds" category:@"continuousVoiceTrigger" default:@"0"];
  v20 = [fromCopy getStringForKey:@"silencePhraseIds" category:@"continuousVoiceTrigger" default:@"1"];

  v21 = [v19 componentsSeparatedByString:{@", "}];
  v22 = [v21 valueForKeyPath:@"self.integerValue"];

  if (v22 && [v22 count])
  {
    if (+[CSUtils supportMph])
    {
      v23 = v22;
    }

    else
    {
      v24 = MEMORY[0x1E695DEC8];
      firstObject = [v22 firstObject];
      v23 = [v24 arrayWithObject:firstObject];
    }
  }

  else
  {
    v23 = 0;
  }

  v26 = [v20 componentsSeparatedByString:{@", "}];
  v27 = [v26 valueForKeyPath:@"self.integerValue"];

  v28 = [CSContinuousVoiceTriggerConfig alloc];
  v29 = [resourcePath stringByAppendingPathComponent:v6];
  LODWORD(v30) = v9;
  LODWORD(v31) = v12;
  LODWORD(v32) = v15;
  LODWORD(v33) = v18;
  v34 = [(CSContinuousVoiceTriggerConfig *)v28 initWithConfigPathNDAPI:v29 threshold:v23 loggingThreshold:v27 twoShotThreshold:v30 twoShotDecisionWaitTime:v31 voiceTriggerPhIds:v32 silencePhIds:v33];

  return v34;
}

@end