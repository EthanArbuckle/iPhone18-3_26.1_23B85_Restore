@interface CDMSsuInferenceServiceGraph
+ (id)getUsageForAssetSetName:(int64_t)a3 withLocale:(id)a4;
+ (id)requiredDAGServices;
- (void)buildGraph;
@end

@implementation CDMSsuInferenceServiceGraph

+ (id)requiredDAGServices
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13 = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14 = v6;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v15 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v10 = [v2 setWithArray:{v9, v13, v14}];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)getUsageForAssetSetName:(int64_t)a3 withLocale:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v10 = 136315394;
      v11 = "+[CDMSsuInferenceServiceGraph getUsageForAssetSetName:withLocale:]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s No usages found for asset set name %@", &v10, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [CDMAssetsUtils getSsuUsages:a4];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)buildGraph
{
  objc_initWeak(location, self);
  v3 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v4 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v5 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__2112;
  v47[4] = __Block_byref_object_dispose__2113;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__2112;
  v45[4] = __Block_byref_object_dispose__2113;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__2112;
  v43[4] = __Block_byref_object_dispose__2113;
  v44 = 0;
  v6 = [(CDMServiceGraph *)self getGraphInput];
  v7 = [(CDMServiceGraph *)self getLanguage];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__2112;
  v41[4] = __Block_byref_object_dispose__2113;
  v8 = [v6 ssuRequest];
  v42 = [v8 utterance];

  v9 = [v6 ssuRequest];
  v10 = [v9 requestId];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__CDMSsuInferenceServiceGraph_buildGraph__block_invoke;
  v36[3] = &unk_1E862FA78;
  v39 = v41;
  v11 = v7;
  v37 = v11;
  v40 = v47;
  v12 = v3;
  v38 = v12;
  v13 = [(CDMServiceGraph *)self addNodeWithName:@"doCurrentTokenize" bindService:v12 requestId:v10 block:v36];

  v14 = [v6 ssuRequest];
  v15 = [v14 requestId];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __41__CDMSsuInferenceServiceGraph_buildGraph__block_invoke_585;
  v32[3] = &unk_1E862ECB0;
  v34 = v47;
  v35 = v45;
  v16 = v4;
  v33 = v16;
  v17 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanization" bindService:v16 requestId:v15 block:v32];

  v18 = [v6 ssuRequest];
  v19 = [v18 requestId];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __41__CDMSsuInferenceServiceGraph_buildGraph__block_invoke_589;
  v24[3] = &unk_1E862ECD8;
  v20 = v6;
  v25 = v20;
  v21 = v11;
  v26 = v21;
  v28 = v45;
  v29 = v41;
  v30 = v43;
  v22 = v5;
  v27 = v22;
  objc_copyWeak(&v31, location);
  v23 = [(CDMServiceGraph *)self addNodeWithName:@"doSSUMatching" bindService:v22 requestId:v19 block:v24];

  [v17 addDependency:v13];
  [v23 addDependency:v17];

  objc_destroyWeak(&v31);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  objc_destroyWeak(location);
}

void __41__CDMSsuInferenceServiceGraph_buildGraph__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[CDMSsuInferenceServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use in CDMTokenizerProtoService", &v8, 0xCu);
  }

  v3 = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(*(a1 + 48) + 8) + 40) locale:*(a1 + 32)];
  v4 = [*(a1 + 40) handle:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

void __41__CDMSsuInferenceServiceGraph_buildGraph__block_invoke_585(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[CDMSsuInferenceServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatchRequestCommand for use in CDMSiriVocabularySpanMatchService", &v13, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D1198]);
  v4 = [*(*(*(a1 + 40) + 8) + 40) responses];
  v5 = [CDMBaseSpanMatchService convertToSpanMatchRequests:v4 nlContext:v3];

  v6 = [[CDMSpanMatcherRequestCommand alloc] initWithRequests:v5];
  v7 = [*(a1 + 32) handle:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = 136315394;
    v14 = "[CDMSsuInferenceServiceGraph buildGraph]_block_invoke";
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s SiriVocabularySpanMatchResponse: %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __41__CDMSsuInferenceServiceGraph_buildGraph__block_invoke_589(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v27 = 136315138;
    v28 = "[CDMSsuInferenceServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Building SSU request for use in CDMSSUService", &v27, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D13A8]);
  v4 = [*(a1 + 32) ssuRequest];
  v5 = [v4 requestId];
  [v3 setNluRequestId:v5];

  v6 = MEMORY[0x1E69D13F8];
  v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v8 = [v6 convertFromUUID:v7];
  [v3 setAsrId:v8];

  [v3 setLocale:*(a1 + 40)];
  v9 = [*(*(*(a1 + 56) + 8) + 40) spanMatchResponse];
  v10 = [v9 matchingSpans];
  v11 = [v10 mutableCopy];

  [v3 setMatchingSpans:v11];
  [v3 setUtterance:*(*(*(a1 + 64) + 8) + 40)];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  [v3 setSalientEntities:v12];
  v13 = [[CDMSSURequestCommand alloc] initWithParserRequest:v3];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    __assert_rtn("[CDMSsuInferenceServiceGraph buildGraph]_block_invoke", "CDMSsuInferenceServiceGraph.m", 129, "ssuResponseCommand == nil");
  }

  v14 = v13;
  v15 = [*(a1 + 48) handle:v13];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = objc_alloc_init(MEMORY[0x1E69D11E0]);
  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = [*(*(*(a1 + 72) + 8) + 40) ssuResponse];
  v21 = [v20 hypotheses];
  v22 = [v19 initWithArray:v21];
  [v18 setParses:v22];

  v23 = [[CDMSsuInferenceGraphResponseCommand alloc] initWithSsuResponse:v18];
  v24 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v27 = 136315394;
    v28 = "[CDMSsuInferenceServiceGraph buildGraph]_block_invoke";
    v29 = 2112;
    v30 = v18;
    _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s CDMSsuInferenceGraphResponse: ssuResponse=%@", &v27, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained setGraphOutput:v23];

  v26 = *MEMORY[0x1E69E9840];
}

@end