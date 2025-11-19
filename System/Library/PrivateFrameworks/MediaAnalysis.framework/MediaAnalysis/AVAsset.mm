@interface AVAsset
@end

@implementation AVAsset

void __55__AVAsset_MediaAnalysis__vcp_keyFrameWithMaxDimension___block_invoke(uint64_t a1, CGImage *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 48);
    v9 = (v7 + 48);
    v8 = v10;
    if (v10)
    {
      CFRelease(v8);
      *v9 = 0;
    }

    CGImage_CreateCVPixelBuffer(a2, v9);
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to decode first frame (%@)", &v11, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__AVAsset_MediaAnalysis__vcp_frameAtTimeStamp_withMaxDimension___block_invoke(uint64_t a1, CGImage *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 48);
    v9 = (v7 + 48);
    v8 = v10;
    if (v10)
    {
      CFRelease(v8);
      *v9 = 0;
    }

    CGImage_CreateCVPixelBuffer(a2, v9);
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to decode first frame (%@)", &v11, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end