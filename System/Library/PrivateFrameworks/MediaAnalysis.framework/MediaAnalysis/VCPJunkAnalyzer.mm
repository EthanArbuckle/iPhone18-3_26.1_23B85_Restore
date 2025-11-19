@interface VCPJunkAnalyzer
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation VCPJunkAnalyzer

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a6;
  *a5 = 0;
  v9 = objc_alloc(MEMORY[0x1E69845B8]);
  v10 = [v9 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8]];
  if (v10)
  {
    if (v8 && (v8[2](v8) & 1) != 0)
    {
      v11 = 0;
      v12 = -128;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E6984590]);
      v11 = v13;
      if (v13 && ([v13 setPreferBackgroundProcessing:1], v35[0] = v11, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v10, "performRequests:error:", v14, 0), v14, (v15 & 1) != 0))
      {
        v16 = [v11 results];
        v17 = [v16 count] == 1;

        if (v17)
        {
          v18 = [v11 results];
          v19 = [v18 objectAtIndexedSubscript:0];

          v33 = @"JunkResults";
          v30 = @"attributes";
          v28 = @"junk";
          v20 = MEMORY[0x1E696AD98];
          [v19 confidence];
          v21 = [v20 numberWithFloat:?];
          v29 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v31 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v32 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
          v34 = v24;
          *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v11 results];
          v27[0] = 67109120;
          v27[1] = [v25 count];
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Junk analayzer - unexpected %d VNObservations", v27, 8u);
        }

        v12 = 0;
      }

      else
      {
        v12 = -18;
      }
    }
  }

  else
  {
    v11 = 0;
    v12 = -108;
  }

  return v12;
}

@end