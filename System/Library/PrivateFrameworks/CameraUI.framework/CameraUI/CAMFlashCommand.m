@interface CAMFlashCommand
- (CAMFlashCommand)initWithCoder:(id)a3;
- (CAMFlashCommand)initWithFlashMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMFlashCommand

- (CAMFlashCommand)initWithFlashMode:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMFlashCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__flashMode = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMFlashCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMFlashCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->__flashMode = [v4 decodeIntegerForKey:@"CAMFlashCommandFlashMode"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMFlashCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMFlashCommand _flashMode](self forKey:{"_flashMode", v5.receiver, v5.super_class), @"CAMFlashCommandFlashMode"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMFlashCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMFlashCommand *)self _flashMode];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  v6 = [v4 currentStillImageOutput];

  if (v6)
  {
    v7 = [CAMCaptureConversions captureFlashModeForFlashMode:[(CAMFlashCommand *)self _flashMode]];
    if ([v5 hasFlash] && objc_msgSend(v5, "isFlashModeSupported:", v7))
    {
      if ([v5 flashMode] != v7)
      {
        [v5 setFlashMode:v7];
      }
    }

    else if ([v5 hasFlash])
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CAMFlashCommand *)v5 executeWithContext:v7, v8];
      }
    }

    v9 = [v6 photoSettingsForSceneMonitoring];
    v10 = [MEMORY[0x1E6987100] photoSettingsFromPhotoSettings:v9];
    [v10 setFlashMode:v7];
    [v6 setPhotoSettingsForSceneMonitoring:v10];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Trying to update flash mode in a capture mode that doesn't support flash. Ignoring.", v11, 2u);
    }
  }
}

- (void)executeWithContext:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Ignoring request to set unsupported flash mode %ld on device %{public}@.", &v3, 0x16u);
}

@end