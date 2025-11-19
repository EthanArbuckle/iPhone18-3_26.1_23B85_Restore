@interface CDMServiceGraphUtil
+ (BOOL)debugInfoEnabled:(id)a3;
+ (BOOL)runUaaPNLProtoService:(id)a3 requestId:(id)a4 utterance:(id)a5 locale:(id)a6 tokenChain:(id)a7 matchingSpans:(id)a8 embeddingTensor:(id)a9 currentTurn:(id)a10 outUaapProtoRequest:(id *)a11 outUaapProtoResponse:(id *)a12 outError:(id *)a13;
+ (BOOL)spanHasMatcherName:(int)a3 matchingSpan:(id)a4;
+ (id)adjustProtoMatchingSpans:(id)a3 tokenChain:(id)a4 outError:(id *)a5;
+ (id)appendMarrsSpans:(id)a3 marrsMRSpans:(id)a4;
+ (id)buildLVCRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 rewriteMsg:(id)a7 nluRequestId:(id)a8 reformedTurnInput:(id)a9 error:(id *)a10;
+ (id)buildNLv4ProtoRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 currentTurn:(id)a7 requestId:(id)a8 outError:(id *)a9;
+ (id)buildNormalizedUtterance:(id)a3;
+ (id)buildPSCRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 rewriteMsg:(id)a7 nluRequestId:(id)a8 currentTurn:(id)a9 error:(id *)a10;
+ (id)buildRepetitionResult:(id)a3;
+ (id)buildSNLCProtoRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 rewriteMsg:(id)a7 requestId:(id)a8 currentTurn:(id)a9 error:(id *)a10;
+ (id)embeddingsOutput:(id)a3 embeddingConfig:(id)a4 forFactor:(id)a5;
+ (id)extractPrevTurnsAsrConfidence:(id)a3;
+ (id)extractReferenceResolutionUtterances:(id)a3;
+ (id)extractStableEmbeddings:(id)a3;
+ (id)getNonWhitespaceTokenChain:(id)a3;
+ (id)mergeDateTimeSpans:(id)a3 regexSpans:(id)a4 siriVocabularySpans:(id)a5 vocSpans:(id)a6;
+ (id)overrideInputsFromUtterance:(id)a3 matchingSpans:(id)a4 tokenChain:(id)a5 contextUpdateReformedTurnInputBundle:(id)a6;
+ (id)prepareCcqrServiceRequest:(id)a3 currentTurnAsrConf:(double)a4 tokenResponse:(id)a5 previousTurnsAsrConf:(id)a6 previousTurnTokenizationResponseCommand:(id)a7 nluRequestId:(id)a8 resultCandidateId:(id)a9 cdmRequestId:(id)a10;
+ (id)prepareCcqrTokens:(id)a3 currentTurn:(id)a4 previousTurns:(id)a5 utterance:(id)a6 locale:(id)a7;
+ (id)runCcqrService:(id)a3 nluRequest:(id)a4 tokenResponse:(id)a5 previousTurnTokenizationResponseCommand:(id)a6 rdResponse:(id)a7 requestLink:(id)a8 locale:(id)a9;
+ (void)addDebugInfo:(id)a3 nluRequest:(id)a4 responseObject:(id)a5;
@end

@implementation CDMServiceGraphUtil

+ (id)embeddingsOutput:(id)a3 embeddingConfig:(id)a4 forFactor:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_23:
      v23 = 0;
      goto LABEL_30;
    }

    *buf = 136315138;
    v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
    v24 = "%s Got nil embeddingsOutput, return nil";
LABEL_34:
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
    goto LABEL_23;
  }

  if (!v8)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 136315138;
    v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
    v24 = "%s Got nil embeddingConfig, return nil";
    goto LABEL_34;
  }

  v10 = [v8 getEmbeddingConfigForFactor:v9];
  v11 = v10;
  if (v10)
  {
    v27 = v9;
    v28 = v8;
    v12 = [v10 embeddingModelVersion];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v7;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          if ([v18 hasEmbeddingVersion])
          {
            v19 = [v18 embeddingVersion];
            v20 = [v19 isEqualToString:v12];

            if (v20)
            {
              if ([v18 hasEmbeddingTensor])
              {
                v23 = [v18 embeddingTensor];

                goto LABEL_28;
              }

              v21 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: Did not find a EmbeddingTensorOutput that matches version=%@, returning nil.", buf, 0x16u);
    }

    v23 = 0;
LABEL_28:
    v8 = v28;
    v7 = v29;
    v9 = v27;
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: No EmbeddingConfigItem for factor=%@, return nil", buf, 0x16u);
    }

    v23 = 0;
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)extractStableEmbeddings:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 isStableEmbeddingsVersion])
          {
            if ([v10 hasEmbeddingTensor])
            {
              v13 = [v10 embeddingTensor];
              goto LABEL_21;
            }

            v11 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = [v10 embeddingVersion];
              *buf = 136315394;
              v22 = "+[CDMServiceGraphUtil extractStableEmbeddings:]";
              v23 = 2112;
              v24 = v12;
              _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: Found a stable embedding version %@, but it doesn't have embeddingTensor? skip this one", buf, 0x16u);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "+[CDMServiceGraphUtil extractStableEmbeddings:]";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Did not find a stableEmbeddingVersion match, returning nil.", buf, 0xCu);
    }

    v13 = 0;
