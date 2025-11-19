@interface CDMNLServiceUtils
+ (id)buildLVCResponse:(id)a3 lvcRequest:(id)a4;
+ (id)buildPSCResponse:(id)a3 pscRequest:(id)a4;
+ (id)buildPSCUserParseForExternalParserId:(id)a3 probability:(float)a4 rewriteMsg:(id)a5;
+ (id)buildSNLCProtoResponse:(id)a3 snlcRequest:(id)a4 parserToSet:(id)a5;
+ (id)buildSetupITFMRequest:(id)a3;
+ (id)buildSetupNLv4ProtoRequest:(id)a3;
+ (id)buildSetupSNLCProtoRequest:(id)a3;
+ (id)get_psc_index_to_parser;
+ (unique_ptr<sirinluinternalnlv4_parser::NLv4ParserRequest,)buildNLv4ProtoRequest:(id)a3;
+ (void)_setWarmupRequestId:(id)a3;
+ (void)populateParser:(id)a3 parserToSet:(id)a4;
@end

@implementation CDMNLServiceUtils

+ (void)_setWarmupRequestId:(id)a3
{
  v5 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v3 setHighInt:0];
  [v3 setLowInt:11];
  v4 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  [v4 setIdA:@"00000000-0000-0000-0000-00000000000B:0"];
  [v4 setConnectionId:@"4-8-15-16-23-42"];
  v5[2](v5, v3, v4);
}

+ (void)populateParser:(id)a3 parserToSet:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "+[CDMNLServiceUtils populateParser:parserToSet:]";
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Doing a sweep on userParses and if there isn't one, set it to parserToSet=%@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 parser];
          v14 = v13 == 0;

          if (v14)
          {
            v16 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v25 = "+[CDMNLServiceUtils populateParser:parserToSet:]";
              v26 = 2112;
              v27 = v6;
              _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s No parser set yet, set it to parserToSet=%@", buf, 0x16u);
            }

            [v12 setParser:v6];
          }

          else
          {
            v15 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v17 = [v12 parser];
              *buf = 136315394;
              v25 = "+[CDMNLServiceUtils populateParser:parserToSet:]";
              v26 = 2112;
              v27 = v17;
              _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s A parser is set already, moving on. parser=%@", buf, 0x16u);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "+[CDMNLServiceUtils populateParser:parserToSet:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Early return as it's an empty userParses (either nil or empty)", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)buildLVCResponse:(id)a3 lvcRequest:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v27 = [MEMORY[0x1E695DF70] array];
  v25 = +[CDMUserDefaultsUtils readUserDefaultLVCOverride];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v34 = "+[CDMNLServiceUtils buildLVCResponse:lvcRequest:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Checking user defaults for com.apple.siri.cdm LVC override...", buf, 0xCu);
  }

  if ([v25 length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69D1190]);
    [v5 setLanguageVariantName:v25];
    [v5 setLanguageVariantScore:1.0];
    v6 = CDMLogContext;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 dictionaryRepresentation];
      *buf = 136315650;
      v34 = "+[CDMNLServiceUtils buildLVCResponse:lvcRequest:]";
      v35 = 2112;
      *v36 = @"lvc";
      *&v36[8] = 2112;
      *&v36[10] = v7;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nWARNING: LVC override found. After override, LVC output %@", buf, 0x20u);
    }

    [v27 addObject:v5];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD60] string];
    [v5 appendString:@"LVC classification results: "];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v24 hypotheses];
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 label];
          [v11 probability];
          [v5 appendFormat:@"[symbol=%d, prob=%.2f], ", v12, v13];
          v14 = objc_alloc_init(MEMORY[0x1E69D1190]);
          if ([v11 hasStringLabel])
          {
            v15 = [v11 stringLabel];
            [v14 setLanguageVariantName:v15];
          }

          else
          {
            v15 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = [v11 label];
              [v11 probability];
              *buf = 136315650;
              v34 = "+[CDMNLServiceUtils buildLVCResponse:lvcRequest:]";
              v35 = 1024;
              *v36 = v17;
              *&v36[4] = 2048;
              *&v36[6] = v18;
              _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Language variant string representation is not set for label=%i prob=%.2f", buf, 0x1Cu);
            }
          }

          [v11 probability];
          [v14 setLanguageVariantScore:v16];
          [v27 addObject:v14];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    [objc_opt_class() _sortMultilingualVariantsByScoreDescending:v27];
  }

  v19 = objc_alloc_init(MEMORY[0x1E69D1180]);
  [v19 setMultilingualVariants:v27];
  v20 = [[CDMLVCResponseCommand alloc] initWithITFMResponse:v24 languageVariantResult:v19];
  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v34 = "+[CDMNLServiceUtils buildLVCResponse:lvcRequest:]";
    v35 = 2112;
    *v36 = v20;
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMLVCResponseCommand: %@", buf, 0x16u);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

