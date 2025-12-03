@interface CDMMentionResolverServiceUtils
+ (id)buildMRRequestWithCurTurn:(id)turn tokenChain:(id)chain mdResponse:(id)response contextualSpanMatcherResponse:(id)matcherResponse embedding:(id)embedding utterance:(id)utterance turnIndex:(unint64_t)index nluRequestId:(id)self0 resultCandidateId:(id)self1 cdmRequestId:(id)self2;
+ (id)includeWhitespaceInIndices:(id)indices tokenchain:(id)tokenchain;
+ (void)logMRRequestToFile:(id)file;
+ (void)logMRResponseToFile:(id)file;
@end

@implementation CDMMentionResolverServiceUtils

+ (void)logMRResponseToFile:(id)file
{
  v13 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    if (fileCopy)
    {
      v8 = 0;
      v4 = [CDMNluLogUtil writeMRResponseToDisk:fileCopy error:&v8];
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

+ (void)logMRRequestToFile:(id)file
{
  v13 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    v8 = 0;
    v4 = [CDMNluLogUtil writeMRRequestToDisk:fileCopy error:&v8];
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

+ (id)includeWhitespaceInIndices:(id)indices tokenchain:(id)tokenchain
{
  v37 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  tokenchainCopy = tokenchain;
  v7 = tokenchainCopy;
  v8 = 0;
  if (indicesCopy && tokenchainCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [indicesCopy mentions];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      v26 = indicesCopy;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          startTokenIndex = [v13 startTokenIndex];
          v15 = [v13 endTokenIndex] - 1;
          tokens = [v7 tokens];
          if ([tokens count] <= v15)
          {

LABEL_14:
            v23 = CDMOSLoggerForCategory(0);
            indicesCopy = v26;
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

          tokens2 = [v7 tokens];
          v18 = [tokens2 count];

          if (v18 <= startTokenIndex)
          {
            goto LABEL_14;
          }

          tokens3 = [v7 tokens];
          v20 = [tokens3 objectAtIndex:startTokenIndex];
          [v13 setStartTokenIndex:{objc_msgSend(v20, "tokenIndex")}];

          tokens4 = [v7 tokens];
          v22 = [tokens4 objectAtIndex:v15];
          [v13 setEndTokenIndex:{objc_msgSend(v22, "tokenIndex") + 1}];
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        indicesCopy = v26;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = indicesCopy;
  }

LABEL_17:

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)buildMRRequestWithCurTurn:(id)turn tokenChain:(id)chain mdResponse:(id)response contextualSpanMatcherResponse:(id)matcherResponse embedding:(id)embedding utterance:(id)utterance turnIndex:(unint64_t)index nluRequestId:(id)self0 resultCandidateId:(id)self1 cdmRequestId:(id)self2
{
  v53 = *MEMORY[0x1E69E9840];
  turnCopy = turn;
  chainCopy = chain;
  responseCopy = response;
  matcherResponseCopy = matcherResponse;
  embeddingCopy = embedding;
  idCopy = id;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  v17 = objc_alloc_init(MEMORY[0x1E69D12F8]);
  array = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  tokens = [chainCopy tokens];
  v20 = [tokens countByEnumeratingWithState:&v48 objects:v52 count:16];
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
          objc_enumerationMutation(tokens);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        if (([v24 isWhitespace] & 1) == 0)
        {
          cleanValue = [v24 cleanValue];
          v26 = [cleanValue length];

          if (v26)
          {
            [array addObject:v24];
          }
        }
      }

      v21 = [tokens countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v21);
  }

  v27 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  locale = [chainCopy locale];
  [v27 setLocale:locale];

  [v27 setTokens:array];
  stringValue = [chainCopy stringValue];
  [v27 setStringValue:stringValue];

  asrOutputs = [turnCopy asrOutputs];
  firstObject = [asrOutputs firstObject];
  utterance = [firstObject utterance];
  [v17 setUtterance:utterance];

  v33 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v17 setRequestId:v33];

  [v17 setResultCandidateId:candidateIdCopy];
  [v17 setNluRequestId:idCopy];
  [v17 setTokenChain:v27];
  [v17 setMaxCandidates:10];
  [v17 setEmbeddingTensor:embeddingCopy];
  mentions = [responseCopy mentions];
  [v17 setDetectedMentions:mentions];

  contextualSpans = [matcherResponseCopy contextualSpans];
  [v17 setContextualSpans:contextualSpans];

  turnContext = [turnCopy turnContext];
  nlContext = [turnContext nlContext];
  salientEntities = [nlContext salientEntities];
  [v17 setEntityCandidates:salientEntities];

  [v17 setTurnIndex:index];
  [v17 setCdmRequestId:requestIdCopy];

  v39 = *MEMORY[0x1E69E9840];

  return v17;
}

@end