LABEL_21:
    v4 = v16;
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v22 = "+[CDMServiceGraphUtil extractStableEmbeddings:]";
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Got nil embeddingsOutput, return nil", buf, 0xCu);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)appendMarrsSpans:(id)a3 marrsMRSpans:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = v7;
  if (v5)
  {
    [v7 addObjectsFromArray:v5];
  }

  if (v6 && [v6 count])
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "+[CDMServiceGraphUtil appendMarrsSpans:marrsMRSpans:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Feeding mention resolver spans to NLv4", &v12, 0xCu);
    }

    [v8 addObjectsFromArray:v6];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)mergeDateTimeSpans:(id)a3 regexSpans:(id)a4 siriVocabularySpans:(id)a5 vocSpans:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 spanMatchResponse];
  v14 = [v13 matchingSpansCount];
  v15 = [v11 spanMatchResponse];
  v16 = [v15 matchingSpansCount] + v14;
  v17 = [v10 spanMatchResponse];
  v18 = [v17 matchingSpansCount];
  v19 = [v9 spanMatchResponse];
  v20 = v18 + [v19 matchingSpansCount];

  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16 + v20];
  v22 = [v12 spanMatchResponse];

  v23 = [v22 matchingSpans];
  [v21 addObjectsFromArray:v23];

  v24 = [v11 spanMatchResponse];

  v25 = [v24 matchingSpans];
  [v21 addObjectsFromArray:v25];

  v26 = [v10 spanMatchResponse];

  v27 = [v26 matchingSpans];
  [v21 addObjectsFromArray:v27];

  v28 = [v9 spanMatchResponse];

  v29 = [v28 matchingSpans];
  [v21 addObjectsFromArray:v29];

  v30 = objc_alloc_init(MEMORY[0x1E69D13A0]);
  [v30 setMatchingSpans:v21];
  v31 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v35 = v31;
    v39 = 136315650;
    v40 = "+[CDMServiceGraphUtil mergeDateTimeSpans:regexSpans:siriVocabularySpans:vocSpans:]";
    v41 = 2112;
    v42 = @"spanmatch";
    v43 = 1024;
    LODWORD(v44) = [v21 count];
    _os_log_debug_impl(&dword_1DC287000, v35, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSpan Matcher Services generated number of spans: %d", &v39, 0x1Cu);

    v31 = CDMLogContext;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v36 = MEMORY[0x1E69D1438];
    v37 = v31;
    v38 = [v36 printableSpanMatchResponse:v30 withUSOGraph:{+[CDMUserDefaultsUtils isPrintUSOInSpanEnabled](CDMUserDefaultsUtils, "isPrintUSOInSpanEnabled")}];
    v39 = 136315650;
    v40 = "+[CDMServiceGraphUtil mergeDateTimeSpans:regexSpans:siriVocabularySpans:vocSpans:]";
    v41 = 2112;
    v42 = @"spanmatch";
    v43 = 2112;
    v44 = v38;
    _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSpanMatchResponse: %@", &v39, 0x20u);
  }

  v32 = [[CDMSpanMatchProtoResponseCommand alloc] initWithResponse:v30];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)buildLVCRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 rewriteMsg:(id)a7 nluRequestId:(id)a8 reformedTurnInput:(id)a9 error:(id *)a10
{
  v65 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v53 = a6;
  v46 = a7;
  v52 = a8;
  v51 = a9;
  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v61 = "+[CDMServiceGraphUtil buildLVCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:reformedTurnInput:error:]";
    _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALITFMITFMParserRequest for LVC...", buf, 0xCu);
  }

  v19 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v20 = [CDMServiceGraphUtil buildNormalizedUtterance:v15];
  [v19 setNormalisedUtterance:v20];

  v47 = v17;
  [v19 setOriginalUtterance:v17];
  v59 = 0;
  v48 = v16;
  v50 = [objc_opt_class() adjustProtoMatchingSpans:v16 tokenChain:v15 outError:&v59];
  v44 = v59;
  v21 = objc_alloc(MEMORY[0x1E695DF70]);
  v22 = [v15 tokens];
  v23 = [v21 initWithCapacity:{objc_msgSend(v22, "count")}];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v49 = v15;
  v24 = [v15 tokens];
  v25 = [v24 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v56;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v55 + 1) + 8 * i);
        if ([v29 isWhitespace])
        {
          v30 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v61 = "+[CDMServiceGraphUtil buildLVCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:reformedTurnInput:error:]";
            v62 = 2112;
            v63 = v29;
            _os_log_impl(&dword_1DC287000, v30, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
          }
        }

        else
        {
          [v23 addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v26);
  }

  v31 = [v49 copy];
  [v31 setTokens:v23];
  v54 = v31;
  [v19 setTokenChain:v31];
  v32 = objc_alloc_init(MEMORY[0x1E69D12D0]);
  [v32 setNluRequestId:v52];
  [v32 setTokenisedUtterance:v19];
  v33 = [MEMORY[0x1E695DF70] arrayWithArray:v50];
  [v32 setMatchingSpans:v33];

  [v32 setEmbeddings:v53];
  v34 = [v51 currentTurn];
  [v32 setTurnInput:v34];

  v35 = [v32 turnInput];
  v36 = [v35 turnContext];
  v37 = [v36 legacyNlContext];

  if ([v37 hasPreviousDomainName])
  {
    v38 = [v32 turnInput];
    v39 = [v38 turnContext];
    [v39 setLegacyNlContext:v37];
  }

  v40 = [CDMServiceGraphUtil overrideInputsFromUtterance:v47 matchingSpans:v48 tokenChain:v49 contextUpdateReformedTurnInputBundle:v51, v44];
  v41 = [[CDMLVCRequestCommand alloc] initWithParserRequest:v32 rewriteMsg:v46 overridesInputs:v40];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

