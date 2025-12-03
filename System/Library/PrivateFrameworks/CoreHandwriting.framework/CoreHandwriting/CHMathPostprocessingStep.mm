@interface CHMathPostprocessingStep
- (id)retrieveAllPathTokens:(id)tokens;
- (id)retrievePathTokens:(id)tokens atPathIndex:(int64_t)index;
@end

@implementation CHMathPostprocessingStep

- (id)retrievePathTokens:(id)tokens atPathIndex:(int64_t)index
{
  tokensCopy = tokens;
  v11 = objc_msgSend_result(tokensCopy, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_transcriptionPaths(v11, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, index, v19, v20, v21);

  v28 = objc_msgSend_array(MEMORY[0x1E695DF70], v23, v24, v25, v26, v27);
  v34 = objc_msgSend_result(tokensCopy, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_result(tokensCopy, v35, v36, v37, v38, v39);
  v46 = objc_msgSend_tokenColumnCount(v40, v41, v42, v43, v44, v45);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_183675710;
  v50[3] = &unk_1E6DDBDA0;
  v47 = v28;
  v51 = v47;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v34, v48, v22, 0, v46, v50);

  return v47;
}

- (id)retrieveAllPathTokens:(id)tokens
{
  tokensCopy = tokens;
  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  for (i = 0; ; ++i)
  {
    v17 = objc_msgSend_result(tokensCopy, v10, v11, v12, v13, v14);
    v23 = objc_msgSend_transcriptionPaths(v17, v18, v19, v20, v21, v22);
    v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28);

    if (i >= v29)
    {
      break;
    }

    v33 = objc_msgSend_retrievePathTokens_atPathIndex_(self, v30, tokensCopy, i, v31, v32);
    objc_msgSend_addObject_(v15, v34, v33, v35, v36, v37);
  }

  return v15;
}

@end