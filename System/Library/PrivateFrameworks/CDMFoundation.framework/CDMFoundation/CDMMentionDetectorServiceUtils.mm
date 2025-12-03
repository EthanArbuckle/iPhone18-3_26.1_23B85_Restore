@interface CDMMentionDetectorServiceUtils
+ (id)buildMDRequestWithUtterance:(id)utterance tokenChain:(id)chain embedding:(id)embedding nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)requestId;
+ (void)logMDRequestToFile:(id)file;
+ (void)logMDResponseToFile:(id)file;
@end

@implementation CDMMentionDetectorServiceUtils

+ (void)logMDResponseToFile:(id)file
{
  v13 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (!fileCopy)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "+[CDMMentionDetectorServiceUtils logMDResponseToFile:]";
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s nil md response, not writing to tmp", buf, 0xCu);
    }

    v5 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v4 = [CDMNluLogUtil writeMDResponseToDisk:fileCopy error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "+[CDMMentionDetectorServiceUtils logMDResponseToFile:]";
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging md response to file: %@", buf, 0x16u);
    }

LABEL_8:
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logMDRequestToFile:(id)file
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [CDMNluLogUtil writeMDRequestToDisk:file error:&v7];
  v4 = v7;

  if (!v3)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "+[CDMMentionDetectorServiceUtils logMDRequestToFile:]";
      v10 = 2112;
      v11 = v4;
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging md request to file: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)buildMDRequestWithUtterance:(id)utterance tokenChain:(id)chain embedding:(id)embedding nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)requestId
{
  v40 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  chainCopy = chain;
  embeddingCopy = embedding;
  idCopy = id;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  v14 = objc_alloc_init(MEMORY[0x1E69D12E8]);
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  tokens = [chainCopy tokens];
  v17 = [tokens countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(tokens);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        if (([v21 isWhitespace] & 1) == 0)
        {
          cleanValue = [v21 cleanValue];
          v23 = [cleanValue length];

          if (v23)
          {
            [array addObject:v21];
          }
        }
      }

      v18 = [tokens countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  v24 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  locale = [chainCopy locale];
  [v24 setLocale:locale];

  [v24 setTokens:array];
  stringValue = [chainCopy stringValue];
  [v24 setStringValue:stringValue];

  [v14 setUtterance:utteranceCopy];
  v27 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v14 setRequestId:v27];

  [v14 setResultCandidateId:candidateIdCopy];
  [v14 setNluRequestId:idCopy];
  [v14 setTokenChain:v24];
  [v14 setMaxCandidates:10];
  [v14 setEmbeddingTensor:embeddingCopy];
  [v14 setCdmRequestId:requestIdCopy];

  v28 = *MEMORY[0x1E69E9840];

  return v14;
}

@end