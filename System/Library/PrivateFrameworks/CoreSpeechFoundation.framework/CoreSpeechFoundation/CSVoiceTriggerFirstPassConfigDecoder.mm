@interface CSVoiceTriggerFirstPassConfigDecoder
+ (id)decodeConfigFrom:(id)from;
@end

@implementation CSVoiceTriggerFirstPassConfigDecoder

+ (id)decodeConfigFrom:(id)from
{
  v41 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  resourcePath = [fromCopy resourcePath];
  v5 = [fromCopy getStringForKey:@"configFileNDAPI" category:@"voiceTriggerFirstPass" default:@"config.txt"];
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 136315394;
    v38 = "+[CSVoiceTriggerFirstPassConfigDecoder decodeConfigFrom:]";
    v39 = 2112;
    v40 = v5;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Loading 1stPass-config=%@", &v37, 0x16u);
  }

  v7 = [fromCopy getNumberForKey:@"threshold" category:@"voiceTriggerFirstPass" default:&unk_1F5916C20];
  [v7 floatValue];
  v9 = v8;

  v10 = [fromCopy getNumberForKey:@"delaySecondsForChannelSelection" category:@"voiceTriggerFirstPass" default:&unk_1F5916C30];
  [v10 floatValue];
  v12 = v11;

  v13 = [fromCopy getNumberForKey:@"masterChannelScoreBoost" category:@"voiceTriggerFirstPass" default:&unk_1F5916C30];
  [v13 floatValue];
  v15 = v14;

  v16 = [fromCopy getNumberForKey:@"voiceIsolationChannelScoreBoost" category:@"voiceTriggerFirstPass" default:&unk_1F5916C30];
  [v16 floatValue];
  v18 = v17;

  v19 = [fromCopy getNumberForKey:@"processingChunkSeconds" category:@"voiceTriggerFirstPass" default:&unk_1F5916C40];
  [v19 floatValue];
  v21 = v20;

  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  v22 = -(CSIsHorseman_isHorseman ^ 1);
  if (CSIsHorseman_isHorseman)
  {
    v23 = 15;
  }

  else
  {
    v23 = 1;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23];
  v25 = [fromCopy getNumberForKey:@"processingChannelsBitset" category:@"voiceTriggerFirstPass" default:v24];
  unsignedLongLongValue = [v25 unsignedLongLongValue];

  v27 = [CSVoiceTriggerFirstPassConfig alloc];
  v28 = [resourcePath stringByAppendingPathComponent:v5];
  LODWORD(v29) = v9;
  LODWORD(v30) = v12;
  LODWORD(v31) = v15;
  LODWORD(v32) = v18;
  LODWORD(v33) = v21;
  v34 = [(CSVoiceTriggerFirstPassConfig *)v27 initWithConfigPathNDAPI:v28 threshold:unsignedLongLongValue delaySecondsForChannelSelection:v22 masterChannelScoreBoost:0xFFFFFFFFLL voiceIsolationChannelScoreBoost:v29 processingChunkSeconds:v30 processingChannelsBitset:v31 masterChannel:v32 voiceIsolationChannel:v33];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

@end