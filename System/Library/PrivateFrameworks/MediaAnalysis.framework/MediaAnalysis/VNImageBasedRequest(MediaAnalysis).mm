@interface VNImageBasedRequest(MediaAnalysis)
+ (id)vcp_sceneRequestWithRequestClass:()MediaAnalysis andRevision:;
- (uint64_t)_configureRequestWithRevision:()MediaAnalysis;
@end

@implementation VNImageBasedRequest(MediaAnalysis)

- (uint64_t)_configureRequestWithRevision:()MediaAnalysis
{
  v17 = *MEMORY[0x1E69E9840];
  [a1 setMetalContextPriority:1];
  [a1 setPreferBackgroundProcessing:1];
  if (DeviceHasANE() && [objc_opt_class() _allowANE])
  {
    v5 = [MEMORY[0x1E6984608] defaultANEDevice];
    [a1 setProcessingDevice:v5];
  }

  v10 = 0;
  v6 = [a1 setRevision:a3 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    *buf = 138412802;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set %@::setRevision %lu: %@", buf, 0x20u);
  }

  return v6;
}

+ (id)vcp_sceneRequestWithRequestClass:()MediaAnalysis andRevision:
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(a3);
  v7 = v6;
  if (!v6)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = 138412290;
    v13 = a3;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Failed to create %@";
    goto LABEL_10;
  }

  if ([v6 _configureRequestWithRevision:a4])
  {
    v8 = v7;
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = a3;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Failed to configure %@";
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0xCu);
  }

LABEL_11:
  v8 = 0;
LABEL_12:

  return v8;
}

@end