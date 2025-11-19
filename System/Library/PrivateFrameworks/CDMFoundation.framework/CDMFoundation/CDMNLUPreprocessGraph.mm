@interface CDMNLUPreprocessGraph
+ (id)getUsageForAssetSetName:(int64_t)a3 withLocale:(id)a4;
+ (id)requiredDAGServices;
- (void)buildGraph;
@end

@implementation CDMNLUPreprocessGraph

+ (id)requiredDAGServices
{
  v25[9] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v24 = NSStringFromClass(v3);
  v25[0] = v24;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v25[1] = v5;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v25[2] = v7;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v25[3] = v9;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v25[4] = v11;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v25[5] = v13;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v25[6] = v15;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v25[7] = v17;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v25[8] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:9];
  v21 = [v2 setWithArray:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
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
      v11 = "+[CDMNLUPreprocessGraph getUsageForAssetSetName:withLocale:]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s No usages found for asset set name %@", &v10, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [CDMAssetsUtils getAssistantUsages:a4];
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
  v6 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v60 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v58 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v7 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v54 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v56 = v7;
  v8 = [(CDMServiceGraph *)self getServiceByClass:objc_opt_class()];
  v158[0] = 0;
  v158[1] = v158;
  v158[2] = 0x3032000000;
  v158[3] = __Block_byref_object_copy__5026;
  v158[4] = __Block_byref_object_dispose__5027;
  v159 = 0;
  v156[0] = 0;
  v156[1] = v156;
  v156[2] = 0x3032000000;
  v156[3] = __Block_byref_object_copy__5026;
  v156[4] = __Block_byref_object_dispose__5027;
  v157 = 0;
  v154[0] = 0;
  v154[1] = v154;
  v154[2] = 0x3032000000;
  v154[3] = __Block_byref_object_copy__5026;
  v154[4] = __Block_byref_object_dispose__5027;
  v155 = 0;
  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x3032000000;
  v152[3] = __Block_byref_object_copy__5026;
  v152[4] = __Block_byref_object_dispose__5027;
  v153 = 0;
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x3032000000;
  v150[3] = __Block_byref_object_copy__5026;
  v150[4] = __Block_byref_object_dispose__5027;
  v151 = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x3032000000;
  v148[3] = __Block_byref_object_copy__5026;
  v148[4] = __Block_byref_object_dispose__5027;
  v149 = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x3032000000;
  v146[3] = __Block_byref_object_copy__5026;
  v146[4] = __Block_byref_object_dispose__5027;
  v147 = 0;
  v144[0] = 0;
  v144[1] = v144;
  v144[2] = 0x3032000000;
  v144[3] = __Block_byref_object_copy__5026;
  v144[4] = __Block_byref_object_dispose__5027;
  v145 = 0;
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x3032000000;
  v142[3] = __Block_byref_object_copy__5026;
  v142[4] = __Block_byref_object_dispose__5027;
  v143 = 0;
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x3032000000;
  v140[3] = __Block_byref_object_copy__5026;
  v140[4] = __Block_byref_object_dispose__5027;
  v141 = 0;
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x3032000000;
  v138[3] = __Block_byref_object_copy__5026;
  v138[4] = __Block_byref_object_dispose__5027;
  v139 = 0;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x3032000000;
  v136[3] = __Block_byref_object_copy__5026;
  v136[4] = __Block_byref_object_dispose__5027;
  v137 = 0;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x3032000000;
  v134[3] = __Block_byref_object_copy__5026;
  v134[4] = __Block_byref_object_dispose__5027;
  v135 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x3032000000;
  v132[3] = __Block_byref_object_copy__5026;
  v132[4] = __Block_byref_object_dispose__5027;
  v133 = 0;
  v9 = [(CDMServiceGraph *)self getGraphInput];
  v10 = [v9 siriNLUTypeObj];
  v11 = [(CDMServiceGraph *)self getLanguage];
  v12 = [(CDMServiceGraph *)self validateRequest:v10];
  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x3032000000;
  v130[3] = __Block_byref_object_copy__5026;
  v130[4] = __Block_byref_object_dispose__5027;
  [v12 utterance];
  v53 = v8;
  v50 = v12;
  v131 = v51 = v9;
  [(CDMServiceGraph *)self populateRequesterEnumForNluRequest:v10];
  v13 = [v10 requestId];
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke;
  v125[3] = &unk_1E862FA78;
  v128 = v130;
  v49 = v11;
  v126 = v49;
  v129 = v158;
  v14 = v3;
  v127 = v14;
  v15 = [(CDMServiceGraph *)self addNodeWithName:@"doCurrentTokenize" bindService:v14 requestId:v13 block:v125];

  v16 = [v10 requestId];
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_600;
  v120[3] = &unk_1E862FA78;
  v123 = v158;
  v17 = v10;
  v121 = v17;
  v124 = v152;
  v18 = v4;
  v122 = v18;
  v52 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanizationDateTime" bindService:v18 requestId:v16 block:v120];

  v19 = [v17 requestId];
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_603;
  v115[3] = &unk_1E862FA78;
  v118 = v158;
  v20 = v17;
  v116 = v20;
  v119 = v150;
  v21 = v5;
  v117 = v21;
  v63 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanizationRegex" bindService:v21 requestId:v19 block:v115];

  v22 = [v20 requestId];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_604;
  v110[3] = &unk_1E862FA78;
  v113 = v158;
  v23 = v20;
  v111 = v23;
  v114 = v148;
  v24 = v6;
  v112 = v24;
  v62 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanizationSiriVocabulary" bindService:v24 requestId:v22 block:v110];
  v48 = v14;

  v25 = [v23 requestId];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_605;
  v105[3] = &unk_1E862FA78;
  v108 = v158;
  v26 = v23;
  v106 = v26;
  v109 = v146;
  v27 = v60;
  v107 = v27;
  v61 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanizationVoc" bindService:v27 requestId:v25 block:v105];

  v28 = [v26 requestId];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_606;
  v104[3] = &unk_1E862F0E0;
  v104[4] = v144;
  v104[5] = v152;
  v104[6] = v150;
  v104[7] = v148;
  v104[8] = v146;
  v29 = [(CDMServiceGraph *)self addNodeWithName:@"doSpanization" requestId:v28 block:v104];
  v47 = v27;

  v30 = [v26 requestId];
  v96 = MEMORY[0x1E69E9820];
  v97 = 3221225472;
  v98 = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_2;
  v99 = &unk_1E862F108;
  v101 = v158;
  v100 = v58;
  v102 = v156;
  v103 = v154;
  v59 = v100;
  v31 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doEmbedding" requestId:? block:?];
  v46 = v21;

  v32 = [v26 requestId];
  v87 = MEMORY[0x1E69E9820];
  v88 = 3221225472;
  v89 = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_610;
  v90 = &unk_1E862F130;
  v93 = v142;
  v33 = v26;
  v91 = v33;
  v94 = v158;
  v95 = v140;
  v92 = v56;
  v57 = v92;
  v34 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doContextualSpanMatching" requestId:? block:?];
  v44 = v24;
  v45 = v18;

  v35 = [v33 requestId];
  v76 = MEMORY[0x1E69E9820];
  v77 = 3221225472;
  v78 = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_616;
  v79 = &unk_1E862F158;
  v82 = v138;
  v83 = v158;
  v84 = v156;
  v85 = v154;
  v36 = v33;
  v80 = v36;
  v86 = v136;
  v81 = v54;
  v55 = v81;
  v37 = [CDMServiceGraph addNodeWithName:"addNodeWithName:bindService:requestId:block:" bindService:@"doMentionDetection" requestId:? block:?];

  v38 = [v36 requestId];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_625;
  v66[3] = &unk_1E862F180;
  v69 = v136;
  v39 = v36;
  v67 = v39;
  v70 = v134;
  v71 = v158;
  v72 = v140;
  v73 = v156;
  v74 = v154;
  v75 = v132;
  v40 = v53;
  v68 = v40;
  v41 = [(CDMServiceGraph *)self addNodeWithName:@"doMentionResolving" bindService:v40 requestId:v38 block:v66];

  v42 = [v39 requestId];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_628;
  v64[3] = &unk_1E862F1A8;
  v64[4] = v158;
  v64[5] = v144;
  v64[6] = v132;
  objc_copyWeak(&v65, location);
  v43 = [(CDMServiceGraph *)self addNodeWithName:@"doPostProcess" requestId:v42 block:v64];

  [v52 addDependency:v15];
  [v63 addDependency:v15];
  [v62 addDependency:v15];
  [v61 addDependency:v15];
  [v29 addDependency:v52];
  [v29 addDependency:v63];
  [v29 addDependency:v62];
  [v29 addDependency:v61];
  [v31 addDependency:v15];
  [v34 addDependency:v15];
  [v41 addDependency:v34];
  [v37 addDependency:v31];
  [v41 addDependency:v37];
  [v43 addDependency:v29];
  [v43 addDependency:v41];

  objc_destroyWeak(&v65);
  _Block_object_dispose(v130, 8);

  _Block_object_dispose(v132, 8);
  _Block_object_dispose(v134, 8);

  _Block_object_dispose(v136, 8);
  _Block_object_dispose(v138, 8);

  _Block_object_dispose(v140, 8);
  _Block_object_dispose(v142, 8);

  _Block_object_dispose(v144, 8);
  _Block_object_dispose(v146, 8);

  _Block_object_dispose(v148, 8);
  _Block_object_dispose(v150, 8);

  _Block_object_dispose(v152, 8);
  _Block_object_dispose(v154, 8);

  _Block_object_dispose(v156, 8);
  _Block_object_dispose(v158, 8);

  objc_destroyWeak(location);
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use in CDMTokenizationProtoService", &v10, 0xCu);
  }

  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = 136315394;
    v11 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest, utterance: %@", &v10, 0x16u);
  }

  v4 = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(*(a1 + 48) + 8) + 40) locale:*(a1 + 32)];
  v5 = [*(a1 + 40) handle:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_600(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatchRequestCommand for use in CDMSpanMatchService", &v13, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) response];
  v4 = [*(a1 + 32) currentTurnInput];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];
  v7 = [CDMBaseSpanMatchService convertToSpanMatchRequest:v3 nlContext:v6];

  v8 = [[CDMSpanMatcherRequestCommand alloc] initWithRequest:v7];
  v9 = [*(a1 + 40) handle:v8];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_603(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatchRequestCommand for use in CDMSpanMatchService", &v13, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) response];
  v4 = [*(a1 + 32) currentTurnInput];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];
  v7 = [CDMBaseSpanMatchService convertToSpanMatchRequest:v3 nlContext:v6];

  v8 = [[CDMSpanMatcherRequestCommand alloc] initWithRequest:v7];
  v9 = [*(a1 + 40) handle:v8];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_604(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatchRequestCommand for use in CDMSpanMatchService", &v13, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) response];
  v4 = [*(a1 + 32) currentTurnInput];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];
  v7 = [CDMBaseSpanMatchService convertToSpanMatchRequest:v3 nlContext:v6];

  v8 = [[CDMSpanMatcherRequestCommand alloc] initWithRequest:v7];
  v9 = [*(a1 + 40) handle:v8];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_605(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMSpanMatchRequestCommand for use in CDMSpanMatchService", &v13, 0xCu);
  }

  v3 = [*(*(*(a1 + 48) + 8) + 40) response];
  v4 = [*(a1 + 32) currentTurnInput];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];
  v7 = [CDMBaseSpanMatchService convertToSpanMatchRequest:v3 nlContext:v6];

  v8 = [[CDMSpanMatcherRequestCommand alloc] initWithRequest:v7];
  v9 = [*(a1 + 40) handle:v8];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_606(void *a1)
{
  v2 = [CDMServiceGraphUtil mergeDateTimeSpans:*(*(a1[5] + 8) + 40) regexSpans:*(*(a1[6] + 8) + 40) siriVocabularySpans:*(*(a1[7] + 8) + 40) vocSpans:*(*(a1[8] + 8) + 40)];
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke_2";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMEmbeddingProtoRequestCommand for use in CDMEmbeddingProtoService", &v17, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D12B0]);
  v4 = [*(*(*(a1 + 40) + 8) + 40) response];
  v5 = [v4 tokenChain];
  [v3 setTokenChain:v5];

  v6 = [*(*(*(a1 + 40) + 8) + 40) response];
  v7 = [v6 text];
  [v3 setText:v7];

  v8 = [[CDMEmbeddingProtoRequestCommand alloc] initWithRequest:v3];
  v9 = [*(a1 + 32) handle:v8];
  v10 = [v9 response];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v9 embeddingConfigs];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_610(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315138;
    v23 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMContextualSpanMatcherRequestCommand for use in CDMContextualSpanMatcherService", &v22, 0xCu);
  }

  v3 = [CDMContextualSpanMatcherRequestCommand alloc];
  v4 = [*(a1 + 32) currentTurnInput];
  v5 = [v4 turnContext];
  v6 = [v5 nlContext];
  v7 = [*(a1 + 32) requestId];
  v8 = [*(*(*(a1 + 56) + 8) + 40) response];
  v9 = [v8 tokenChain];
  v10 = [CDMContextualSpanMatcherServiceUtils buildContextualSpanMatcherRequestWithNLContext:v6 requestId:v7 tokenChain:v9];
  v11 = [(CDMContextualSpanMatcherRequestCommand *)v3 initWithContextualSpanMatcherRequest:v10];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 40) handle:*(*(*(a1 + 48) + 8) + 40)];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(*(*(a1 + 64) + 8) + 40) cmdError];

  if (v17)
  {
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [*(*(*(a1 + 64) + 8) + 40) cmdError];
      v20 = [v19 localizedDescription];
      v22 = 136315394;
      v23 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: ContextualSpanMatcher prediction failed: %@", &v22, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_616(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v26 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMMentionDetectorRequestCommand for use in CDMMentionDetectorService", buf, 0xCu);
  }

  v22 = [CDMMentionDetectorRequestCommand alloc];
  v24 = [*(*(*(a1 + 56) + 8) + 40) response];
  v23 = [v24 text];
  v3 = [*(*(*(a1 + 56) + 8) + 40) response];
  v4 = [v3 tokenChain];
  v5 = [*(*(*(a1 + 64) + 8) + 40) embeddingTensorOutputs];
  v6 = [CDMServiceGraphUtil embeddingsOutput:v5 embeddingConfig:*(*(*(a1 + 72) + 8) + 40) forFactor:@"com.apple.siri.nl.marrs.md"];
  v7 = [*(a1 + 32) requestId];
  v8 = [v7 nluRequestId];
  v9 = [*(a1 + 32) requestId];
  v10 = [CDMMentionDetectorServiceUtils buildMDRequestWithUtterance:v23 tokenChain:v4 embedding:v6 nluRequestId:v8 resultCandidateId:&stru_1F5800F50 cdmRequestId:v9];
  v11 = [(CDMMentionDetectorRequestCommand *)v22 initWithMDRequest:v10 withCurrTurn:0];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 40) handle:*(*(*(a1 + 48) + 8) + 40)];
  v15 = *(*(a1 + 80) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(*(*(a1 + 80) + 8) + 40) cmdError];

  if (v17)
  {
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [*(*(*(a1 + 80) + 8) + 40) cmdError];
      v20 = [v19 localizedDescription];
      *buf = 136315394;
      v26 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: Mention Detection prediction failed: %@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_625(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v33 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Creating CDMMentionResolverRequestCommand for use in CDMMentionResolverService", buf, 0xCu);
  }

  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136315394;
    v33 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    v34 = 2112;
    v35 = v24;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s CDMMentionDetectorResponseCommand: %@", buf, 0x16u);
  }

  v26 = [*(a1 + 32) currentTurnInput];
  v25 = [CDMMentionResolverRequestCommand alloc];
  v31 = [*(*(*(a1 + 64) + 8) + 40) response];
  v29 = [v31 tokenChain];
  v28 = [*(*(*(a1 + 48) + 8) + 40) response];
  v27 = [*(*(*(a1 + 72) + 8) + 40) contextualSpanMatcherResponse];
  v30 = [*(*(*(a1 + 80) + 8) + 40) embeddingTensorOutputs];
  v4 = [CDMServiceGraphUtil embeddingsOutput:v30 embeddingConfig:*(*(*(a1 + 88) + 8) + 40) forFactor:@"com.apple.siri.nl.marrs.md"];
  v5 = [*(*(*(a1 + 64) + 8) + 40) response];
  v6 = [v5 text];
  v7 = [*(a1 + 32) previousTurnInputs];
  v8 = [v7 count];
  v9 = [*(a1 + 32) requestId];
  v10 = [v9 nluRequestId];
  v11 = [*(a1 + 32) requestId];
  v12 = [CDMMentionResolverServiceUtils buildMRRequestWithCurTurn:v26 tokenChain:v29 mdResponse:v28 contextualSpanMatcherResponse:v27 embedding:v4 utterance:v6 turnIndex:v8 nluRequestId:v10 resultCandidateId:&stru_1F5800F50 cdmRequestId:v11];
  v13 = [(CDMMentionResolverRequestCommand *)v25 initWithMRRequest:v12];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [*(a1 + 40) handle:*(*(*(a1 + 56) + 8) + 40)];
  v17 = *(*(a1 + 96) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = [*(*(*(a1 + 96) + 8) + 40) cmdError];

  if (v19)
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [*(*(*(a1 + 96) + 8) + 40) cmdError];
      v22 = [v21 localizedDescription];
      *buf = 136315394;
      v33 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: Mention Resolver prediction failed: %@", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __35__CDMNLUPreprocessGraph_buildGraph__block_invoke_628(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[CDMNLUPreprocessGraph buildGraph]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Final post process step", &v11, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D1350]);
  v4 = [*(*(*(a1 + 32) + 8) + 40) response];
  [v3 setTokenizerResponse:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69D12B8]);
  [v3 setEmbeddingResponse:v5];

  v6 = [*(*(*(a1 + 40) + 8) + 40) spanMatchResponse];
  [v3 setSpanMatchResponse:v6];

  v7 = [*(*(*(a1 + 48) + 8) + 40) response];
  [v3 setMentionResolverResponse:v7];

  v8 = [[CDMNLUPreprocessResponseCommand alloc] initWithPreprocessingWrapper:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setGraphOutput:v8];

  v10 = *MEMORY[0x1E69E9840];
}

@end