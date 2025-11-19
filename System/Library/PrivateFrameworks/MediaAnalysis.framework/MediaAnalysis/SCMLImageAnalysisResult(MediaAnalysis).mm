@interface SCMLImageAnalysisResult(MediaAnalysis)
+ (id)mad_mergeSensitiveAnalysisResults:()MediaAnalysis withSensitiveAnalysisResults:;
- (id)mad_sceneClassifications:()MediaAnalysis;
- (id)mad_sensitivityAnalysis:()MediaAnalysis;
@end

@implementation SCMLImageAnalysisResult(MediaAnalysis)

- (id)mad_sceneClassifications:()MediaAnalysis
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [a1 scoresForLabels];

  if (v6)
  {
    v7 = [a1 scoresForLabels];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__SCMLImageAnalysisResult_MediaAnalysis__mad_sceneClassifications___block_invoke;
    v9[3] = &unk_1E834DAC0;
    v10 = v5;
    v11 = v4;
    [v7 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Safety result has no classifications", buf, 0xCu);
  }

  return v5;
}

- (id)mad_sensitivityAnalysis:()MediaAnalysis
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__SCMLImageAnalysisResult_MediaAnalysis__mad_sensitivityAnalysis___block_invoke;
  v22[3] = &unk_1E834DAE8;
  v22[4] = &v27;
  v22[5] = &v23;
  v5 = _Block_copy(v22);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "sensitiveExplicit")}];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69CA7D0]];

    v8 = [a1 sensitiveExplicit];
    v9 = [a1 sensitivityScoreExplicit];
    v10 = v5[2](v5, v8, v9);
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69CA7D8]];
  }

  if ((a3 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "sensitiveGore")}];
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69CA7E8]];

    v12 = [a1 sensitiveGore];
    v13 = [a1 sensitivityScoreGore];
    v14 = v5[2](v5, v12, v13);
    [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69CA7F0]];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "sensitiveViolence")}];
    [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69CA808]];

    v16 = [a1 sensitiveViolence];
    v17 = [a1 sensitivityScoreViolence];
    v18 = v5[2](v5, v16, v17);
    [v6 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69CA818]];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:*(v28 + 24)];
  [v6 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69CA7F8]];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v24[3]];
  [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69CA800]];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v6;
}

+ (id)mad_mergeSensitiveAnalysisResults:()MediaAnalysis withSensitiveAnalysisResults:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__23;
      v20 = __Block_byref_object_dispose__23;
      v21 = [MEMORY[0x1E695DF90] dictionary];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __105__SCMLImageAnalysisResult_MediaAnalysis__mad_mergeSensitiveAnalysisResults_withSensitiveAnalysisResults___block_invoke;
      aBlock[3] = &unk_1E834DB10;
      v13 = v5;
      v14 = v7;
      v15 = &v16;
      v8 = _Block_copy(aBlock);
      (*(v8 + 2))(v8, *MEMORY[0x1E69CA7D0], *MEMORY[0x1E69CA7D8]);
      (*(v8 + 2))(v8, *MEMORY[0x1E69CA7E8], *MEMORY[0x1E69CA7F0]);
      (*(v8 + 2))(v8, *MEMORY[0x1E69CA808], *MEMORY[0x1E69CA818]);
      (*(v8 + 2))(v8, *MEMORY[0x1E69CA7F8], *MEMORY[0x1E69CA800]);
      v9 = v17[5];

      _Block_object_dispose(&v16, 8);
      goto LABEL_7;
    }

    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v9 = v10;
LABEL_7:

  return v9;
}

@end