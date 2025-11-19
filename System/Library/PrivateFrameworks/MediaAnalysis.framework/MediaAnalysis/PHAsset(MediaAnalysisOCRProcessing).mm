@interface PHAsset(MediaAnalysisOCRProcessing)
- (BOOL)vcp_isDownloadGated;
- (id)vcp_passedOCRGating;
- (uint64_t)vcp_needsOCRProcessing;
- (uint64_t)vcp_ocrMajorDimensionForResource:()MediaAnalysisOCRProcessing;
@end

@implementation PHAsset(MediaAnalysisOCRProcessing)

- (uint64_t)vcp_needsOCRProcessing
{
  v2 = [a1 characterRecognitionProperties];
  if ([v2 algorithmVersion] < 8 || objc_msgSend(v2, "algorithmVersion") == 0x7FFF)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 adjustmentVersion];
    v5 = [a1 adjustmentVersion];
    v3 = [v4 isEqualToDate:v5] ^ 1;
  }

  return v3;
}

- (BOOL)vcp_isDownloadGated
{
  v1 = [a1 characterRecognitionProperties];
  v2 = [v1 algorithmVersion] == 0x7FFF;

  return v2;
}

- (id)vcp_passedOCRGating
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [a1 sceneAnalysisProperties];
  v3 = [v2 sceneAnalysisVersion];
  if ((VCPPhotosSceneProcessingVersionInternal() == v3 || (v4 = [v2 sceneAnalysisVersion], *MEMORY[0x1E69C0C30] == v4)) && (objc_msgSend(v2, "sceneAnalysisTimestamp"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "adjustmentVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, v5, v7))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [a1 sceneClassifications];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v9)
    {
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if ([v12 extendedSceneIdentifier] == 2147482063)
          {
            [v12 confidence];
            v17 = v16;
            [MEMORY[0x1E6978628] vcp_ocrGatingThreshold];
            v19 = v18;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v20 = [a1 localIdentifier];
              [v12 confidence];
              *buf = 138412802;
              v28 = v20;
              v29 = 2048;
              v30 = v21;
              v31 = 1024;
              v32 = v17 >= v19;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Text Confidence: %0.2f Passed Gating: %d", buf, 0x1Cu);
            }

            v14 = [MEMORY[0x1E696AD98] numberWithBool:v17 >= v19];

            goto LABEL_24;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v13 = [a1 localIdentifier];
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Text Confidence: 0.00f Passed Gating: 0 [Absent]", buf, 0xCu);
    }

    v14 = MEMORY[0x1E695E110];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v15 = [a1 localIdentifier];
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Asset scene properties unavailable or out-of-date", buf, 0xCu);
    }

    v14 = 0;
  }

LABEL_24:

  return v14;
}

- (uint64_t)vcp_ocrMajorDimensionForResource:()MediaAnalysisOCRProcessing
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pixelWidth];
  v6 = [v4 pixelHeight];
  v7 = v6;
  if (v5 && v6)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [a1 localIdentifier];
    v13 = 138413058;
    v14 = v8;
    v15 = 1024;
    v16 = [v4 type];
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Resource (%d) has invalid dimensions (%dx%d); falling back to asset", &v13, 0x1Eu);
  }

  v5 = [a1 pixelWidth];
  v9 = [a1 pixelHeight];
  v7 = v9;
  if (v5 && v9)
  {
LABEL_8:
    v10 = [a1 vcp_targetMajorDimensionForImageWithWidth:v5 height:v7 andMinPreferredMinorDimension:1210];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [a1 localIdentifier];
      v13 = 138412802;
      v14 = v11;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Asset has invalid dimensions (%dx%d)", &v13, 0x18u);
    }

    v10 = 0;
  }

  return v10;
}

@end