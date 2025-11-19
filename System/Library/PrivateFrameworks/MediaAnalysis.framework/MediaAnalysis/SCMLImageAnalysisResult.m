@interface SCMLImageAnalysisResult
@end

@implementation SCMLImageAnalysisResult

void __67__SCMLImageAnalysisResult_MediaAnalysis__mad_sceneClassifications___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [v6 doubleValue];
  if (v7 >= 0.00999999978)
  {
    v8 = VCPSpecialLabelToExtendedSceneClassificationID(v5);
    if (v8)
    {
      v17 = @"Confidence";
      v18[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v10 = *(a1 + 32);
      v11 = [v8 stringValue];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Unknown safety classification %@ (no reserved identifier)", &v13, 0x16u);
    }
  }
}

id __66__SCMLImageAnalysisResult_MediaAnalysis__mad_sensitivityAnalysis___block_invoke(uint64_t a1, int a2, void *a3)
{
  v3 = a2;
  v5 = &unk_1F49BB598;
  if (a2)
  {
    v5 = &unk_1F49BB588;
  }

  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  *(*(*(a1 + 32) + 8) + 24) |= v3;
  v7 = *(*(*(a1 + 40) + 8) + 24);
  [v6 doubleValue];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;

  return v6;
}

void __105__SCMLImageAnalysisResult_MediaAnalysis__mad_mergeSensitiveAnalysisResults_withSensitiveAnalysisResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) objectForKeyedSubscript:v23];
  v8 = (a1 + 40);
  v9 = [*(a1 + 40) objectForKeyedSubscript:v23];
  v10 = v9;
  if (v7 | v9)
  {
    if (v7)
    {
      if (v9)
      {
        v11 = [v7 BOOLValue];
        if (v11 == [v10 BOOLValue])
        {
          v17 = [*v6 objectForKeyedSubscript:v5];
          [v17 doubleValue];
          v19 = v18;
          v20 = [*v8 objectForKeyedSubscript:v5];
          [v20 doubleValue];
          if (v19 >= v21)
          {
            v22 = (a1 + 32);
          }

          else
          {
            v22 = (a1 + 40);
          }

          v14 = *v22;

          goto LABEL_12;
        }

        if ([v7 BOOLValue])
        {
          v12 = (a1 + 32);
        }

        else
        {
          v12 = (a1 + 40);
        }

        v13 = *v12;
      }

      else
      {
        v13 = *v6;
      }
    }

    else
    {
      v13 = *v8;
    }

    v14 = v13;
LABEL_12:
    v15 = [v14 objectForKeyedSubscript:v23];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:v23];

    v16 = [v14 objectForKeyedSubscript:v5];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v16 forKeyedSubscript:v5];
  }
}

@end