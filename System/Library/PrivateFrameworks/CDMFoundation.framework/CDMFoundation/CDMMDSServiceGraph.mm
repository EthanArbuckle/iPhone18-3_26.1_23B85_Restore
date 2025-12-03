@interface CDMMDSServiceGraph
+ (id)requiredDAGServices;
- (void)buildGraph;
@end

@implementation CDMMDSServiceGraph

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

- (void)buildGraph
{
  objc_initWeak(location, self);
  v3 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v4 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v5 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__3316;
  v77[4] = __Block_byref_object_dispose__3317;
  v78 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = __Block_byref_object_copy__3316;
  v75[4] = __Block_byref_object_dispose__3317;
  v76 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__3316;
  v73[4] = __Block_byref_object_dispose__3317;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__3316;
  v71[4] = __Block_byref_object_dispose__3317;
  v72 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = __Block_byref_object_copy__3316;
  v69[4] = __Block_byref_object_dispose__3317;
  v70 = 0;
  v6 = [MEMORY[0x1E696AD60] stringWithString:@"\n*** ✅ FOR DEBUGGING (start) ***"];
  getGraphInput = [(CDMServiceGraph *)self getGraphInput];
  siriNLUTypeObj = [getGraphInput siriNLUTypeObj];
  getLanguage = [(CDMServiceGraph *)self getLanguage];
  v10 = [(CDMServiceGraph *)self validateRequest:siriNLUTypeObj];
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__3316;
  v67[4] = __Block_byref_object_dispose__3317;
  [v10 utterance];
  v33 = v10;
  v68 = v34 = v5;
  [(CDMServiceGraph *)self populateRequesterEnumForNluRequest:siriNLUTypeObj];
  requestId = [siriNLUTypeObj requestId];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __32__CDMMDSServiceGraph_buildGraph__block_invoke;
  v60[3] = &unk_1E862ED50;
  v12 = siriNLUTypeObj;
  v61 = v12;
  v13 = getLanguage;
  v62 = v13;
  v66 = v77;
  v63 = v3;
  v14 = v6;
  v64 = v14;
  v15 = getGraphInput;
  v65 = v15;
  v32 = v63;
  v16 = [(CDMServiceGraph *)self addNodeWithName:@"doCurrentTokenize" bindService:v63 requestId:requestId block:v60];

  requestId2 = [v12 requestId];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __32__CDMMDSServiceGraph_buildGraph__block_invoke_594;
  v53[3] = &unk_1E862ED78;
  v55 = v77;
  v56 = v67;
  v18 = v4;
  v54 = v18;
  v57 = v73;
  v58 = v71;
  v59 = v75;
  v19 = [(CDMServiceGraph *)self addNodeWithName:@"doEmbedding" bindService:v18 requestId:requestId2 block:v53];
  v30 = v18;
  v31 = v16;

  requestId3 = [v12 requestId];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __32__CDMMDSServiceGraph_buildGraph__block_invoke_598;
  v43[3] = &unk_1E862EDA0;
  v21 = v34;
  v44 = v21;
  v22 = v12;
  v45 = v22;
  v47 = v67;
  v23 = v13;
  v46 = v23;
  v48 = v77;
  v49 = v73;
  v50 = v71;
  v51 = v69;
  objc_copyWeak(&v52, location);
  v24 = [(CDMServiceGraph *)self addNodeWithName:@"doMDSUaaPNLInference" bindService:v21 requestId:requestId3 block:v43];
  v35 = v23;

  requestId4 = [v22 requestId];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __32__CDMMDSServiceGraph_buildGraph__block_invoke_2;
  v36[3] = &unk_1E862EDC8;
  v40 = v69;
  v41 = v77;
  v26 = v22;
  v37 = v26;
  v27 = v15;
  v38 = v27;
  v28 = v14;
  v39 = v28;
  objc_copyWeak(&v42, location);
  v29 = [(CDMServiceGraph *)self addNodeWithName:@"doPostProcess" requestId:requestId4 block:v36];

  [v19 addDependency:v31];
  [v24 addDependency:v19];
  [v29 addDependency:v24];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v52);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v77, 8);

  objc_destroyWeak(location);
}

