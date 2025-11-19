@interface CAMNightModeCommand
- (CAMNightModeCommand)initWithCoder:(id)a3;
- (CAMNightModeCommand)initWithNightMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMNightModeCommand

- (CAMNightModeCommand)initWithNightMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CAMNightModeCommand;
  result = [(CAMCaptureCommand *)&v5 init];
  if (result)
  {
    result->__nightMode = a3;
  }

  return result;
}

- (CAMNightModeCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CAMNightModeCommand;
  v5 = [(CAMCaptureCommand *)&v7 init];
  if (v5)
  {
    v5->__nightMode = [v4 decodeBoolForKey:@"CAMNightModeKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMNightModeCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMNightModeCommand _nightMode](self forKey:{"_nightMode", v5.receiver, v5.super_class) != 0, @"CAMNightModeKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMNightModeCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMNightModeCommand *)self _nightMode];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  v6 = [v4 currentVideoDeviceFormat];
  v7 = [v4 currentStillImageOutput];

  v8 = [(CAMNightModeCommand *)self _nightMode];
  if ([v6 isDigitalFlashSupported])
  {
    v9 = [CAMCaptureConversions captureDigitalFlashModeForNightMode:v8];
    v10 = [v7 supportedDigitalFlashModes];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v12 = [v10 containsObject:v11];

    if (v12)
    {
      [v5 setDigitalFlashMode:v9];
    }

    else
    {
      v14 = os_log_create("com.apple.camera", "CaptureCommand");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 > 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_1E76F7CE8[v8];
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