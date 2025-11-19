@interface CDMServiceNodeNames
+ (id)getNameStringToEnumDict;
@end

@implementation CDMServiceNodeNames

+ (id)getNameStringToEnumDict
{
  if (getNameStringToEnumDict_onceToken != -1)
  {
    dispatch_once(&getNameStringToEnumDict_onceToken, &__block_literal_global_5592);
  }

  v3 = getNameStringToEnumDict_serviceNodeNameStringToEnum;

  return v3;
}

void __46__CDMServiceNodeNames_getNameStringToEnumDict__block_invoke()
{
  v32[28] = *MEMORY[0x1E69E9840];
  v31[0] = @"doContextUpdate";
  v30 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v32[0] = v30;
  v31[1] = @"doCurrentTokenize";
  v29 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v32[1] = v29;
  v31[2] = @"doPreviousTurnsTokenize";
  v28 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v32[2] = v28;
  v31[3] = @"doEmbedding";
  v27 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:4];
  v32[3] = v27;
  v31[4] = @"doSpanization";
  v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:5];
  v32[4] = v26;
  v31[5] = @"doSpanizationDateTime";
  v25 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:28];
  v32[5] = v25;
  v31[6] = @"doSpanizationRegex";
  v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:29];
  v32[6] = v24;
  v31[7] = @"doSpanizationSiriVocabulary";
  v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:30];
  v32[7] = v23;
  v31[8] = @"doSpanizationVoc";
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:31];
  v32[8] = v22;
  v31[9] = @"doShortcutParse";
  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:6];
  v32[9] = v21;
  v31[10] = @"doSNLCInference";
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:7];
  v32[10] = v20;
  v31[11] = @"doCATIInference";
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:9];
  v32[11] = v19;
  v31[12] = @"doNLv4Inference";
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:10];
  v32[12] = v18;
  v31[13] = @"doOverridesProto";
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:11];
  v32[13] = v17;
  v31[14] = @"doRepetitionDetection";
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:12];
  v32[14] = v16;
  v31[15] = @"doPostProcess";
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:13];
  v32[15] = v15;
  v31[16] = @"endNode";
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:14];
  v32[16] = v14;
  v31[17] = @"doCorrectedUtteranceTokenize";
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:15];
  v32[17] = v13;
  v31[18] = @"doUaaPNLInference";
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:17];
  v32[18] = v0;
  v31[19] = @"doPSCInference";
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:18];
  v32[19] = v1;
  v31[20] = @"doLVCInference";
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:26];
  v32[20] = v2;
  v31[21] = @"doCcqrAerCbRInference";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:20];
  v32[21] = v3;
  v31[22] = @"doMentionDetection";
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:21];
  v32[22] = v4;
  v31[23] = @"doMentionResolving";
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:22];
  v32[23] = v5;
  v31[24] = @"doSpanMerging";
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:23];
  v32[24] = v6;
  v31[25] = @"doContextualSpanMatching";
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:24];
  v32[25] = v7;
  v31[26] = @"doSSUMatching";
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:27];
  v32[26] = v8;
  v31[27] = @"doNLv4SNLCMerging";
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:32];
  v32[27] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:28];
  v11 = getNameStringToEnumDict_serviceNodeNameStringToEnum;
  getNameStringToEnumDict_serviceNodeNameStringToEnum = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end