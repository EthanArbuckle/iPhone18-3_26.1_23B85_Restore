@interface VCPImageFaceQualityAnalyzer
- (int)analyzeDetectedFaces:(__CVBuffer *)a3 faceResults:(id)a4 cancel:(id)a5;
@end

@implementation VCPImageFaceQualityAnalyzer

- (int)analyzeDetectedFaces:(__CVBuffer *)a3 faceResults:(id)a4 cancel:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v38 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  faceQualityScores = self->_faceQualityScores;
  v39 = self;
  self->_faceQualityScores = v7;

  v34 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695DF70] array];
  v36 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E69845B8]);
  v37 = [v10 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8]];
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
      v12 = v38;
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

            v16 = [*(*(&v45 + 1) + 8 * i) observation];
            [v9 addObject:v16];
          }

          v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v13);
      }

      [v33 setInputFaceObservations:v9];
      v52 = v33;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v31 = v44 = 0;
      v17 = [v37 performRequests:? error:?];
      v32 = 0;
      if (v17)
      {
        v18 = [v33 results];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = [v33 results];
          [v36 addObjectsFromArray:v20];
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = v36;
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

              v25 = v39->_faceQualityScores;
              v26 = MEMORY[0x1E696AD98];
              v27 = [*(*(&v40 + 1) + 8 * j) faceCaptureQuality];
              [v27 floatValue];
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