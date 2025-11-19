@interface CDMServiceTypeNames
+ (id)getNameStringToEnumDict;
+ (id)getServiceTypeNames;
@end

@implementation CDMServiceTypeNames

+ (id)getNameStringToEnumDict
{
  if (getNameStringToEnumDict_onceToken_7655 != -1)
  {
    dispatch_once(&getNameStringToEnumDict_onceToken_7655, &__block_literal_global_7656);
  }

  v3 = getNameStringToEnumDict_serviceTypeNameStringToEnum;

  return v3;
}

+ (id)getServiceTypeNames
{
  if (getServiceTypeNames_onceToken != -1)
  {
    dispatch_once(&getServiceTypeNames_onceToken, &__block_literal_global_67);
  }

  v3 = getServiceTypeNames_serviceTypeNames;

  return v3;
}

void __42__CDMServiceTypeNames_getServiceTypeNames__block_invoke()
{
  v3[22] = *MEMORY[0x1E69E9840];
  v3[0] = @"CDMComposerService";
  v3[1] = @"CDMContextUpdateService";
  v3[2] = @"CDMTokenizerProtoService";
  v3[3] = @"CDMEmbeddingProtoService";
  v3[4] = @"CDMShortcutService";
  v3[5] = @"CDMSNLCProtoService";
  v3[6] = @"CDMCATIProtoService";
  v3[7] = @"CDMNLv4ProtoService";
  v3[8] = @"CDMOverridesProtoService";
  v3[9] = @"CDMRepetitionDetectionService";
  v3[10] = @"CDMUaaPNLProtoService";
  v3[11] = @"CDMPSCService";
  v3[12] = @"CDMCcqrAerCbRService";
  v3[13] = @"CDMMentionDetectorService";
  v3[14] = @"CDMMentionResolverService";
  v3[15] = @"CDMContextualSpanMatcherService";
  v3[16] = @"CDMLVCService";
  v3[17] = @"CDMSSUService";
  v3[18] = @"CDMDateTimeSpanMatchService";
  v3[19] = @"CDMRegexSpanMatchService";
  v3[20] = @"CDMSiriVocabularySpanMatchService";
  v3[21] = @"CDMVocSpanMatchService";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:22];
  v1 = getServiceTypeNames_serviceTypeNames;
  getServiceTypeNames_serviceTypeNames = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __46__CDMServiceTypeNames_getNameStringToEnumDict__block_invoke()
{
  v26[22] = *MEMORY[0x1E69E9840];
  v25[0] = @"CDMComposerService";
  v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:21];
  v26[0] = v24;
  v25[1] = @"CDMContextUpdateService";
  v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:18];
  v26[1] = v23;
  v25[2] = @"CDMTokenizerProtoService";
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:11];
  v26[2] = v22;
  v25[3] = @"CDMEmbeddingProtoService";
  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:4];
  v26[3] = v21;
  v25[4] = @"CDMShortcutService";
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:14];
  v26[4] = v20;
  v25[5] = @"CDMSNLCProtoService";
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v26[5] = v19;
  v25[6] = @"CDMCATIProtoService";
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:10];
  v26[6] = v18;
  v25[7] = @"CDMNLv4ProtoService";
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v26[7] = v17;
  v25[8] = @"CDMOverridesProtoService";
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:13];
  v26[8] = v16;
  v25[9] = @"CDMRepetitionDetectionService";
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:15];
  v26[9] = v15;
  v25[10] = @"CDMUaaPNLProtoService";
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:8];
  v26[10] = v14;
  v25[11] = @"CDMPSCService";
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v26[11] = v13;
  v25[12] = @"CDMCcqrAerCbRService";
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:6];
  v26[12] = v0;
  v25[13] = @"CDMMentionDetectorService";
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:16];
  v26[13] = v1;
  v25[14] = @"CDMMentionResolverService";
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:17];
  v26[14] = v2;
  v25[15] = @"CDMContextualSpanMatcherService";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:19];
  v26[15] = v3;
  v25[16] = @"CDMLVCService";
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:22];
  v26[16] = v4;
  v25[17] = @"CDMSSUService";
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:23];
  v26[17] = v5;
  v25[18] = @"CDMDateTimeSpanMatchService";
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:24];
  v26[18] = v6;
  v25[19] = @"CDMRegexSpanMatchService";
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:25];
  v26[19] = v7;
  v25[20] = @"CDMSiriVocabularySpanMatchService";
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:26];
  v26[20] = v8;
  v25[21] = @"CDMVocSpanMatchService";
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:27];
  v26[21] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:22];
  v11 = getNameStringToEnumDict_serviceTypeNameStringToEnum;
  getNameStringToEnumDict_serviceTypeNameStringToEnum = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end