+ (id)buildPSCRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 rewriteMsg:(id)a7 nluRequestId:(id)a8 currentTurn:(id)a9 error:(id *)a10
{
  v70 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v56 = a7;
  v19 = a8;
  v59 = a9;
  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v67 = "+[CDMServiceGraphUtil buildPSCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:currentTurn:error:]";
    _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALITFMITFMParserRequest...", buf, 0xCu);
  }

  v21 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v22 = [CDMServiceGraphUtil buildNormalizedUtterance:v15];
  [v21 setNormalisedUtterance:v22];

  v58 = v21;
  [v21 setOriginalUtterance:v17];
  [objc_opt_class() filterMatchingSpans:v16 withMatcherName:7];
  v55 = v64 = 0;
  v23 = [objc_opt_class() adjustProtoMatchingSpans:v55 tokenChain:v15 outError:&v64];
  v57 = v64;
  if (v23)
  {
    v53 = v23;
    v54 = v19;
    v50 = v17;
    v51 = v16;
    v24 = objc_alloc(MEMORY[0x1E695DF70]);
    v25 = [v15 tokens];
    v26 = [v24 initWithCapacity:{objc_msgSend(v25, "count")}];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v52 = v15;
    v27 = [v15 tokens];
    v28 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v61;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v60 + 1) + 8 * i);
          if ([v32 isWhitespace])
          {
            v33 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v67 = "+[CDMServiceGraphUtil buildPSCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:currentTurn:error:]";
              v68 = 2112;
              v69 = v32;
              _os_log_impl(&dword_1DC287000, v33, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
            }
          }

          else
          {
            [v26 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v29);
    }

    v15 = v52;
    v34 = [v52 copy];
    [v34 setTokens:v26];
    [v58 setTokenChain:v34];
    v35 = objc_alloc_init(MEMORY[0x1E69D12D0]);
    v36 = [v54 nluRequestId];
    [v35 setRequestId:v36];

    [v35 setNluRequestId:v54];
    [v35 setTokenisedUtterance:v58];
    v37 = [MEMORY[0x1E695DF70] arrayWithArray:v53];
    [v35 setMatchingSpans:v37];

    [v35 setEmbeddings:v18];
    [v35 setTurnInput:v59];
    v38 = [v35 turnInput];
    v39 = [v38 turnContext];
    v40 = [v39 legacyNlContext];

    if ([v40 hasPreviousDomainName])
    {
      v41 = [v35 turnInput];
      v42 = [v41 turnContext];
      [v42 setLegacyNlContext:v40];
    }

    v43 = v56;
    v44 = [[CDMPSCRequestCommand alloc] initWithParserRequest:v35 rewriteMsg:v56];

    v17 = v50;
    v16 = v51;
    v19 = v54;
    v45 = v55;
    v23 = v53;
  }

  else
  {
    v46 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v49 = [v57 localizedDescription];
      *buf = 136315394;
      v67 = "+[CDMServiceGraphUtil buildPSCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:currentTurn:error:]";
      v68 = 2112;
      v69 = v49;
      _os_log_error_impl(&dword_1DC287000, v46, OS_LOG_TYPE_ERROR, "%s [ERR]: Error converting matched spans: %@", buf, 0x16u);
    }

    v43 = v56;
    v44 = 0;
    if (a10)
    {
      *a10 = v57;
    }

    v45 = v55;
  }

  v47 = *MEMORY[0x1E69E9840];

  return v44;
}

