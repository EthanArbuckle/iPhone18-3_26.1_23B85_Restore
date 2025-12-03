@interface CAMNightModeConfigurationCommand
- (CAMNightModeConfigurationCommand)initWithCoder:(id)coder;
- (CAMNightModeConfigurationCommand)initWithNightModeEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMNightModeConfigurationCommand

- (CAMNightModeConfigurationCommand)initWithNightModeEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = CAMNightModeConfigurationCommand;
  result = [(CAMCaptureCommand *)&v5 init];
  if (result)
  {
    result->__enabled = enabled;
  }

  return result;
}

- (CAMNightModeConfigurationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CAMNightModeConfigurationCommand;
  v5 = [(CAMCaptureCommand *)&v7 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMNightModeConfigurationEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMNightModeConfigurationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMNightModeConfigurationCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMNightModeConfigurationEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMNightModeConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMNightModeConfigurationCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  _isEnabled = [(CAMNightModeConfigurationCommand *)self _isEnabled];
  supportedDigitalFlashModes = [currentStillImageOutput supportedDigitalFlashModes];
  if ([supportedDigitalFlashModes containsObject:&unk_1F16C73E8])
  {
    isDigitalFlashSupported = [currentVideoDeviceFormat isDigitalFlashSupported];

    if (isDigitalFlashSupported)
    {
      [currentStillImageOutput setDigitalFlashCaptureEnabled:_isEnabled];
      photoSettingsForSceneMonitoring = [currentStillImageOutput photoSettingsForSceneMonitoring];
      if ([photoSettingsForSceneMonitoring digitalFlashMode] != _isEnabled)
      {
        v11 = [MEMORY[0x1E6987100] photoSettingsFromPhotoSettings:photoSettingsForSceneMonitoring];
        [v11 setDigitalFlashMode:_isEnabled];
        [currentStillImageOutput setPhotoSettingsForSceneMonitoring:v11];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  if (_isEnabled)
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