uint64_t __64__CDMNLServiceUtils__sortMultilingualVariantsByScoreDescending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 languageVariantScore];
  v7 = v6;
  [v5 languageVariantScore];
  if (v7 >= v8)
  {
    [v4 languageVariantScore];
    v11 = v10;
    [v5 languageVariantScore];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)buildSetupITFMRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69D1320]);
  [v5 setOriginalUtterance:@"hello world"];
  [v5 setNormalisedUtterance:@"hello world"];
  v6 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v6 setValue:@"hello"];
  [v6 setTokenIndex:0];
  [v6 setBegin:0];
  [v6 setEnd:5];
  v7 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v7 setValue:@"world"];
  [v7 setTokenIndex:0];
  [v7 setBegin:6];
  [v7 setEnd:11];
  v8 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  v9 = [MEMORY[0x1E695DF70] arrayWithObjects:{v6, v7, 0}];
  [v8 setTokens:v9];

  [v5 setTokenChain:v8];
  v10 = objc_alloc_init(MEMORY[0x1E69D1328]);
  v11 = malloc_type_calloc([v8 tokensCount] * objc_msgSend(v4, "integerValue"), 4uLL, 0x100004052888210uLL);
  [v10 setValues:v11 count:{objc_msgSend(v8, "tokensCount") * objc_msgSend(v4, "integerValue")}];
  free(v11);
  [v10 setNumToken:{objc_msgSend(v8, "tokensCount")}];
  [v10 setNumLayer:1];
  [v10 setEmbeddingDim:{objc_msgSend(v4, "integerValue")}];
  [v10 setEmbedderId:@"embed_id"];
  v12 = objc_alloc_init(MEMORY[0x1E69D12D0]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__CDMNLServiceUtils_buildSetupITFMRequest___block_invoke;
  v16[3] = &unk_1E862F618;
  v13 = v12;
  v17 = v13;
  [a1 _setWarmupRequestId:v16];
  [v13 setTokenisedUtterance:v5];
  [v13 setEmbeddings:v10];
  v14 = [MEMORY[0x1E695DF70] array];
  [v13 setMatchingSpans:v14];

  return v13;
}

void __43__CDMNLServiceUtils_buildSetupITFMRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) setRequestId:v6];
  [*(a1 + 32) setNluRequestId:v5];
}

+ (id)buildPSCUserParseForExternalParserId:(id)a3 probability:(float)a4 rewriteMsg:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E69D1178]);
  [v9 setAsrHypothesisIndex:0];
  [v9 setExternalParserId:v7];
  [v9 setRewrite:v8];
  if (v8)
  {
    v10 = [v8 rewrittenUtterance];
    v11 = [v10 length];

    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69D1128]);
      v13 = [v8 rewrittenUtterance];
      [v12 setValue:v13];

      [v9 setRewrittenUtterance:v12];
    }
  }

  v14 = objc_alloc_init(MEMORY[0x1E69D1238]);
  [v14 setDelegated:v9];
  v15 = [MEMORY[0x1E695DF70] array];
  [v15 addObject:v14];
  v16 = objc_alloc_init(MEMORY[0x1E69D1240]);
  [v16 setUserDialogActs:v15];
  [v16 setProbability:a4];
  [v16 setParserId:@"POMMESClassifier"];
  v17 = MEMORY[0x1E69D13F8];
  v18 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v19 = [v17 convertFromUUID:v18];
  [v16 setIdA:v19];

  v20 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v20 setAlgorithm:2];
  [v20 setParserId:7];
  [v16 setParser:v20];

  return v16;
}

