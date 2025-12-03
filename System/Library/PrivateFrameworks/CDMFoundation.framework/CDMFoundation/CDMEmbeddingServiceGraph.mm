@interface CDMEmbeddingServiceGraph
+ (id)getUsageForAssetSetName:(int64_t)name withLocale:(id)locale;
+ (id)requiredDAGServices;
+ (id)responseFeatureStoreStreamId;
+ (id)serializeFeatureStoreWithResponseCmd:(id)cmd;
- (void)buildGraph;
@end

@implementation CDMEmbeddingServiceGraph

+ (id)requiredDAGServices
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v2 setWithArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getUsageForAssetSetName:(int64_t)name withLocale:(id)locale
{
  v14 = *MEMORY[0x1E69E9840];
  if (name)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:name];
      v10 = 136315394;
      v11 = "+[CDMEmbeddingServiceGraph getUsageForAssetSetName:withLocale:]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s No usages found for asset set name %@", &v10, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [CDMAssetsUtils getNLUsages:locale];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)serializeFeatureStoreWithResponseCmd:(id)cmd
{
  convertResponseToSubwordResponse = [cmd convertResponseToSubwordResponse];
  v4 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalSubwordEmbeddingResponseWithResponse:convertResponseToSubwordResponse formatType:@"json"];

  return v4;
}

+ (id)responseFeatureStoreStreamId
{
  v10 = *MEMORY[0x1E69E9840];
  if (!+[CDMPlatformUtils isInternalInstall])
  {
    v4 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = 136315138;
    v9 = "+[CDMEmbeddingServiceGraph responseFeatureStoreStreamId]";
    v5 = "%s Device not on internal build. Not inserting SubwordEmbeddingResponse to FeatureStore.";
LABEL_12:
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, v5, &v8, 0xCu);
    goto LABEL_7;
  }

  if (+[CDMUserDefaultsUtils isInsertEmbeddingOutputsToFeatureStoreEnabled])
  {
    v2 = @"SubwordEmbeddingResponse";
    v3 = @"SubwordEmbeddingResponse";
    goto LABEL_8;
  }

  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "+[CDMEmbeddingServiceGraph responseFeatureStoreStreamId]";
    v5 = "%s UserDefault for inserting CDMEmbeddingGraph outputs to FeatureStore is not enabled. Not inserting SubwordEmbeddingResponse to FeatureStore.";
    goto LABEL_12;
  }

LABEL_7:

  v2 = 0;
LABEL_8:
  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)buildGraph
{
  objc_initWeak(&location, self);
  v3 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v4 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__10302;
  v32[4] = __Block_byref_object_dispose__10303;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__10302;
  v30[4] = __Block_byref_object_dispose__10303;
  v31 = 0;
  getGraphInput = [(CDMServiceGraph *)self getGraphInput];
  getLanguage = [(CDMServiceGraph *)self getLanguage];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__10302;
  v28[4] = __Block_byref_object_dispose__10303;
  text = [getGraphInput text];
  requestId = [getGraphInput requestId];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __38__CDMEmbeddingServiceGraph_buildGraph__block_invoke;
  v23[3] = &unk_1E862FA78;
  v26 = v28;
  v8 = getLanguage;
  v24 = v8;
  v27 = v32;
  v9 = v3;
  v25 = v9;
  v10 = [(CDMServiceGraph *)self addNodeWithName:@"doCurrentTokenize" bindService:v9 requestId:requestId block:v23];

  requestId2 = [getGraphInput requestId];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __38__CDMEmbeddingServiceGraph_buildGraph__block_invoke_515;
  v17 = &unk_1E862FAA8;
  v19 = v32;
  v20 = v28;
  v21 = v30;
  v12 = v4;
  v18 = v12;
  objc_copyWeak(&v22, &location);
  v13 = [(CDMServiceGraph *)self addNodeWithName:@"doEmbedding" bindService:v12 requestId:requestId2 block:&v14];

  [v13 addDependency:{v10, v14, v15, v16, v17}];
  objc_destroyWeak(&v22);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
  objc_destroyWeak(&location);
}

void __38__CDMEmbeddingServiceGraph_buildGraph__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[CDMEmbeddingServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use in CDMTokenizerProtoService", &v8, 0xCu);
  }

  v3 = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(*(a1 + 48) + 8) + 40) locale:*(a1 + 32)];
  v4 = [*(a1 + 40) handle:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

void __38__CDMEmbeddingServiceGraph_buildGraph__block_invoke_515(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[CDMEmbeddingServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMEmbeddingProtoRequestCommand for use in CDMEmbeddingProtoService", &v17, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D12B0]);
  v4 = [*(*(*(a1 + 40) + 8) + 40) response];
  v5 = [v4 tokenChain];
  [v3 setTokenChain:v5];

  [v3 setText:*(*(*(a1 + 48) + 8) + 40)];
  v6 = [[CDMEmbeddingProtoRequestCommand alloc] initWithRequest:v3];
  v7 = [*(a1 + 32) handle:v6];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) cmdError];
  LOBYTE(v5) = v10 == 0;

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v12 = [*(*(*(a1 + 56) + 8) + 40) cmdError];
    v13 = [v12 localizedDescription];
    [WeakRetained failedWithErrorCode:1 errorDomain:@"doEmbeddingNode" message:v13];
  }

  v14 = [[CDMEmbeddingGraphResponseCommand alloc] initWithEmbeddingProtoResponseCommand:*(*(*(a1 + 56) + 8) + 40)];
  v15 = objc_loadWeakRetained((a1 + 64));
  [v15 setGraphOutput:v14];

  v16 = *MEMORY[0x1E69E9840];
}

@end