+ (id)overrideInputsFromUtterance:(id)a3 matchingSpans:(id)a4 tokenChain:(id)a5 contextUpdateReformedTurnInputBundle:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 currentTurn];
  v32 = v12;
  v14 = [v12 previousTurns];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E69D1338]);
  v35 = v9;
  [v16 setUtterance:v9];
  v33 = v11;
  [v16 setTokenChain:v11];
  v34 = v10;
  [v16 setMatchingSpans:v10];
  v31 = v13;
  [v16 setTurnInput:v13];
  v29 = v16;
  [v15 addObject:v16];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v14;
  v17 = [v14 reverseObjectEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = objc_alloc_init(MEMORY[0x1E69D1338]);
        v24 = [v22 asrOutputs];
        v25 = [v24 objectAtIndex:0];
        v26 = [v25 utterance];

        [v23 setUtterance:v26];
        [v23 setTurnInput:v22];
        [v15 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)buildSNLCProtoRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 rewriteMsg:(id)a7 requestId:(id)a8 currentTurn:(id)a9 error:(id *)a10
{
  v67 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v55 = a6;
  v54 = a7;
  v18 = a8;
  v53 = a9;
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v64 = "+[CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:requestId:currentTurn:error:]";
    _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALITFMITFMParserRequest...", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v21 = [CDMServiceGraphUtil buildNormalizedUtterance:v15];
  [v20 setNormalisedUtterance:v21];

  [v20 setOriginalUtterance:v17];
  v61 = 0;
  v22 = [objc_opt_class() adjustProtoMatchingSpans:v16 tokenChain:v15 outError:&v61];
  v56 = v61;
  v52 = v20;
  if (v22)
  {
    v47 = v22;
    v48 = v18;
    v49 = v17;
    v50 = v16;
    v23 = objc_alloc(MEMORY[0x1E695DF70]);
    v24 = [v15 tokens];
    v25 = [v23 initWithCapacity:{objc_msgSend(v24, "count")}];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v51 = v15;
    v26 = [v15 tokens];
    v27 = [v26 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v58;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v58 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v57 + 1) + 8 * i);
          if ([v31 isWhitespace])
          {
            v32 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v64 = "+[CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:requestId:currentTurn:error:]";
              v65 = 2112;
              v66 = v31;
              _os_log_impl(&dword_1DC287000, v32, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
            }
          }

          else
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v28);
    }

    v33 = [v51 copy];
    [v33 setTokens:v25];
    v34 = v52;
    [v52 setTokenChain:v33];
    v35 = objc_alloc_init(MEMORY[0x1E69D12D0]);
    v36 = [v48 nluRequestId];
    [v35 setRequestId:v36];

    [v35 setNluRequestId:v48];
    [v35 setTokenisedUtterance:v52];
    v22 = v47;
    v37 = [MEMORY[0x1E695DF70] arrayWithArray:v47];
    [v35 setMatchingSpans:v37];

    v38 = v55;
    [v35 setEmbeddings:v55];
    [v35 setTurnInput:v53];
    v39 = v54;
    v40 = [[CDMSNLCProtoRequestCommand alloc] initWithParserRequest:v35 rewriteMsg:v54];

    v18 = v48;
    v41 = v53;

    v16 = v50;
    v42 = v51;
    v17 = v49;
  }

  else
  {
    v43 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v46 = [v56 localizedDescription];
      *buf = 136315394;
      v64 = "+[CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:requestId:currentTurn:error:]";
      v65 = 2112;
      v66 = v46;
      _os_log_error_impl(&dword_1DC287000, v43, OS_LOG_TYPE_ERROR, "%s [ERR]: Error converting matched spans: %@", buf, 0x16u);
    }

    v42 = v15;

    v39 = v54;
    v40 = 0;
    if (a10)
    {
      *a10 = v56;
    }

    v34 = v52;
    v41 = v53;
    v38 = v55;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)buildNLv4ProtoRequestWithTokenChain:(id)a3 matchingSpans:(id)a4 utterance:(id)a5 embeddingTensor:(id)a6 currentTurn:(id)a7 requestId:(id)a8 outError:(id *)a9
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v32 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v34 = "+[CDMServiceGraphUtil buildNLv4ProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:currentTurn:requestId:outError:]";
    _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest...", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69D1310]);
  v21 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v22 = [CDMServiceGraphUtil buildNormalizedUtterance:v14];
  [v21 setNormalisedUtterance:v22];

  [v21 setOriginalUtterance:v17];
  v23 = [CDMServiceGraphUtil getNonWhitespaceTokenChain:v14];
  [v21 setTokenChain:v23];

  [v20 setMaxNumParses:{+[CDMUserDefaultsUtils readNLv4MaxNumParses](CDMUserDefaultsUtils, "readNLv4MaxNumParses")}];
  v24 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v31 = [v20 maxNumParses];
    *buf = 136315394;
    v34 = "+[CDMServiceGraphUtil buildNLv4ProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:currentTurn:requestId:outError:]";
    v35 = 2048;
    v36 = v31;
    _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s Set nlv4ParserRequest.maxNumParses = %llu", buf, 0x16u);
  }

  v25 = [v16 nluRequestId];
  [v20 setRequestId:v25];

  [v20 setNluRequestId:v16];
  [v20 setTokenisedUtterance:v21];
  v26 = [CDMServiceGraphUtil adjustProtoMatchingSpans:v18 tokenChain:v14 outError:a9];

  [v20 setMatchingSpans:v26];
  if (*a9)
  {
    v27 = 0;
    v28 = v32;
  }

  else
  {
    v28 = v32;
    [v20 setEmbeddings:v32];
    [v20 setTurnInput:v15];
    v27 = [[CDMNLv4ProtoRequestCommand alloc] initWithParserRequest:v20 requestId:v16];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)adjustProtoMatchingSpans:(id)a3 tokenChain:(id)a4 outError:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v45;
    *&v10 = 136315906;
    v42 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v15 = [v14 copy];
        v16 = [v14 startTokenIndex];
        v17 = [v7 tokens];
        v18 = [v17 count];

        if (v18 <= v16)
        {
          v29 = CDMLogContext;
          if (!os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 136315650;
          v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
          v50 = 2112;
          v51 = @"spanmatch";
          v52 = 2112;
          v53[0] = v14;
          v27 = v29;
          v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid rawTokenIndex on begin token. Span:\n %@";
          goto LABEL_16;
        }

        v19 = [v7 tokens];
        v20 = [v19 objectAtIndexedSubscript:v16];
        v21 = [v20 nonWhitespaceTokenIndex];

        if ((v21 & 0x80000000) != 0)
        {
          v30 = CDMLogContext;
          if (!os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 136315650;
          v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
          v50 = 2112;
          v51 = @"spanmatch";
          v52 = 2112;
          v53[0] = v14;
          v27 = v30;
          v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid nonWhitespaceTokenIndex on begin token, Span:\n %@";
          goto LABEL_16;
        }

        [v15 setStartTokenIndex:v21];
        v22 = [v14 endTokenIndex];
        if (!v22 || (v23 = v22, [v7 tokens], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v25 < v23))
        {
          v26 = CDMLogContext;
          if (!os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 136315650;
          v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
          v50 = 2112;
          v51 = @"spanmatch";
          v52 = 2112;
          v53[0] = v14;
          v27 = v26;
          v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid end token index, Span:\n %@";
          goto LABEL_16;
        }

        v31 = [v7 tokens];
        v32 = [v31 objectAtIndexedSubscript:v23 - 1];
        v33 = [v32 nonWhitespaceTokenIndex];

        if (v33 < 0)
        {
          v35 = CDMLogContext;
          if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
            v50 = 2112;
            v51 = @"spanmatch";
            v52 = 2112;
            v53[0] = v14;
            v27 = v35;
            v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid nonWhitespaceTokenIndex on end inclusive token, Span:\n %@";
LABEL_16:
            _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, v28, buf, 0x20u);
          }
        }

        else
        {
          [v15 setEndTokenIndex:(v33 + 1)];
          [v43 addObject:v15];
          v34 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v15 label];
            v37 = [v15 startTokenIndex];
            v38 = [v15 endTokenIndex];
            *buf = v42;
            v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
            v50 = 2112;
            v51 = v36;
            v52 = 1024;
            LODWORD(v53[0]) = v37;
            WORD2(v53[0]) = 1024;
            *(v53 + 6) = v38;
            _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s MatchedSpan for NLv4: label %@, startTokenIndex %u, endTokenIndex %u", buf, 0x22u);
          }
        }

LABEL_17:

        ++v13;
      }

      while (v11 != v13);
      v39 = [v8 countByEnumeratingWithState:&v44 objects:v54 count:16];
      v11 = v39;
    }

    while (v39);
  }

  v40 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (BOOL)spanHasMatcherName:(int)a3 matchingSpan:(id)a4
{
  v5 = a4;
  if ([v5 matcherNamesCount])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 matcherNamesAtIndex:v6];
      v8 = v7 == a3;
      if (v7 == a3)
      {
        break;
      }

      if (++v6 >= [v5 matcherNamesCount])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

