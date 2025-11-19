@interface VNRecognizeDocumentElementsRequest(MediaAnalysis)
+ (id)vcp_sceneRequest;
@end

@implementation VNRecognizeDocumentElementsRequest(MediaAnalysis)

+ (id)vcp_sceneRequest
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E6984620]);
  v1 = v0;
  if (v0)
  {
    [v0 setRevision:1];
    [v1 setMetalContextPriority:1];
    [v1 setPreferBackgroundProcessing:1];
    if (DeviceHasANE())
    {
      v2 = [MEMORY[0x1E6984608] defaultANEDevice];
      [v1 setProcessingDevice:v2];
    }

    v3 = [v1 textElements];
    [v3 setRecognize:1];

    v4 = [v1 machineReadableCodeElements];
    [v4 setRecognize:1];

    v5 = [v1 documentElements];
    [v5 setRecognize:1];

    v6 = v1;
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", &v8, 0xCu);
  }

  return v1;
}

@end