@interface CAMNightModeConfigurationCommand
- (CAMNightModeConfigurationCommand)initWithCoder:(id)a3;
- (CAMNightModeConfigurationCommand)initWithNightModeEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMNightModeConfigurationCommand

- (CAMNightModeConfigurationCommand)initWithNightModeEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CAMNightModeConfigurationCommand;
  result = [(CAMCaptureCommand *)&v5 init];
  if (result)
  {
    result->__enabled = a3;
  }

  return result;
}

- (CAMNightModeConfigurationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CAMNightModeConfigurationCommand;
  v5 = [(CAMCaptureCommand *)&v7 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMNightModeConfigurationEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMNightModeConfigurationCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMNightModeConfigurationCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMNightModeConfigurationEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMNightModeConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMNightModeConfigurationCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 currentStillImageOutput];
  v6 = [v4 currentVideoDeviceFormat];

  v7 = [(CAMNightModeConfigurationCommand *)self _isEnabled];
  v8 = [v5 supportedDigitalFlashModes];
  if ([v8 containsObject:&unk_1F16C73E8])
  {
    v9 = [v6 isDigitalFlashSupported];

    if (v9)
    {
      [v5 setDigitalFlashCaptureEnabled:v7];
      v10 = [v5 photoSettingsForSceneMonitoring];
      if ([v10 digitalFlashMode] != v7)
      {
        v11 = [MEMORY[0x1E6987100] photoSettingsFromPhotoSettings:v10];
        [v11 setDigitalFlashMode:v7];
        [v5 setPhotoSettingsForSceneMonitoring:v11];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v7)
  {
    v12 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Not enabling digital flash because the feature is not supported.", v13, 2u);
    }
  }

LABEL_11:
}

@end