@interface CAMStillImageCaptureRequest(CAMCaptureEngine)
@end

@implementation CAMStillImageCaptureRequest(CAMCaptureEngine)

- (void)_configurePhotoSettings:()CAMCaptureEngine shouldIgnoreInitiationSettingsProperties:context:.cold.3(unint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = off_1E76FE7C0[a1];
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Cannot enable stereo capture because photoQualityPrioritization is set to %{public}@ (must be Quality)", &v3, 0xCu);
}

@end