+ (id)buildNormalizedUtterance:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 tokens];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v3 tokens];
      v9 = [v8 objectAtIndexedSubscript:v7];
      v10 = [v9 hasCleanValue];

      v11 = [v3 tokens];
      v12 = [v11 objectAtIndexedSubscript:v7];
      v13 = v12;
      if (v10)
      {
        [v12 cleanValue];
      }

      else
      {
        [v12 value];
      }
      v14 = ;
      [v4 appendString:v14];

      ++v7;
      v15 = [v3 tokens];
      v16 = [v15 count];
    }

    while (v7 < v16);
  }

  return v4;
}

+ (id)buildRepetitionResult:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69D11B8]);
  [v4 setAsrHypothesisIndex:0];
  [v4 setRepetitionType:0];
  if (v3)
  {
    v5 = [v3 response];
    v6 = [v5 repetitionType];

    if (v6 == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [v4 setRepetitionType:v7];
  }

  return v4;
}

+ (void)addDebugInfo:(id)a3 nluRequest:(id)a4 responseObject:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([CDMServiceGraphUtil debugInfoEnabled:a4])
  {
    v9 = [v8 commandName];
    v10 = [v8 description];
    [v7 appendFormat:@"%@%@\n%@", @"\n\n   ➡️  ", v9, v10];
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v13 = "+[CDMServiceGraphUtil addDebugInfo:nluRequest:responseObject:]";
      v14 = 2112;
      v15 = @"debug-mode-id";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Early return and skip adding debugText as idAsString is not the special %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)debugInfoEnabled:(id)a3
{
  v3 = a3;
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v4 = [v3 requestId];
    v5 = [v4 idA];
    v6 = [v5 isEqualToString:@"debug-mode-id"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)extractReferenceResolutionUtterances:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v3;
  v5 = [v3 rewriteHypotheses];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x1E69D1380]);
        v12 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v10 utterance];
          *buf = 136315394;
          v24 = "+[CDMServiceGraphUtil extractReferenceResolutionUtterances:]";
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Rewritten Utterance (reference resolution): %@", buf, 0x16u);
        }

        v14 = [v10 utterance];
        [v11 setUtterance:v14];

        [v11 setNluInternalTokens:0];
        [v11 setAsrId:0];
        [v11 setConfidence:0.0];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)prepareCcqrServiceRequest:(id)a3 currentTurnAsrConf:(double)a4 tokenResponse:(id)a5 previousTurnsAsrConf:(id)a6 previousTurnTokenizationResponseCommand:(id)a7 nluRequestId:(id)a8 resultCandidateId:(id)a9 cdmRequestId:(id)a10
{
  v110 = *MEMORY[0x1E69E9840];
  v87 = a3;
  v81 = a5;
  v88 = a6;
  v16 = a7;
  v80 = a8;
  v79 = a9;
  v78 = a10;
  v17 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Creating CDMQRRequestCommand for use in CCQR Service", buf, 0xCu);
  }

  v86 = [MEMORY[0x1E695DF70] array];
  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s 1. Constructing previous interactions", buf, 0xCu);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = [v16 responses];
  v85 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v85)
  {
    LODWORD(v19) = 0;
    v84 = *v100;
    v83 = v16;
    while (2)
    {
      v20 = 0;
      v19 = v19;
      do
      {
        if (*v100 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v99 + 1) + 8 * v20);
        v22 = objc_alloc_init(MEMORY[0x1E69D1380]);
        v23 = [v21 text];
        [v22 setUtterance:v23];

        [v22 setAsrId:0];
        [v22 setConfidence:1000.0];
        if ([v88 count] > v19)
        {
          v24 = [v88 objectAtIndex:v19];
          [v24 doubleValue];
          [v22 setConfidence:?];
        }

        v25 = [v21 tokenChain];
        v26 = [v25 tokens];
        [v22 setNluInternalTokens:v26];

        v27 = [v16 previousSiriResponseTokenResponses];
        v28 = [v27 count];

        if (v28 <= v19)
        {
          v44 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
            _os_log_impl(&dword_1DC287000, v44, OS_LOG_TYPE_INFO, "%s [WARN]: Missing previous Siri response! Attempted to access index exceeding number of previous Siri responses.", buf, 0xCu);
          }

          goto LABEL_26;
        }

        v29 = objc_alloc_init(MEMORY[0x1E69D1370]);
        v89 = v22;
        v106 = v22;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
        v31 = [v30 copy];
        [v29 setOriginalUtterances:v31];

        v32 = [v16 previousSiriResponseTokenResponses];
        v33 = [v32 objectAtIndex:v19];

        v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v33, "count")}];
        [v29 setSiriResponses:v34];

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v35 = v33;
        v36 = [v35 countByEnumeratingWithState:&v95 objects:v105 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v96;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v96 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v95 + 1) + 8 * i);
              v41 = [v29 siriResponses];
              v42 = [v40 tokenChain];
              v43 = [v42 tokens];
              [v41 addObjectsFromArray:v43];
            }

            v37 = [v35 countByEnumeratingWithState:&v95 objects:v105 count:16];
          }

          while (v37);
        }

        [v29 setLocale:v87];
        [v86 addObject:v29];
        ++v19;

        ++v20;
        v16 = v83;
      }

      while (v20 != v85);
      v85 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
      if (v85)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v45 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v45, OS_LOG_TYPE_DEBUG, "%s 2. Constructing current interactions", buf, 0xCu);
  }

  v46 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v47 = v81;
  v48 = [v81 text];
  [v46 setUtterance:v48];

  v49 = [v81 tokenChain];
  v50 = [v49 tokens];
  [v46 setNluInternalTokens:v50];

  [v46 setAsrId:0];
  [v46 setConfidence:a4];
  v51 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v104 = v46;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v53 = [v52 copy];
  [v51 setOriginalUtterances:v53];

  v54 = [v16 responses];
  v55 = [v54 count];

  v56 = [v16 previousSiriResponseTokenResponses];
  v57 = [v56 count];

  v90 = v46;
  if (v57 <= v55)
  {
    v73 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
      _os_log_impl(&dword_1DC287000, v73, OS_LOG_TYPE_INFO, "%s [WARN]: Missing previous Siri response! Attempted to access index exceeding number of previous Siri responses.", buf, 0xCu);
    }

    v64 = [MEMORY[0x1E695DF70] array];
    [v51 setSiriResponses:v64];
  }

  else
  {
    v58 = [v16 previousSiriResponseTokenResponses];
    v59 = [v58 count];

    if (v59 > v55 + 1)
    {
      v60 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
        _os_log_impl(&dword_1DC287000, v60, OS_LOG_TYPE_INFO, "%s [WARN]: Missing previous user utterance!", buf, 0xCu);
      }
    }

    v61 = [v16 previousSiriResponseTokenResponses];
    v62 = [v61 objectAtIndex:v55];

    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v62, "count")}];
    [v51 setSiriResponses:v63];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v92;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v92 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v91 + 1) + 8 * j);
          v70 = [v51 siriResponses];
          v71 = [v69 tokenChain];
          v72 = [v71 tokens];
          [v70 addObjectsFromArray:v72];
        }

        v66 = [v64 countByEnumeratingWithState:&v91 objects:v103 count:16];
      }

      while (v66);
    }

    v47 = v81;
  }

  [v51 setLocale:v87];
  [v86 addObject:v51];
  v74 = objc_alloc_init(MEMORY[0x1E69D1358]);
  [v74 setResultCandidateId:v79];
  [v74 setNluRequestId:v80];
  [v74 setOriginalInteractions:v86];
  [v74 setCdmRequestId:v78];
  v75 = [[CDMQRRequestCommand alloc] initWithQRRequest:v74];

  v76 = *MEMORY[0x1E69E9840];

  return v75;
}