+ (id)buildPSCResponse:(id)a3 pscRequest:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v51 = a3;
  v50 = a4;
  v56 = [v50 rewriteMsg];
  if (v56)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v49 = [v56 rewrittenUtterance];
      *buf = 136315394;
      v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
      v68 = 2112;
      *v69 = v49;
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s PSC rewrittenUtterance being set to CCQR top hypothesis:%@", buf, 0x16u);
    }
  }

  v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [v51 hypotheses];
  v55 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [v51 hypotheses];
  v9 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v9)
  {
    v10 = *v63;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        if (([v12 hasStringLabel] & 1) == 0)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v31 = [v12 label];
            [v12 probability];
            *buf = 136315650;
            v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
            v68 = 1024;
            *v69 = v31;
            *&v69[4] = 2048;
            *&v69[6] = v32;
          }

          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v12, "label")];
          [v12 setStringLabel:v14];
        }

        v15 = [a1 get_psc_index_to_parser];
        v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "label")}];
        v17 = [v15 objectForKeyedSubscript:v16];

        if ([v17 length])
        {
          [v12 probability];
          v19 = v18;
          v20 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          [v57 setObject:v20 forKey:v17];

          v21 = +[CDMNLServiceUtils getPscOverrideProbabilityForLabel:](CDMNLServiceUtils, "getPscOverrideProbabilityForLabel:", [v12 label]);
          if (v21)
          {
            v23 = CDMLogContext;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [v12 stringLabel];
              [v21 floatValue];
              *buf = 136315906;
              v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
              v68 = 2112;
              *v69 = @"psc";
              *&v69[8] = 2112;
              *&v69[10] = v24;
              v70 = 2048;
              v71 = v25;
              _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nWARNING: PSC override found - setting '%@' parse to probability=%.2f", buf, 0x2Au);
            }

            [v21 floatValue];
            v19 = *&v22;
          }

          *&v22 = v19;
          v26 = [CDMNLServiceUtils buildPSCUserParseForExternalParserId:v17 probability:v56 rewriteMsg:v22];
          if (v19 < 0.6)
          {
            if (+[CDMFeatureFlags isAmbiguityRefactorEnabled])
            {
              v27 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315906;
                v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
                v68 = 2112;
                *v69 = v17;
                *&v69[8] = 2048;
                *&v69[10] = v19;
                v70 = 2048;
                v71 = 0.600000024;
                _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Not emitting PSC parse for externalParserId=%@: probability=%.2f < threshold=%.2f", buf, 0x2Au);
              }

              goto LABEL_30;
            }

            v30 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
              v68 = 2112;
              *v69 = v17;
              *&v69[8] = 2048;
              *&v69[10] = v19;
              v70 = 2048;
              v71 = 0.600000024;
              _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s PSC parse externalParserId=%@: probability=%.2f is below threshold (%.2f), but emitting due to ambiguity refactor being disabled.", buf, 0x2Au);
            }
          }

          [v55 addObject:v26];
LABEL_30:

          goto LABEL_31;
        }

        v21 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v12 stringLabel];
          [v12 probability];
          *buf = 136315650;
          v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
          v68 = 2112;
          *v69 = v28;
          *&v69[8] = 2048;
          *&v69[10] = v29;
          _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Not emitting PSC parse for label=%@ prob=%.2f, no externalParserId found", buf, 0x20u);
        }

LABEL_31:
      }

      v9 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v9);
  }

  if (![v55 count])
  {
    v53 = [v57 objectForKeyedSubscript:@"com.apple.search"];
    v52 = [v57 objectForKeyedSubscript:@"com.apple.search_phase_2"];
    if (v53)
    {
      if (v52)
      {
        [v53 floatValue];
        v34 = v33;
        [v52 floatValue];
        if ((v34 + v35) >= 0.6)
        {
          v75[0] = @"com.apple.search";
          v75[1] = @"com.apple.search_phase_2";
          [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v36 = v59 = 0u;
          v37 = [v36 countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v37)
          {
            v38 = *v59;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v59 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = *(*(&v58 + 1) + 8 * j);
                v41 = [v57 objectForKeyedSubscript:v40];
                [v41 floatValue];
                v43 = v42;
                v44 = [CDMNLServiceUtils buildPSCUserParseForExternalParserId:v40 probability:v56 rewriteMsg:?];
                v45 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136316162;
                  v67 = "+[CDMNLServiceUtils buildPSCResponse:pscRequest:]";
                  v68 = 2112;
                  *v69 = v40;
                  *&v69[8] = 2048;
                  *&v69[10] = v43;
                  v70 = 2048;
                  v71 = 0.600000024;
                  v72 = 2048;
                  v73 = 0x3FE3333340000000;
                  _os_log_debug_impl(&dword_1DC287000, v45, OS_LOG_TYPE_DEBUG, "%s PSC parse externalParserId=%@: probability=%.2f is below threshold (%.2f), but emitting as POMMES + POMMES_PHASE_2 > (%.2f).", buf, 0x34u);
                }

                [v55 addObject:v44];
              }

              v37 = [v36 countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v37);
          }
        }
      }
    }
  }

  v46 = [[CDMPSCResponseCommand alloc] initWithPscParses:v55 pscResponse:v51];

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

