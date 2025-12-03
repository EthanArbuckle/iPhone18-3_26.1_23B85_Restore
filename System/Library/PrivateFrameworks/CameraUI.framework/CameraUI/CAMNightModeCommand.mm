@interface CAMNightModeCommand
- (CAMNightModeCommand)initWithCoder:(id)coder;
- (CAMNightModeCommand)initWithNightMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMNightModeCommand

- (CAMNightModeCommand)initWithNightMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = CAMNightModeCommand;
  result = [(CAMCaptureCommand *)&v5 init];
  if (result)
  {
    result->__nightMode = mode;
  }

  return result;
}

- (CAMNightModeCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CAMNightModeCommand;
  v5 = [(CAMCaptureCommand *)&v7 init];
  if (v5)
  {
    v5->__nightMode = [coderCopy decodeBoolForKey:@"CAMNightModeKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMNightModeCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMNightModeCommand _nightMode](self forKey:{"_nightMode", v5.receiver, v5.super_class) != 0, @"CAMNightModeKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMNightModeCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMNightModeCommand *)self _nightMode];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  _nightMode = [(CAMNightModeCommand *)self _nightMode];
  if ([currentVideoDeviceFormat isDigitalFlashSupported])
  {
    v9 = [CAMCaptureConversions captureDigitalFlashModeForNightMode:_nightMode];
    supportedDigitalFlashModes = [currentStillImageOutput supportedDigitalFlashModes];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v12 = [supportedDigitalFlashModes containsObject:v11];

    if (v12)
    {
      [currentVideoDevice setDigitalFlashMode:v9];
    }

    else
    {
      v14 = os_log_create("com.apple.camera", "CaptureCommand");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (_nightMode > 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_1E76F7CE8[_nightMode];
        }

        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Not setting night mode to %{public}@ because the output doesn't support it.", &v16, 0xCu);
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Not changing night mode because the feature isn't supported.", &v16, 2u);
    }
  }
}

@end