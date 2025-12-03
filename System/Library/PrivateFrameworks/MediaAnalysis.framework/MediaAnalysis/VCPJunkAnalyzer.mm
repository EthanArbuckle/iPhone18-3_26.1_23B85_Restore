@interface VCPJunkAnalyzer
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
@end

@implementation VCPJunkAnalyzer

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v35[1] = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  *results = 0;
  v9 = objc_alloc(MEMORY[0x1E69845B8]);
  v10 = [v9 initWithCVPixelBuffer:buffer options:MEMORY[0x1E695E0F8]];
  if (v10)
  {
    if (cancelCopy && (cancelCopy[2](cancelCopy) & 1) != 0)
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
        results = [v11 results];
        v17 = [results count] == 1;

        if (v17)
        {
          results2 = [v11 results];
          v19 = [results2 objectAtIndexedSubscript:0];

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
          *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          results3 = [v11 results];
          v27[0] = 67109120;
          v27[1] = [results3 count];
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