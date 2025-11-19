@interface CDMMentionDetectorServiceUtils
+ (id)buildMDRequestWithUtterance:(id)a3 tokenChain:(id)a4 embedding:(id)a5 nluRequestId:(id)a6 resultCandidateId:(id)a7 cdmRequestId:(id)a8;
+ (void)logMDRequestToFile:(id)a3;
+ (void)logMDResponseToFile:(id)a3;
@end

@implementation CDMMentionDetectorServiceUtils

+ (void)logMDResponseToFile:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
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
  v4 = [CDMNluLogUtil writeMDResponseToDisk:v3 error:&v8];
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

+ (void)logMDRequestToFile:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [CDMNluLogUtil writeMDRequestToDisk:a3 error:&v7];
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

+ (id)buildMDRequestWithUtterance:(id)a3 tokenChain:(id)a4 embedding:(id)a5 nluRequestId:(id)a6 resultCandidateId:(id)a7 cdmRequestId:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v13 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v14 = objc_alloc_init(MEMORY[0x1E69D12E8]);
  v15 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v13 tokens];
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        if (([v21 isWhitespace] & 1) == 0)
        {
          v22 = [v21 cleanValue];
          v23 = [v22 length];

          if (v23)
          {
            [v15 addObject:v21];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  v24 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  v25 = [v13 locale];
  [v24 setLocale:v25];

  [v24 setTokens:v15];
  v26 = [v13 stringValue];
  [v24 setStringValue:v26];

  [v14 setUtterance:v34];
  v27 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v14 setRequestId:v27];

  [v14 setResultCandidateId:v31];
  [v14 setNluRequestId:v32];
  [v14 setTokenChain:v24];
  [v14 setMaxCandidates:10];
  [v14 setEmbeddingTensor:v33];
  [v14 setCdmRequestId:v30];

  v28 = *MEMORY[0x1E69E9840];

  return v14;
}

@end