void __32__CDMMDSServiceGraph_buildGraph__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[CDMMDSServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use in CDMTokenizerProtoService", &v13, 0xCu);
  }

  v3 = [*(a1 + 32) currentTurnInput];
  v4 = [v3 asrOutputs];
  v5 = [CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:v4 locale:*(a1 + 40)];

  v6 = [*(a1 + 48) handle:v5];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [CDMServiceGraphUtil addDebugInfo:*(a1 + 56) nluRequest:*(a1 + 32) responseObject:*(*(*(a1 + 72) + 8) + 40)];
  v9 = *(*(*(a1 + 72) + 8) + 40);
  v10 = [*(a1 + 32) requestId];
  v11 = [*(a1 + 64) dataDispatcherContext];
  [CDMDataDispatcher dispatchCurrentTurnTokenizationData:v9 requestId:v10 dataDispatcherContext:v11];

  v12 = *MEMORY[0x1E69E9840];
}

void __32__CDMMDSServiceGraph_buildGraph__block_invoke_594(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[CDMMDSServiceGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMEmbeddingProtoRequestCommand for use in CDMEmbeddingProtoService", &v18, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D12B0]);
  v4 = [*(*(*(a1 + 40) + 8) + 40) response];
  v5 = [v4 tokenChain];
  [v3 setTokenChain:v5];

  [v3 setText:*(*(*(a1 + 48) + 8) + 40)];
  v6 = [[CDMEmbeddingProtoRequestCommand alloc] initWithRequest:v3];
  v7 = [*(a1 + 32) handle:v6];
  v8 = [v7 response];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v7 embeddingConfigs];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [SiriNLUInternalEmbeddingConverter convertFromProtoEmbeddingResponseCommand:*(*(*(a1 + 56) + 8) + 40)];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *MEMORY[0x1E69E9840];
}

void __32__CDMMDSServiceGraph_buildGraph__block_invoke_598(uint64_t a1)
{
  v17 = *(a1 + 32);
  v2 = [*(a1 + 40) requestId];
  v16 = *(a1 + 48);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [*(*(*(a1 + 64) + 8) + 40) response];
  v5 = [v4 tokenChain];
  v6 = [*(*(*(a1 + 72) + 8) + 40) embeddingTensorOutputs];
  v7 = [CDMServiceGraphUtil embeddingsOutput:v6 embeddingConfig:*(*(*(a1 + 80) + 8) + 40) forFactor:@"com.apple.siri.nl.uaap.mds"];
  v8 = [*(a1 + 40) currentTurnInput];
  v9 = *(*(a1 + 88) + 8);
  obj = *(v9 + 40);
  v20 = 0;
  v18 = 0;
  v10 = v2;
  LOBYTE(v3) = [CDMServiceGraphUtil runUaaPNLProtoService:v17 requestId:v2 utterance:v3 locale:v16 tokenChain:v5 matchingSpans:MEMORY[0x1E695E0F0] embeddingTensor:v7 currentTurn:v8 outUaapProtoRequest:&v20 outUaapProtoResponse:&obj outError:&v18];
  v11 = v20;
  objc_storeStrong((v9 + 40), obj);
  v12 = v18;

  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    [WeakRetained failedWithError:v12];
  }

  v14 = *(*(*(a1 + 88) + 8) + 40);
  v15 = [*(a1 + 40) requestId];
  [CDMDataDispatcher dispatchUaaPData:v11 withResponse:v14 requestId:v15];
}

void __32__CDMMDSServiceGraph_buildGraph__block_invoke_2(uint64_t a1)
{
  v3 = [CDMPostProcessUtils runPostProcess:0 snlcRequest:0 snlcResponse:0 nLv4Request:0 nLv4Response:0 uaapNLProtoResponse:*(*(*(a1 + 56) + 8) + 40) catiProtoResponse:0 pscRequest:0 pscResponse:0 lvcResponse:0 overridesProtoResponse:0 mdRequest:0 mdResponse:0 mrRequest:0 mrResponse:0 spanProtoResponse:0 rdResponse:0 tokenProtoResponse:*(*(*(a1 + 64) + 8) + 40) ssuResponse:0 ccqrResponse:0 correctionOutcome:0 nluRequest:*(a1 + 32) graphInput:*(a1 + 40) debugText:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setGraphOutput:v3];
}

@end