@interface VCPImageFaceQualityAnalyzer
- (int)analyzeDetectedFaces:(__CVBuffer *)faces faceResults:(id)results cancel:(id)cancel;
@end

@implementation VCPImageFaceQualityAnalyzer

- (int)analyzeDetectedFaces:(__CVBuffer *)faces faceResults:(id)results cancel:(id)cancel
{
  v54 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  faceQualityScores = self->_faceQualityScores;
  selfCopy = self;
  self->_faceQualityScores = v7;

  v34 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E69845B8]);
  v37 = [v10 initWithCVPixelBuffer:faces options:MEMORY[0x1E695E0F8]];
  if (v37)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69844B0]);
    v33 = v11;
    if (v11)
    {
      [v11 setRevision:1];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v12 = resultsCopy;
      v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v13)
      {
        v14 = *v46;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v12);
            }

            observation = [*(*(&v45 + 1) + 8 * i) observation];
            [array addObject:observation];
          }

          v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v13);
      }

      [v33 setInputFaceObservations:array];
      v52 = v33;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v31 = v44 = 0;
      v17 = [v37 performRequests:? error:?];
      v32 = 0;
      if (v17)
      {
        results = [v33 results];
        v19 = results == 0;

        if (!v19)
        {
          results2 = [v33 results];
          [array2 addObjectsFromArray:results2];
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = array2;
        v22 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v22)
        {
          v23 = *v41;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = selfCopy->_faceQualityScores;
              v26 = MEMORY[0x1E696AD98];
              faceCaptureQuality = [*(*(&v40 + 1) + 8 * j) faceCaptureQuality];
              [faceCaptureQuality floatValue];
              v28 = [v26 numberWithFloat:?];
              [(NSMutableArray *)v25 addObject:v28];
            }

            v22 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v22);
        }

        v29 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v32;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to analyzeDetectedFaces - %@", buf, 0xCu);
        }

        v29 = -18;
      }
    }

    else
    {
      v29 = -18;
    }
  }

  else
  {
    v29 = -108;
  }

  objc_autoreleasePoolPop(context);
  objc_autoreleasePoolPop(v34);

  return v29;
}

@end