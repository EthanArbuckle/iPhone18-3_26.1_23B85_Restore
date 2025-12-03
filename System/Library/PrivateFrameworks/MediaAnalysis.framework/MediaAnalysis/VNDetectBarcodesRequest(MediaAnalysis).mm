@interface VNDetectBarcodesRequest(MediaAnalysis)
+ (id)mad_defaultRequest;
@end

@implementation VNDetectBarcodesRequest(MediaAnalysis)

+ (id)mad_defaultRequest
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69844A0]);
  v1 = _os_feature_enabled_impl();
  v2 = v1;
  if (v1)
  {
    v3 = 3737841665;
  }

  else
  {
    v3 = 3737841664;
  }

  v12 = 0;
  v4 = [v0 setRevision:v3 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = *MEMORY[0x1E69848A0];
    v13[0] = *MEMORY[0x1E69848C0];
    v13[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [v0 setSymbologies:v7];

    if ((v2 & 1) == 0)
    {
      [v0 setUseSegmentationPregating:1];
    }

    if (DeviceHasANE())
    {
      defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
      [v0 setProcessingDevice:defaultANEDevice];
    }

    v9 = v0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 description];
      *buf = 67109378;
      v15 = v3;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to set revision %u for VNDetectBarcodesRequest with error: %@", buf, 0x12u);
    }

    v9 = 0;
  }

  return v9;
}

@end