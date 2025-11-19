@interface CDMMentionResolverServiceUtils
+ (id)buildMRRequestWithCurTurn:(id)a3 tokenChain:(id)a4 mdResponse:(id)a5 contextualSpanMatcherResponse:(id)a6 embedding:(id)a7 utterance:(id)a8 turnIndex:(unint64_t)a9 nluRequestId:(id)a10 resultCandidateId:(id)a11 cdmRequestId:(id)a12;
+ (id)includeWhitespaceInIndices:(id)a3 tokenchain:(id)a4;
+ (void)logMRRequestToFile:(id)a3;
+ (void)logMRResponseToFile:(id)a3;
@end

@implementation CDMMentionResolverServiceUtils

+ (void)logMRResponseToFile:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    if (v3)
    {
      v8 = 0;
      v4 = [CDMNluLogUtil writeMRResponseToDisk:v3 error:&v8];
      v5 = v8;

      if (v4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v6 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "+[CDMMentionResolverServiceUtils logMRResponseToFile:]";
        v11 = 2112;
        v12 = v5;
        _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging mr response to file: %@", buf, 0x16u);
      }
    }

    else
    {
      v6 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v10 = "+[CDMMentionResolverServiceUtils logMRResponseToFile:]";
        _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s nil mr response, not writing to tmp", buf, 0xCu);
      }

      v5 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logMRRequestToFile:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    v8 = 0;
    v4 = [CDMNluLogUtil writeMRRequestToDisk:v3 error:&v8];
    v5 = v8;

    if (!v4)
    {
      v6 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "+[CDMMentionResolverServiceUtils logMRRequestToFile:]";
        v11 = 2112;
        v12 = v5;
        _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging mr request to file: %@", buf, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)includeWhitespaceInIndices:(id)a3 tokenchain:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v5 mentions];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      v26 = v5;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v13 startTokenIndex];
          v15 = [v13 endTokenIndex] - 1;
          v16 = [v7 tokens];
          if ([v16 count] <= v15)
          {

LABEL_14:
            v23 = CDMOSLoggerForCategory(0);
            v5 = v26;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v33 = "+[CDMMentionResolverServiceUtils includeWhitespaceInIndices:tokenchain:]";
              v34 = 2112;
              v35 = v26;
              _os_log_error_impl(&dword_1DC287000, v23, OS_LOG_TYPE_ERROR, "%s [ERR]: Error converting MR span indices: %@", buf, 0x16u);
            }

            v8 = 0;
            goto LABEL_17;
          }

          v17 = [v7 tokens];
          v18 = [v17 count];

          if (v18 <= v14)
          {
            goto LABEL_14;
          }

          v19 = [v7 tokens];
          v20 = [v19 objectAtIndex:v14];
          [v13 setStartTokenIndex:{objc_msgSend(v20, "tokenIndex")}];

          v21 = [v7 tokens];
          v22 = [v21 objectAtIndex:v15];
          [v13 setEndTokenIndex:{objc_msgSend(v22, "tokenIndex") + 1}];
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        v5 = v26;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = v5;
  }

LABEL_17:

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)buildMRRequestWithCurTurn:(id)a3 tokenChain:(id)a4 mdResponse:(id)a5 contextualSpanMatcherResponse:(id)a6 embedding:(id)a7 utterance:(id)a8 turnIndex:(unint64_t)a9 nluRequestId:(id)a10 resultCandidateId:(id)a11 cdmRequestId:(id)a12
{
  v53 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v16 = a4;
  v44 = a5;
  v43 = a6;
  v42 = a7;
  v47 = a10;
  v46 = a11;
  v41 = a12;
  v17 = objc_alloc_init(MEMORY[0x1E69D12F8]);
  v18 = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = [v16 tokens];
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v49;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        if (([v24 isWhitespace] & 1) == 0)
        {
          v25 = [v24 cleanValue];
          v26 = [v25 length];

          if (v26)
          {
            [v18 addObject:v24];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v21);
  }

  v27 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  v28 = [v16 locale];
  [v27 setLocale:v28];

  [v27 setTokens:v18];
  v29 = [v16 stringValue];
  [v27 setStringValue:v29];

  v30 = [v45 asrOutputs];
  v31 = [v30 firstObject];
  v32 = [v31 utterance];
  [v17 setUtterance:v32];

  v33 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v17 setRequestId:v33];

  [v17 setResultCandidateId:v46];
  [v17 setNluRequestId:v47];
  [v17 setTokenChain:v27];
  [v17 setMaxCandidates:10];
  [v17 setEmbeddingTensor:v42];
  v34 = [v44 mentions];
  [v17 setDetectedMentions:v34];

  v35 = [v43 contextualSpans];
  [v17 setContextualSpans:v35];

  v36 = [v45 turnContext];
  v37 = [v36 nlContext];
  v38 = [v37 salientEntities];
  [v17 setEntityCandidates:v38];

  [v17 setTurnIndex:a9];
  [v17 setCdmRequestId:v41];

  v39 = *MEMORY[0x1E69E9840];

  return v17;
}

@end