+ (id)buildSNLCProtoResponse:(id)a3 snlcRequest:(id)a4 parserToSet:(id)a5
{
  v79 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v60 = a4;
  v58 = a5;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v54 = [v7 hypotheses];
    v55 = [v54 firstObject];
    *buf = 136315394;
    v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
    v73 = 1024;
    LODWORD(v74) = [v55 label];
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s SNLC classification result=%i", buf, 0x12u);
  }

  v59 = +[CDMUserDefaultsUtils readUserDefaultSnlcOverride];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Checking user defaults for com.apple.siri.cdm SNLC override...", buf, 0xCu);
  }

  if ([v59 length])
  {
    if ([v59 isEqualToString:@"server"])
    {
      v10 = CDMLogContext;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
        v73 = 2112;
        v74 = @"snlc";
        v75 = 2112;
        v76 = @"server";
        v77 = 2048;
        v78 = 0x3FF0000000000000;
        _os_log_impl(&dword_1DC287000, v10, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nWARNING: SNLC defaults override found. Overriding SNLC classification result with %@ and probability=%.2f", buf, 0x2Au);
      }
    }

    else
    {
      if ([v59 isEqualToString:@"device"])
      {
        v11 = CDMLogContext;
        v12 = 1;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
          v73 = 2112;
          v74 = @"snlc";
          v75 = 2112;
          v76 = @"device";
          v77 = 2048;
          v78 = 0x3FF0000000000000;
          _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nWARNING: SNLC defaults override found. Overriding SNLC classification result with %@ and probability=%.2f", buf, 0x2Au);
        }

        goto LABEL_16;
      }

      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
        _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: Unknown SNLC override label. Falling back on SERVER", buf, 0xCu);
      }
    }

    v12 = 0;
LABEL_16:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v14 = [v7 hypotheses];
    v15 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v15)
    {
      v16 = *v66;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v66 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v65 + 1) + 8 * i);
          if ([v18 label] == v12)
          {
            LODWORD(v19) = 1.0;
            [v18 setProbability:v19];
          }

          else
          {
            v20 = [v7 hypotheses];
            *&v21 = 0.0 / ([v20 count] - 1);
            [v18 setProbability:v21];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v15);
    }

    v22 = CDMLogContext;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v7 hypotheses];
      v24 = [v23 firstObject];
      v25 = [v24 label];
      *buf = 136315650;
      v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
      v73 = 2112;
      v74 = @"snlc";
      v75 = 1024;
      LODWORD(v76) = v25;
      _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nCorrected SNLC classification result=%i (after override).", buf, 0x1Cu);
    }
  }

  v26 = [v60 rewriteMsg];
  v57 = v26;
  v27 = objc_alloc_init(MEMORY[0x1E69D1178]);
  [v27 setAsrHypothesisIndex:0];
  [v27 setExternalParserId:@"com.apple.siri.nlv3"];
  v28 = [v60 rewriteMsg];
  [v27 setRewrite:v28];

  v29 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
    v73 = 1024;
    LODWORD(v74) = v26 != 0;
    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s SNLC rewrittenUtterances size=%d", buf, 0x12u);
  }

  if (v26)
  {
    v30 = [v26 rewrittenUtterance];
    v31 = [v30 length] == 0;

    if (!v31)
    {
      v32 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v56 = [v26 rewrittenUtterance];
        *buf = 136315394;
        v72 = "+[CDMNLServiceUtils buildSNLCProtoResponse:snlcRequest:parserToSet:]";
        v73 = 2112;
        v74 = v56;
        _os_log_debug_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEBUG, "%s SNLC rewrittenUtterance being set to CCQR top hypothesis:%@", buf, 0x16u);
      }

      v33 = objc_alloc_init(MEMORY[0x1E69D1128]);
      v34 = [v26 rewrittenUtterance];
      [v33 setValue:v34];

      [v27 setRewrittenUtterance:v33];
    }
  }

  v35 = objc_alloc_init(MEMORY[0x1E69D1238]);
  [v35 setDelegated:v27];
  v36 = [MEMORY[0x1E695DF70] array];
  [v36 addObject:v35];
  v37 = objc_alloc_init(MEMORY[0x1E69D1240]);
  [v37 setUserDialogActs:v36];
  [v37 setParserId:@"ServerNLClassifier"];
  [v37 setParser:v58];
  v38 = [v60 parserRequest];
  v39 = [v38 requestId];
  [v37 setIdA:v39];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v40 = [v7 hypotheses];
  v41 = [v40 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v41)
  {
    v42 = *v62;
    while (2)
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v62 != v42)
        {
          objc_enumerationMutation(v40);
        }

        v44 = *(*(&v61 + 1) + 8 * j);
        if (![v44 label])
        {
          [v44 probability];
          [v37 setProbability:v45];
          goto LABEL_46;
        }
      }

      v41 = [v40 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

LABEL_46:

  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v37, 0}];
  v47 = [v7 hypotheses];
  [v47 sortUsingComparator:&__block_literal_global_466];

  v48 = [CDMSNLCProtoResponseCommand alloc];
  v49 = [v7 hypotheses];
  v50 = [v49 firstObject];
  v51 = -[CDMSNLCProtoResponseCommand initWithClassLabel:snlcParses:snlcResponse:](v48, "initWithClassLabel:snlcParses:snlcResponse:", [v50 label], v46, v7);

  v52 = *MEMORY[0x1E69E9840];

  return v51;
}

