@interface CAMFlashCommand
- (CAMFlashCommand)initWithCoder:(id)coder;
- (CAMFlashCommand)initWithFlashMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMFlashCommand

- (CAMFlashCommand)initWithFlashMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = CAMFlashCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__flashMode = mode;
    v6 = v4;
  }

  return v5;
}

- (CAMFlashCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMFlashCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__flashMode = [coderCopy decodeIntegerForKey:@"CAMFlashCommandFlashMode"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMFlashCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMFlashCommand _flashMode](self forKey:{"_flashMode", v5.receiver, v5.super_class), @"CAMFlashCommandFlashMode"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMFlashCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMFlashCommand *)self _flashMode];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  if (currentStillImageOutput)
  {
    v7 = [CAMCaptureConversions captureFlashModeForFlashMode:[(CAMFlashCommand *)self _flashMode]];
    if ([currentVideoDevice hasFlash] && objc_msgSend(currentVideoDevice, "isFlashModeSupported:", v7))
    {
      if ([currentVideoDevice flashMode] != v7)
      {
        [currentVideoDevice setFlashMode:v7];
      }
    }

    else if ([currentVideoDevice hasFlash])
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CAMFlashCommand *)currentVideoDevice executeWithContext:v7, v8];
      }
    }

    photoSettingsForSceneMonitoring = [currentStillImageOutput photoSettingsForSceneMonitoring];
    v10 = [MEMORY[0x1E6987100] photoSettingsFromPhotoSettings:photoSettingsForSceneMonitoring];
    [v10 setFlashMode:v7];
    [currentStillImageOutput setPhotoSettingsForSceneMonitoring:v10];
  }

  else
  {
    photoSettingsForSceneMonitoring = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(photoSettingsForSceneMonitoring, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A3640000, photoSettingsForSceneMonitoring, OS_LOG_TYPE_DEFAULT, "Trying to update flash mode in a capture mode that doesn't support flash. Ignoring.", v11, 2u);
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