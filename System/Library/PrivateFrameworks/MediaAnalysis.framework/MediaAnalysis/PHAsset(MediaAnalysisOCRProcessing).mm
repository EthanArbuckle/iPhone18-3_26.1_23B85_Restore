@interface PHAsset(MediaAnalysisOCRProcessing)
- (BOOL)vcp_isDownloadGated;
- (id)vcp_passedOCRGating;
- (uint64_t)vcp_needsOCRProcessing;
- (uint64_t)vcp_ocrMajorDimensionForResource:()MediaAnalysisOCRProcessing;
@end

@implementation PHAsset(MediaAnalysisOCRProcessing)

- (uint64_t)vcp_needsOCRProcessing
{
  characterRecognitionProperties = [self characterRecognitionProperties];
  if ([characterRecognitionProperties algorithmVersion] < 8 || objc_msgSend(characterRecognitionProperties, "algorithmVersion") == 0x7FFF)
  {
    v3 = 1;
  }

  else
  {
    adjustmentVersion = [characterRecognitionProperties adjustmentVersion];
    adjustmentVersion2 = [self adjustmentVersion];
    v3 = [adjustmentVersion isEqualToDate:adjustmentVersion2] ^ 1;
  }

  return v3;
}

- (BOOL)vcp_isDownloadGated
{
  characterRecognitionProperties = [self characterRecognitionProperties];
  v2 = [characterRecognitionProperties algorithmVersion] == 0x7FFF;

  return v2;
}

- (id)vcp_passedOCRGating
{
  v34 = *MEMORY[0x1E69E9840];
  sceneAnalysisProperties = [self sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  if ((VCPPhotosSceneProcessingVersionInternal() == sceneAnalysisVersion || (v4 = [sceneAnalysisProperties sceneAnalysisVersion], *MEMORY[0x1E69C0C30] == v4)) && (objc_msgSend(sceneAnalysisProperties, "sceneAnalysisTimestamp"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "adjustmentVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, v5, v7))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    sceneClassifications = [self sceneClassifications];
    v9 = [sceneClassifications countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v9)
    {
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(sceneClassifications);
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
              localIdentifier = [self localIdentifier];
              [v12 confidence];
              *buf = 138412802;
              v28 = localIdentifier;
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

        v9 = [sceneClassifications countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [self localIdentifier];
      *buf = 138412290;
      v28 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Text Confidence: 0.00f Passed Gating: 0 [Absent]", buf, 0xCu);
    }

    v14 = MEMORY[0x1E695E110];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier3 = [self localIdentifier];
      *buf = 138412290;
      v28 = localIdentifier3;
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
  pixelWidth = [v4 pixelWidth];
  pixelHeight = [v4 pixelHeight];
  v7 = pixelHeight;
  if (pixelWidth && pixelHeight)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier = [self localIdentifier];
    v13 = 138413058;
    v14 = localIdentifier;
    v15 = 1024;
    type = [v4 type];
    v17 = 1024;
    v18 = pixelWidth;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Resource (%d) has invalid dimensions (%dx%d); falling back to asset", &v13, 0x1Eu);
  }

  pixelWidth = [self pixelWidth];
  pixelHeight2 = [self pixelHeight];
  v7 = pixelHeight2;
  if (pixelWidth && pixelHeight2)
  {
LABEL_8:
    v10 = [self vcp_targetMajorDimensionForImageWithWidth:pixelWidth height:v7 andMinPreferredMinorDimension:1210];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [self localIdentifier];
      v13 = 138412802;
      v14 = localIdentifier2;
      v15 = 1024;
      type = pixelWidth;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Asset has invalid dimensions (%dx%d)", &v13, 0x18u);
    }

    v10 = 0;
  }

  return v10;
}

@end