uint64_t __68__CDMNLServiceUtils_buildSNLCProtoResponse_snlcRequest_parserToSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 probability];
  v7 = v6;
  [v5 probability];
  if (v7 >= v8)
  {
    [v4 probability];
    v11 = v10;
    [v5 probability];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)buildSetupSNLCProtoRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69D1320]);
  [v5 setOriginalUtterance:@"hello world"];
  [v5 setNormalisedUtterance:@"hello world"];
  v6 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v6 setValue:@"hello"];
  [v6 setTokenIndex:0];
  [v6 setBegin:0];
  [v6 setEnd:5];
  v7 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v7 setValue:@"world"];
  [v7 setTokenIndex:0];
  [v7 setBegin:6];
  [v7 setEnd:11];
  v8 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  v9 = [MEMORY[0x1E695DF70] arrayWithObjects:{v6, v7, 0}];
  [v8 setTokens:v9];

  [v5 setTokenChain:v8];
  v10 = objc_alloc_init(MEMORY[0x1E69D1328]);
  v11 = malloc_type_calloc([v8 tokensCount] * objc_msgSend(v4, "integerValue"), 4uLL, 0x100004052888210uLL);
  [v10 setValues:v11 count:{objc_msgSend(v8, "tokensCount") * objc_msgSend(v4, "integerValue")}];
  free(v11);
  [v10 setNumToken:{objc_msgSend(v8, "tokensCount")}];
  [v10 setNumLayer:1];
  [v10 setEmbeddingDim:{objc_msgSend(v4, "integerValue")}];
  [v10 setEmbedderId:@"embed_id"];
  v12 = objc_alloc_init(MEMORY[0x1E69D12D0]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__CDMNLServiceUtils_buildSetupSNLCProtoRequest___block_invoke;
  v16[3] = &unk_1E862F618;
  v13 = v12;
  v17 = v13;
  [a1 _setWarmupRequestId:v16];
  [v13 setTokenisedUtterance:v5];
  [v13 setEmbeddings:v10];
  v14 = [MEMORY[0x1E695DF70] array];
  [v13 setMatchingSpans:v14];

  return v13;
}

void __48__CDMNLServiceUtils_buildSetupSNLCProtoRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) setRequestId:v6];
  [*(a1 + 32) setNluRequestId:v5];
}

