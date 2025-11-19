@interface CDMRepetitionDetectionServiceUtils
+ (id)asrHypothesis2QRUtterance:(id)a3;
+ (id)asrToken2QRToken:(id)a3;
+ (id)buildRDRequestWithPrevTurn:(id)a3 curTurn:(id)a4 nluRequestId:(id)a5 resultCandidateId:(id)a6 cdmRequestId:(id)a7;
@end

@implementation CDMRepetitionDetectionServiceUtils

+ (id)asrHypothesis2QRUtterance:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 asrTokens];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v3 asrTokens];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [CDMRepetitionDetectionServiceUtils asrToken2QRToken:*(*(&v20 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v14 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v13 setAsrId:v14];

  v15 = [v3 utterance];
  [v13 setUtterance:v15];

  v16 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v13 setNluInternalTokens:v16];

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6];
  [v13 setAsrUtteranceTokens:v17];

  [v3 probability];
  [v13 setConfidence:?];

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)asrToken2QRToken:(id)a3
{
  v3 = MEMORY[0x1E69D1378];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 postItnText];
  [v5 setValue:v6];

  [v5 setStartIndex:{objc_msgSend(v4, "beginIndex")}];
  [v5 setEndIndex:{objc_msgSend(v4, "endIndex")}];
  [v4 confidenceScore];
  [v5 setAsrConfidence:?];
  v7 = [v4 phoneSequence];
  [v5 setPhoneSequence:v7];

  v8 = [v4 removeSpaceAfter];
  [v5 setRemoveSpaceAfter:v8];

  return v5;
}

+ (id)buildRDRequestWithPrevTurn:(id)a3 curTurn:(id)a4 nluRequestId:(id)a5 resultCandidateId:(id)a6 cdmRequestId:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v48 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Preparing Repetition Detection Reqeust", buf, 0xCu);
  }

  if (!v11)
  {
LABEL_12:
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v48 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
      v22 = "%s Invalid Inputs for Repetition Detection";
      goto LABEL_19;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v17 = [v11 asrOutputs];
  v18 = [v17 count];
  if (!v12 || !v18)
  {

    goto LABEL_12;
  }

  v19 = [v12 asrOutputs];
  v20 = [v19 count];

  if (!v20)
  {
    goto LABEL_12;
  }

  if (([v12 tapToEdit] & 1) != 0 || objc_msgSend(v11, "tapToEdit"))
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v48 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
      v22 = "%s Current Turn or Previous Turn is Tap2Edit, skipping RD call";
LABEL_19:
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v26 = [v11 asrOutputs];
  v27 = [v26 firstObject];
  v21 = [CDMRepetitionDetectionServiceUtils asrHypothesis2QRUtterance:v27];

  v28 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v46 = v21;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v30 = [v29 copy];
  [v28 setOriginalUtterances:v30];

  v31 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v28 setSiriResponses:v31];

  v32 = [v11 locale];
  [v28 setLocale:v32];

  [v28 setTap2edit:{objc_msgSend(v11, "tapToEdit")}];
  v42 = v28;
  [v28 setStartTimestamp:{objc_msgSend(v11, "startTimestamp")}];
  v33 = [v12 asrOutputs];
  v34 = [v33 firstObject];
  v43 = [CDMRepetitionDetectionServiceUtils asrHypothesis2QRUtterance:v34];

  v35 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v45 = v43;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v37 = [v36 copy];
  [v35 setOriginalUtterances:v37];

  v38 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v35 setSiriResponses:v38];

  v39 = [v12 locale];
  [v35 setLocale:v39];

  [v35 setTap2edit:{objc_msgSend(v12, "tapToEdit")}];
  [v35 setStartTimestamp:{objc_msgSend(v12, "startTimestamp")}];
  v23 = objc_alloc_init(MEMORY[0x1E69D1358]);
  [v23 setResultCandidateId:v14];
  [v23 setNluRequestId:v13];
  v44[0] = v28;
  v44[1] = v35;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v41 = [v40 mutableCopy];
  [v23 setOriginalInteractions:v41];

  [v23 setCdmRequestId:v15];
LABEL_14:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end