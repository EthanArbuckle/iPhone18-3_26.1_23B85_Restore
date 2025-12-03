@interface CDMRepetitionDetectionServiceUtils
+ (id)asrHypothesis2QRUtterance:(id)utterance;
+ (id)asrToken2QRToken:(id)token;
+ (id)buildRDRequestWithPrevTurn:(id)turn curTurn:(id)curTurn nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)requestId;
@end

@implementation CDMRepetitionDetectionServiceUtils

+ (id)asrHypothesis2QRUtterance:(id)utterance
{
  v25 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  asrTokens = [utteranceCopy asrTokens];
  v6 = [v4 initWithCapacity:{objc_msgSend(asrTokens, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  asrTokens2 = [utteranceCopy asrTokens];
  v8 = [asrTokens2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(asrTokens2);
        }

        v12 = [CDMRepetitionDetectionServiceUtils asrToken2QRToken:*(*(&v20 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [asrTokens2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v14 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v13 setAsrId:v14];

  utterance = [utteranceCopy utterance];
  [v13 setUtterance:utterance];

  v16 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v13 setNluInternalTokens:v16];

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6];
  [v13 setAsrUtteranceTokens:v17];

  [utteranceCopy probability];
  [v13 setConfidence:?];

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)asrToken2QRToken:(id)token
{
  v3 = MEMORY[0x1E69D1378];
  tokenCopy = token;
  v5 = objc_alloc_init(v3);
  postItnText = [tokenCopy postItnText];
  [v5 setValue:postItnText];

  [v5 setStartIndex:{objc_msgSend(tokenCopy, "beginIndex")}];
  [v5 setEndIndex:{objc_msgSend(tokenCopy, "endIndex")}];
  [tokenCopy confidenceScore];
  [v5 setAsrConfidence:?];
  phoneSequence = [tokenCopy phoneSequence];
  [v5 setPhoneSequence:phoneSequence];

  removeSpaceAfter = [tokenCopy removeSpaceAfter];
  [v5 setRemoveSpaceAfter:removeSpaceAfter];

  return v5;
}

+ (id)buildRDRequestWithPrevTurn:(id)turn curTurn:(id)curTurn nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)requestId
{
  v49 = *MEMORY[0x1E69E9840];
  turnCopy = turn;
  curTurnCopy = curTurn;
  idCopy = id;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v48 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Preparing Repetition Detection Reqeust", buf, 0xCu);
  }

  if (!turnCopy)
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

  asrOutputs = [turnCopy asrOutputs];
  v18 = [asrOutputs count];
  if (!curTurnCopy || !v18)
  {

    goto LABEL_12;
  }

  asrOutputs2 = [curTurnCopy asrOutputs];
  v20 = [asrOutputs2 count];

  if (!v20)
  {
    goto LABEL_12;
  }

  if (([curTurnCopy tapToEdit] & 1) != 0 || objc_msgSend(turnCopy, "tapToEdit"))
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

  asrOutputs3 = [turnCopy asrOutputs];
  firstObject = [asrOutputs3 firstObject];
  v21 = [CDMRepetitionDetectionServiceUtils asrHypothesis2QRUtterance:firstObject];

  v28 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v46 = v21;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v30 = [v29 copy];
  [v28 setOriginalUtterances:v30];

  v31 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v28 setSiriResponses:v31];

  locale = [turnCopy locale];
  [v28 setLocale:locale];

  [v28 setTap2edit:{objc_msgSend(turnCopy, "tapToEdit")}];
  v42 = v28;
  [v28 setStartTimestamp:{objc_msgSend(turnCopy, "startTimestamp")}];
  asrOutputs4 = [curTurnCopy asrOutputs];
  firstObject2 = [asrOutputs4 firstObject];
  v43 = [CDMRepetitionDetectionServiceUtils asrHypothesis2QRUtterance:firstObject2];

  v35 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v45 = v43;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v37 = [v36 copy];
  [v35 setOriginalUtterances:v37];

  v38 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v35 setSiriResponses:v38];

  locale2 = [curTurnCopy locale];
  [v35 setLocale:locale2];

  [v35 setTap2edit:{objc_msgSend(curTurnCopy, "tapToEdit")}];
  [v35 setStartTimestamp:{objc_msgSend(curTurnCopy, "startTimestamp")}];
  v23 = objc_alloc_init(MEMORY[0x1E69D1358]);
  [v23 setResultCandidateId:candidateIdCopy];
  [v23 setNluRequestId:idCopy];
  v44[0] = v28;
  v44[1] = v35;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v41 = [v40 mutableCopy];
  [v23 setOriginalInteractions:v41];

  [v23 setCdmRequestId:requestIdCopy];
LABEL_14:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end