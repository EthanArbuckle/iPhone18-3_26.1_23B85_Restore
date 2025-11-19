@interface VNRequest(MediaAnalysis)
- (id)vcp_idealDimension;
- (void)vcp_idealDimension;
@end

@implementation VNRequest(MediaAnalysis)

- (id)vcp_idealDimension
{
  v14 = *MEMORY[0x1E69E9840];
  NSSelectorFromString(&cfstr_Supportedimage.isa);
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 supportedImageSizeSet];
    if ([v2 count])
    {
      v3 = MEMORY[0x1E696B098];
      v4 = [v2 objectAtIndexedSubscript:0];
      v5 = [v4 pixelsWideRange];
      v6 = [v5 idealDimension];
      v7 = [v2 objectAtIndexedSubscript:0];
      v8 = [v7 pixelsHighRange];
      v9 = [v3 valueWithSize:{v6, objc_msgSend(v8, "idealDimension")}];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        [(VNRequest(MediaAnalysis) *)a1 vcp_idealDimension];
      }

      v9 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1 description];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to query ideal dimension for request %@ because the request does not conform to VNImageIdealImageSizeProviding protocol", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (void)vcp_idealDimension
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to query ideal dimension for request %@ due to empty supportedImageSizeSet", &v2, 0xCu);
}

@end