+ (id)buildSetupNLv4ProtoRequest:(id)a3
{
  v36 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69D1310]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __48__CDMNLServiceUtils_buildSetupNLv4ProtoRequest___block_invoke;
  v37[3] = &unk_1E862F618;
  v5 = v4;
  v38 = v5;
  [a1 _setWarmupRequestId:v37];
  v35 = objc_alloc_init(MEMORY[0x1E69D1320]);
  [v35 setNormalisedUtterance:@"hello world"];
  [v35 setOriginalUtterance:@"hello world"];
  v6 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  [v6 setStringValue:@"hello world"];
  [v6 setLocale:@"en_US"];
  v7 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v7 setCleanValue:@"hello"];
  [v7 setValue:@"hello"];
  [v7 setTokenIndex:0];
  [v7 setBegin:0];
  [v7 setEnd:5];
  [v7 setIsSignificant:1];
  v8 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v8 setCleanValue:@"world"];
  [v8 setValue:@"world"];
  [v8 setTokenIndex:1];
  [v8 setBegin:6];
  [v8 setEnd:11];
  [v8 setIsSignificant:1];
  v9 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, v8, 0}];
  [v6 setTokens:v9];

  [v35 setTokenChain:v6];
  [v5 setTokenisedUtterance:v35];
  v10 = objc_alloc_init(MEMORY[0x1E69D1328]);
  v11 = malloc_type_calloc([v6 tokensCount] * objc_msgSend(v36, "integerValue"), 4uLL, 0x100004052888210uLL);
  [v10 setValues:v11 count:{objc_msgSend(v6, "tokensCount") * objc_msgSend(v36, "integerValue")}];
  free(v11);
  [v10 setNumToken:{objc_msgSend(v6, "tokensCount")}];
  [v10 setNumLayer:1];
  [v10 setEmbeddingDim:{objc_msgSend(v36, "integerValue")}];
  [v10 setEmbedderId:@"embed_id"];
  [v5 setEmbeddings:v10];
  v12 = objc_alloc_init(MEMORY[0x1E69D1228]);
  v13 = objc_alloc_init(MEMORY[0x1E69D1210]);
  [v12 setSystemDialogActGroup:v13];

  v14 = objc_alloc_init(MEMORY[0x1E69D1220]);
  [v12 setTurnContext:v14];

  v15 = objc_alloc_init(MEMORY[0x1E69D1198]);
  v16 = [v12 turnContext];
  [v16 setNlContext:v15];

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [v12 turnContext];
  v19 = [v18 nlContext];
  [v19 setActiveTasks:v17];

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [v12 turnContext];
  v22 = [v21 nlContext];
  [v22 setExecutedTasks:v20];

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [v12 turnContext];
  v25 = [v24 nlContext];
  [v25 setSalientEntities:v23];

  v26 = [MEMORY[0x1E695DF70] array];
  v27 = [v12 turnContext];
  v28 = [v27 nlContext];
  [v28 setSystemDialogActs:v26];

  v29 = objc_alloc_init(MEMORY[0x1E69D1210]);
  v30 = [v12 turnContext];
  v31 = [v30 nlContext];
  [v31 setSystemDialogActGroup:v29];

  [v5 setTurnInput:v12];
  v32 = [MEMORY[0x1E695DF70] array];
  [v5 setMatchingSpans:v32];

  [v5 setMaxNumParses:1];
  v33 = v5;

  return v5;
}

void __48__CDMNLServiceUtils_buildSetupNLv4ProtoRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) setRequestId:v6];
  [*(a1 + 32) setNluRequestId:v5];
}

+ (unique_ptr<sirinluinternalnlv4_parser::NLv4ParserRequest,)buildNLv4ProtoRequest:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "+[CDMNLServiceUtils buildNLv4ProtoRequest:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Convert SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest to sirinluinternalnlv4_parser::NLv4ParserRequest...", &v9, 0xCu);
  }

  v5 = MEMORY[0x1E69D1430];
  v6 = [v3 parserRequest];
  [v5 convertNLv4ParserRequestToCpp:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)get_psc_index_to_parser
{
  if (+[CDMNLServiceUtils get_psc_index_to_parser]::once != -1)
  {
    dispatch_once(&+[CDMNLServiceUtils get_psc_index_to_parser]::once, &__block_literal_global_7571);
  }

  v3 = +[CDMNLServiceUtils get_psc_index_to_parser]::_PSC_INDEX_TO_PARSER;

  return v3;
}

void __44__CDMNLServiceUtils_get_psc_index_to_parser__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5819D20;
  v3[1] = &unk_1F5819D08;
  v4[0] = &stru_1F5800F50;
  v4[1] = @"com.apple.search";
  v3[2] = &unk_1F5819D38;
  v4[2] = @"com.apple.search_phase_2";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = +[CDMNLServiceUtils get_psc_index_to_parser]::_PSC_INDEX_TO_PARSER;
  +[CDMNLServiceUtils get_psc_index_to_parser]::_PSC_INDEX_TO_PARSER = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end