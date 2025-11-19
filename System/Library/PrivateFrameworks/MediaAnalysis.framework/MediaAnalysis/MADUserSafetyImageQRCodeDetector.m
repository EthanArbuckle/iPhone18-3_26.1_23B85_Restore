@interface MADUserSafetyImageQRCodeDetector
- (id)sensitivityFromQRCodeForPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 signpostPayload:(id)a5;
@end

@implementation MADUserSafetyImageQRCodeDetector

- (id)sensitivityFromQRCodeForPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 signpostPayload:(id)a5
{
  v5 = *&a4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v17 = 138412290;
    *&v17[4] = objc_opt_class();
    v9 = *&v17[4];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] running...", v17, 0xCu);
  }

  v10 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
  v11 = v10 == 0;

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    [(MADUserSafetyQRCodeDetector *)self processPixelBuffer:a3 orientation:v5 signpostPayload:v8];
    objc_autoreleasePoolPop(v12);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    *v17 = 138412290;
    *&v17[4] = v13;
    v14 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete", v17, 0xCu);
  }

  v15 = [(MADUserSafetyQRCodeDetector *)self sensitivity];

  return v15;
}

@end