+ (BOOL)runUaaPNLProtoService:(id)a3 requestId:(id)a4 utterance:(id)a5 locale:(id)a6 tokenChain:(id)a7 matchingSpans:(id)a8 embeddingTensor:(id)a9 currentTurn:(id)a10 outUaapProtoRequest:(id *)a11 outUaapProtoResponse:(id *)a12 outError:(id *)a13
{
  v60 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v46 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v48 = a10;
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v54 = "+[CDMServiceGraphUtil runUaaPNLProtoService:requestId:utterance:locale:tokenChain:matchingSpans:embeddingTensor:currentTurn:outUaapProtoRequest:outUaapProtoResponse:outError:]";
    _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Creating SIRINLUINTERNALUAAP_PARSERUaaPParserRequest for use in CDMUaaPNLProtoService", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69D13E0]);
  v45 = v16;
  [v20 setTokenChain:v16];
  v44 = v18;
  [v20 setEmbeddings:v18];
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  [v20 setMatchingSpans:v21];

  [v20 setMaxNumParses:{+[CDMUserDefaultsUtils readUaaPNLMaxNumParses](CDMUserDefaultsUtils, "readUaaPNLMaxNumParses")}];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = v17;
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        v28 = [v20 matchingSpans];
        v29 = [v27 copy];
        [v28 addObject:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v24);
  }

  [v20 setTurnInput:v48];
  v30 = v46;
  v31 = [[CDMUaaPNLProtoRequestCommand alloc] initWithParserRequest:v20 requestId:v46];
  *a11 = v31;
  v32 = v47;
  v33 = [v47 handle:v31];
  *a12 = v33;
  if (a13 && !v33)
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = [*a13 userInfo];
    v36 = *MEMORY[0x1E696A578];
    v37 = [v35 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    v38 = [v34 stringWithFormat:@"Hit error running uaap protobuf inference: no response populated. Internal error: %@", v37];

    v39 = MEMORY[0x1E696ABC0];
    v57 = v36;
    v58 = v38;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    *a13 = [v39 errorWithDomain:@"uaapProtoService" code:1 userInfo:v40];

    v41 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "+[CDMServiceGraphUtil runUaaPNLProtoService:requestId:utterance:locale:tokenChain:matchingSpans:embeddingTensor:currentTurn:outUaapProtoRequest:outUaapProtoResponse:outError:]";
      v55 = 2112;
      v56 = v38;
      _os_log_error_impl(&dword_1DC287000, v41, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v30 = v46;
    v32 = v47;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v33 != 0;
}

+ (id)getNonWhitespaceTokenChain:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 tokens];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v3 tokens];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isWhitespace])
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v22 = "+[CDMServiceGraphUtil getNonWhitespaceTokenChain:]";
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
          }
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  v14 = [v3 copy];
  [v14 setTokens:v6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)prepareCcqrTokens:(id)a3 currentTurn:(id)a4 previousTurns:(id)a5 utterance:(id)a6 locale:(id)a7
{
  v169 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v117 = a4;
  v11 = a5;
  v12 = a7;
  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use of PreviousTurn SiriResponse", buf, 0xCu);
  }

  v118 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v121 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = v11;
  v122 = v10;
  v123 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
  v129 = v12;
  if (v123)
  {
    v120 = *v155;
    do
    {
      v14 = 0;
      do
      {
        if (*v155 != v120)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v154 + 1) + 8 * v14);
        v16 = [v15 asrOutputs];
        if (v16)
        {
          v17 = v16;
          v18 = [v15 asrOutputs];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [v15 asrOutputs];
            v21 = [v20 objectAtIndexedSubscript:0];
            v22 = [v21 utterance];

            v23 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
              v166 = 2112;
              v167 = v22;
              _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.previousTurnInputs, previous asr hypo: %@", buf, 0x16u);
            }

            v24 = [CDMTokenizerProtoService createProtoTokenRequestWithText:v22 locale:v12];
            v25 = [v10 handle:v24];
            v26 = [v25 response];
            [v118 addObject:v26];
          }
        }

        v124 = v14;
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v28 = [v15 turnContext];
        v29 = [v28 nlContext];
        v30 = [v29 systemDialogActs];

        v31 = [v15 turnContext];
        v32 = [v31 legacyNlContext];

        v33 = objc_alloc(MEMORY[0x1E695DF70]);
        v34 = [v32 renderedTexts];
        v35 = [v33 initWithCapacity:{objc_msgSend(v34, "count")}];

        v127 = v32;
        v36 = [v32 renderedTexts];
        v125 = v30;
        if (v36)
        {
          v37 = v36;
          v38 = [v32 renderedTexts];
          v39 = [v38 count];

          if (v39)
          {
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v40 = [v127 renderedTexts];
            v41 = [v40 countByEnumeratingWithState:&v150 objects:v163 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v151;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v151 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v150 + 1) + 8 * i);
                  v46 = [v45 value];
                  if (v46)
                  {
                    v47 = [v45 value];
                    [v27 addObject:v47];
                  }

                  else
                  {
                    [v27 addObject:&stru_1F5800F50];
                  }

                  v48 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    v49 = [v27 lastObject];
                    *buf = 136315394;
                    v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
                    v166 = 2112;
                    v167 = v49;
                    _os_log_debug_impl(&dword_1DC287000, v48, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.previousTurnInputs.turnContext.legacyNlContext, previous rendered text: %@", buf, 0x16u);
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v150 objects:v163 count:16];
              }

              while (v42);
            }

            v10 = v122;
            v30 = v125;
          }
        }

        if (v30 && [v30 count])
        {
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v50 = v30;
          v51 = [v50 countByEnumeratingWithState:&v146 objects:v162 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v147;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v147 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v146 + 1) + 8 * j);
                if ([v27 count])
                {
                  v56 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
                    _os_log_impl(&dword_1DC287000, v56, OS_LOG_TYPE_INFO, "%s [WARN]: NLConetext and legcyNLContext both exists", buf, 0xCu);
                  }
                }

                v57 = [v55 renderedText];
                v58 = [v57 value];
                if (v58)
                {
                  v59 = [v55 renderedText];
                  v60 = [v59 value];
                  [v27 addObject:v60];
                }

                else
                {
                  [v27 addObject:&stru_1F5800F50];
                }

                v61 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                {
                  v62 = [v27 lastObject];
                  *buf = 136315394;
                  v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
                  v166 = 2112;
                  v167 = v62;
                  _os_log_debug_impl(&dword_1DC287000, v61, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.previousTurnInputs.turnContext.nlContext, previous rendered text: %@", buf, 0x16u);
                }

                v12 = v129;
              }

              v52 = [v50 countByEnumeratingWithState:&v146 objects:v162 count:16];
            }

            while (v52);
          }

          v10 = v122;
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v63 = v27;
        v64 = [v63 countByEnumeratingWithState:&v142 objects:v161 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v143;
          do
          {
            for (k = 0; k != v65; ++k)
            {
              if (*v143 != v66)
              {
                objc_enumerationMutation(v63);
              }

              v68 = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(&v142 + 1) + 8 * k) locale:v12];
              v69 = [v10 handle:v68];
              v70 = [v69 response];
              [v35 addObject:v70];
            }

            v65 = [v63 countByEnumeratingWithState:&v142 objects:v161 count:16];
          }

          while (v65);
        }

        [v121 addObject:v35];
        v14 = v124 + 1;
      }

      while (v124 + 1 != v123);
      v123 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
    }

    while (v123);
  }

  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72 = [v117 turnContext];
  v73 = [v72 nlContext];
  v128 = [v73 systemDialogActs];

  v74 = [v117 turnContext];
  v75 = [v74 legacyNlContext];

  v76 = objc_alloc(MEMORY[0x1E695DF70]);
  v77 = [v75 renderedTexts];
  v78 = [v76 initWithCapacity:{objc_msgSend(v77, "count")}];

  v79 = [v75 renderedTexts];
  v126 = v75;
  if (v79)
  {
    v80 = v79;
    v81 = [v75 renderedTexts];
    v82 = [v81 count];

    if (v82)
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v83 = [v75 renderedTexts];
      v84 = [v83 countByEnumeratingWithState:&v138 objects:v160 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v139;
        do
        {
          for (m = 0; m != v85; ++m)
          {
            if (*v139 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v88 = *(*(&v138 + 1) + 8 * m);
            v89 = [v88 value];
            if (v89)
            {
              v90 = [v88 value];
              [v78 addObject:v90];
            }

            else
            {
              [v78 addObject:&stru_1F5800F50];
            }

            v91 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = [v78 lastObject];
              *buf = 136315394;
              v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
              v166 = 2112;
              v167 = v92;
              _os_log_debug_impl(&dword_1DC287000, v91, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.currentTurnInput.turnContext.legacyNlContext, current rendered text: %@", buf, 0x16u);
            }
          }

          v85 = [v83 countByEnumeratingWithState:&v138 objects:v160 count:16];
        }

        while (v85);
      }

      v10 = v122;
      v12 = v129;
    }
  }

  if (v128 && [v128 count])
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v93 = v128;
    v94 = [v93 countByEnumeratingWithState:&v134 objects:v159 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v135;
      do
      {
        for (n = 0; n != v95; ++n)
        {
          if (*v135 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v134 + 1) + 8 * n);
          if ([v78 count])
          {
            v99 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
              _os_log_impl(&dword_1DC287000, v99, OS_LOG_TYPE_INFO, "%s [WARN]: NLConetext and legcyNLContext both exists", buf, 0xCu);
            }
          }

          v100 = [v98 renderedText];
          v101 = [v100 value];
          if (v101)
          {
            v102 = [v98 renderedText];
            v103 = [v102 value];
            [v78 addObject:v103];

            v10 = v122;
          }

          else
          {
            [v78 addObject:&stru_1F5800F50];
          }

          v104 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            v105 = [v78 lastObject];
            *buf = 136315394;
            v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
            v166 = 2112;
            v167 = v105;
            _os_log_debug_impl(&dword_1DC287000, v104, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.currentTurnInput.turnContext.nlContext, current rendered text: %@", buf, 0x16u);
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v134 objects:v159 count:16];
      }

      while (v95);
    }

    v12 = v129;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v106 = v78;
  v107 = [v106 countByEnumeratingWithState:&v130 objects:v158 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v131;
    do
    {
      for (ii = 0; ii != v108; ++ii)
      {
        if (*v131 != v109)
        {
          objc_enumerationMutation(v106);
        }

        v111 = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(&v130 + 1) + 8 * ii) locale:v12, v117];
        v112 = [v10 handle:v111];
        v113 = [v112 response];
        [v71 addObject:v113];
      }

      v108 = [v106 countByEnumeratingWithState:&v130 objects:v158 count:16];
    }

    while (v108);
  }

  [v121 addObject:v71];
  v114 = [[CDMTokenizationProtoResponseCommand alloc] initWithPreviousResponses:v118 withPreviousSiriResponse:v121];

  v115 = *MEMORY[0x1E69E9840];

  return v114;
}

