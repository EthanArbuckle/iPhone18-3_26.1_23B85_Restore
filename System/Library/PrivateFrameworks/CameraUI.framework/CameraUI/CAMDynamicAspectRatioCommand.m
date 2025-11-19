@interface CAMDynamicAspectRatioCommand
- (CAMDynamicAspectRatioCommand)initWithCoder:(id)a3;
- (CAMDynamicAspectRatioCommand)initWithSmartFramingFieldOfView:(int64_t)a3 videoDynamicAspectRatio:(int64_t)a4 mode:(int64_t)a5 videoConfiguration:(int64_t)a6 devicePosition:(int64_t)a7 configureForSecondaryDevice:(BOOL)a8;
- (id)_dynamicAspectRatio;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_executeForCurrentDeviceWithContext:(id)a3;
- (void)_executeForSecondaryDeviceWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMDynamicAspectRatioCommand

- (CAMDynamicAspectRatioCommand)initWithSmartFramingFieldOfView:(int64_t)a3 videoDynamicAspectRatio:(int64_t)a4 mode:(int64_t)a5 videoConfiguration:(int64_t)a6 devicePosition:(int64_t)a7 configureForSecondaryDevice:(BOOL)a8
{
  v18.receiver = self;
  v18.super_class = CAMDynamicAspectRatioCommand;
  v14 = [(CAMCaptureCommand *)&v18 initWithSubcommands:0];
  v15 = v14;
  if (v14)
  {
    v14->__smartFramingFieldOfView = a3;
    v14->__videoDynamicAspectRatio = a4;
    v14->__mode = a5;
    v14->__videoConfiguration = a6;
    v14->__devicePosition = a7;
    v14->__configureForSecondaryDevice = a8;
    v16 = v14;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMDynamicAspectRatioCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[4] = [(CAMDynamicAspectRatioCommand *)self _smartFramingFieldOfView];
  v4[5] = [(CAMDynamicAspectRatioCommand *)self _videoDynamicAspectRatio];
  v4[6] = [(CAMDynamicAspectRatioCommand *)self _mode];
  v4[7] = [(CAMDynamicAspectRatioCommand *)self _videoConfiguration];
  v4[8] = [(CAMDynamicAspectRatioCommand *)self _devicePosition];
  *(v4 + 24) = [(CAMDynamicAspectRatioCommand *)self _configureForSecondaryDevice];
  return v4;
}

- (CAMDynamicAspectRatioCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMDynamicAspectRatioCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  if ([(CAMDynamicAspectRatioCommand *)self _configureForSecondaryDevice])
  {
    [(CAMDynamicAspectRatioCommand *)self _executeForSecondaryDeviceWithContext:v4];
  }

  else
  {
    [(CAMDynamicAspectRatioCommand *)self _executeForCurrentDeviceWithContext:v4];
  }
}

- (void)_executeForCurrentDeviceWithContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 isDynamicAspectRatioSupportedForMode:-[CAMDynamicAspectRatioCommand _mode](self devicePosition:{"_mode"), -[CAMDynamicAspectRatioCommand _devicePosition](self, "_devicePosition")}];

  if (v6)
  {
    v7 = [(CAMDynamicAspectRatioCommand *)self _videoDynamicAspectRatio];
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 useSquareFormatForDynamicAspectRatioForMode:-[CAMDynamicAspectRatioCommand _mode](self videoConfiguration:{"_mode"), -[CAMDynamicAspectRatioCommand _videoConfiguration](self, "_videoConfiguration")}];

    if (!v7 || v9)
    {
      v10 = [(CAMDynamicAspectRatioCommand *)self _dynamicAspectRatio];
      v11 = [v4 currentVideoDeviceFormat];
      v12 = [v11 supportedDynamicAspectRatios];
      v13 = [v12 containsObject:v10];

      v14 = os_log_create("com.apple.camera", "CaptureCommand");
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v16 = 138543362;
          v17 = v10;
          _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Setting dynamic aspect ratio: %{public}@", &v16, 0xCu);
        }

        v14 = [v4 currentVideoDevice];
        [v14 setDynamicAspectRatio:v10 completionHandler:0];
      }

      else if (v15)
      {
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Unsupported dynamic aspect ratio: %{public}@", &v16, 0xCu);
      }
    }
  }
}

- (id)_dynamicAspectRatio
{
  v3 = *MEMORY[0x1E69868B8];
  v4 = [(CAMDynamicAspectRatioCommand *)self _videoDynamicAspectRatio];
  if (v4)
  {
    v5 = [CAMCaptureConversions AVCaptureAspectRatioForCAMDynamicAspectRatio:v4];
  }

  else
  {
    if (([(CAMDynamicAspectRatioCommand *)self _smartFramingFieldOfView]- 3) > 1)
    {
      goto LABEL_6;
    }

    v5 = *MEMORY[0x1E69868B0];
  }

  v6 = v5;

  v3 = v6;
LABEL_6:

  return v3;
}

- (void)_executeForSecondaryDeviceWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69868B8];
  v5 = [v3 currentSecondaryVideoDeviceFormat];
  v6 = [v5 supportedDynamicAspectRatios];
  v7 = [v6 containsObject:v4];

  v8 = os_log_create("com.apple.camera", "FRSV");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Setting dynamic aspect ratio for secondary device: %{public}@", &v10, 0xCu);
    }

    v8 = [v3 currentSecondaryVideoDevice];
    [v8 setDynamicAspectRatio:v4 completionHandler:0];
  }

  else if (v9)
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Unsupported dynamic aspect ratio for secondary device: %{public}@", &v10, 0xCu);
  }
}

@end