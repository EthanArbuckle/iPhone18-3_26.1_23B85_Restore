@interface VCPColorNormalizationAnalyzer
- (VCPColorNormalizationAnalyzer)init;
- (int)analyzeCGImage:(CGImage *)image results:(id *)results;
@end

@implementation VCPColorNormalizationAnalyzer

- (VCPColorNormalizationAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = VCPColorNormalizationAnalyzer;
  v2 = [(VCPColorNormalizationAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_39];
    sessionPool = v2->_sessionPool;
    v2->_sessionPool = v3;
  }

  return v2;
}

id __37__VCPColorNormalizationAnalyzer_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6984688]);

  return v0;
}

- (int)analyzeCGImage:(CGImage *)image results:(id *)results
{
  v52 = *MEMORY[0x1E69E9840];
  *results = 0;
  getObject = [(VCPObjectPool *)self->_sessionPool getObject];
  v6 = objc_alloc(MEMORY[0x1E69845B8]);
  object = [getObject object];
  v8 = [v6 initWithCGImage:image options:MEMORY[0x1E695E0F8] session:object];

  v33 = v8;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69843E0]);
    v10 = v9;
    if (v9)
    {
      v40 = 0;
      v11 = [v9 setRevision:3737841664 error:&v40];
      v12 = v40;
      if (v11)
      {
        [v10 setMetalContextPriority:1];
        [v10 setPreferBackgroundProcessing:1];
        v32 = v10;
        if (DeviceHasANE())
        {
          defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
          [v10 setProcessingDevice:defaultANEDevice];
        }

        v47 = v10;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
        v39 = v12;
        v15 = [v33 performRequests:v14 error:&v39];
        v31 = v39;

        if (v15)
        {
          results = [v10 results];
          if ([results count])
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v18 = [results objectAtIndexedSubscript:0];
            adjustmentKeys = [v18 adjustmentKeys];

            v20 = [adjustmentKeys countByEnumeratingWithState:&v35 objects:v46 count:16];
            if (v20)
            {
              v21 = *v36;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v36 != v21)
                  {
                    objc_enumerationMutation(adjustmentKeys);
                  }

                  v23 = *(*(&v35 + 1) + 8 * i);
                  v24 = [results objectAtIndexedSubscript:{0, v31}];
                  v25 = [v24 adjustmentValuesForKey:v23];
                  [dictionary setObject:v25 forKeyedSubscript:v23];
                }

                v20 = [adjustmentKeys countByEnumeratingWithState:&v35 objects:v46 count:16];
              }

              while (v20);
            }

            v26 = MEMORY[0x1CCA954E0](dictionary, 0);
            v44 = @"ColorNormalizationResults";
            v41 = @"colorNormalizationData";
            v42 = v26;
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v43 = v27;
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
            v45 = v28;
            *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

            v29 = 0;
          }

          else
          {
            v29 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VNGeneratePhotosAdjustmentsRequest failed", buf, 2u);
          }

          v29 = -18;
        }

        v12 = v31;
        v10 = v32;
        goto LABEL_32;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v49 = 3737841664;
        v50 = 2112;
        v51 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNGeneratePhotosAdjustmentsRequest::setRevision %lu: %@", buf, 0x16u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VNGeneratePhotosAdjustmentsRequest", buf, 2u);
      }

      v12 = 0;
    }

    v29 = -18;
LABEL_32:

    goto LABEL_33;
  }

  v29 = -108;
LABEL_33:

  return v29;
}

@end