+ (id)runCcqrService:(id)a3 nluRequest:(id)a4 tokenResponse:(id)a5 previousTurnTokenizationResponseCommand:(id)a6 rdResponse:(id)a7 requestLink:(id)a8 locale:(id)a9
{
  v67 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v62 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [v15 currentTurnInput];
  if ([v20 tapToEdit])
  {

LABEL_4:
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v64 = "+[CDMServiceGraphUtil runCcqrService:nluRequest:tokenResponse:previousTurnTokenizationResponseCommand:rdResponse:requestLink:locale:]";
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s Current Turn is Tap2Edit or Current Context isn't expected, skipping CCQR", buf, 0xCu);
    }

    v25 = 0;
LABEL_7:
    v26 = v62;
    goto LABEL_8;
  }

  v21 = [v15 currentTurnInput];
  v22 = [v21 turnContext];
  v23 = [CDMCcqrAerCbRService suppressCcqrUsingCurContext:v22];

  if (v23)
  {
    goto LABEL_4;
  }

  v29 = [v15 previousTurnInputs];
  v30 = [v29 count];

  v60 = v16;
  v61 = v19;
  v59 = v17;
  if (v30)
  {
    v24 = objc_opt_new();
    v31 = [v15 currentTurnInput];
    [v24 setCurrentTurn:v31];

    v32 = [v15 previousTurnInputs];
    [v24 setPreviousTurns:v32];

    [v24 setType:0];
    v33 = [v15 currentTurnInput];
    v34 = [v33 asrOutputs];
    v35 = [v34 firstObject];
    [v35 utterance];
    v37 = v36 = v14;
    v38 = [v16 tokenChain];
    v39 = [CDMServiceGraphUtil overrideInputsFromUtterance:v37 matchingSpans:0 tokenChain:v38 contextUpdateReformedTurnInputBundle:v24];

    v40 = v39;
    v14 = v36;

    v41 = [v36 match:v39];
    if (v41)
    {
      v25 = v41;
      v42 = CDMOSLoggerForCategory(0);
      v17 = v59;
      v19 = v61;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v56 = [v25 qrResponse];
        *buf = 136315394;
        v64 = "+[CDMServiceGraphUtil runCcqrService:nluRequest:tokenResponse:previousTurnTokenizationResponseCommand:rdResponse:requestLink:locale:]";
        v65 = 2112;
        v66 = v56;
        _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s Found override match. Return pre-defined match result %@", buf, 0x16u);

        v19 = v61;
      }

      v16 = v60;
      goto LABEL_7;
    }
  }

  v58 = v14;
  v43 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v64 = "+[CDMServiceGraphUtil runCcqrService:nluRequest:tokenResponse:previousTurnTokenizationResponseCommand:rdResponse:requestLink:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v43, OS_LOG_TYPE_DEBUG, "%s The current turn is NOT Tap2Edit Request, nor override matching, Running CCQR inference", buf, 0xCu);
  }

  v57 = [v15 currentTurnInput];
  v44 = [v57 asrOutputs];
  v45 = [v44 firstObject];
  [v45 probability];
  v47 = v46;
  v48 = [v15 previousTurnInputs];
  v49 = [CDMServiceGraphUtil extractPrevTurnsAsrConfidence:v48];
  v50 = [v18 nlId];
  v51 = [v18 resultCandidateId];
  v52 = [v15 requestId];
  v24 = [CDMServiceGraphUtil prepareCcqrServiceRequest:v61 currentTurnAsrConf:v60 tokenResponse:v49 previousTurnsAsrConf:v59 previousTurnTokenizationResponseCommand:v50 nluRequestId:v51 resultCandidateId:v47 cdmRequestId:v52];

  v14 = v58;
  v25 = [v58 handle:v24];
  if (+[CDMFeatureFlags isCbrUnrestrictedByRDEnabled])
  {
    v17 = v59;
    v16 = v60;
    v26 = v62;
  }

  else
  {
    v53 = [v25 rewriteMsg];
    v17 = v59;
    v26 = v62;
    if ([v53 rewriteType] == 2)
    {
      v54 = [v62 response];
      v55 = [v54 repetitionType];

      if (v55 != 2)
      {
        [v25 setRewriteMsg:0];
      }
    }

    else
    {
    }

    v16 = v60;
  }

  v19 = v61;
LABEL_8:

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)extractPrevTurnsAsrConfidence:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) asrOutputs];
          v11 = [v10 firstObject];
          [v11 probability];
          v13 = v12;

          v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
          [v4 addObject:v14];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end