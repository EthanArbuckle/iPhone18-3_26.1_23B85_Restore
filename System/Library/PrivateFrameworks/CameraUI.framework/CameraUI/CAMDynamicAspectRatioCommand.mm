@interface CAMDynamicAspectRatioCommand
- (CAMDynamicAspectRatioCommand)initWithCoder:(id)coder;
- (CAMDynamicAspectRatioCommand)initWithSmartFramingFieldOfView:(int64_t)view videoDynamicAspectRatio:(int64_t)ratio mode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position configureForSecondaryDevice:(BOOL)device;
- (id)_dynamicAspectRatio;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_executeForCurrentDeviceWithContext:(id)context;
- (void)_executeForSecondaryDeviceWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMDynamicAspectRatioCommand

- (CAMDynamicAspectRatioCommand)initWithSmartFramingFieldOfView:(int64_t)view videoDynamicAspectRatio:(int64_t)ratio mode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position configureForSecondaryDevice:(BOOL)device
{
  v18.receiver = self;
  v18.super_class = CAMDynamicAspectRatioCommand;
  v14 = [(CAMCaptureCommand *)&v18 initWithSubcommands:0];
  v15 = v14;
  if (v14)
  {
    v14->__smartFramingFieldOfView = view;
    v14->__videoDynamicAspectRatio = ratio;
    v14->__mode = mode;
    v14->__videoConfiguration = configuration;
    v14->__devicePosition = position;
    v14->__configureForSecondaryDevice = device;
    v16 = v14;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMDynamicAspectRatioCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[4] = [(CAMDynamicAspectRatioCommand *)self _smartFramingFieldOfView];
  v4[5] = [(CAMDynamicAspectRatioCommand *)self _videoDynamicAspectRatio];
  v4[6] = [(CAMDynamicAspectRatioCommand *)self _mode];
  v4[7] = [(CAMDynamicAspectRatioCommand *)self _videoConfiguration];
  v4[8] = [(CAMDynamicAspectRatioCommand *)self _devicePosition];
  *(v4 + 24) = [(CAMDynamicAspectRatioCommand *)self _configureForSecondaryDevice];
  return v4;
}

- (CAMDynamicAspectRatioCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMDynamicAspectRatioCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  if ([(CAMDynamicAspectRatioCommand *)self _configureForSecondaryDevice])
  {
    [(CAMDynamicAspectRatioCommand *)self _executeForSecondaryDeviceWithContext:contextCopy];
  }

  else
  {
    [(CAMDynamicAspectRatioCommand *)self _executeForCurrentDeviceWithContext:contextCopy];
  }
}

- (void)_executeForCurrentDeviceWithContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 isDynamicAspectRatioSupportedForMode:-[CAMDynamicAspectRatioCommand _mode](self devicePosition:{"_mode"), -[CAMDynamicAspectRatioCommand _devicePosition](self, "_devicePosition")}];

  if (v6)
  {
    _videoDynamicAspectRatio = [(CAMDynamicAspectRatioCommand *)self _videoDynamicAspectRatio];
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 useSquareFormatForDynamicAspectRatioForMode:-[CAMDynamicAspectRatioCommand _mode](self videoConfiguration:{"_mode"), -[CAMDynamicAspectRatioCommand _videoConfiguration](self, "_videoConfiguration")}];

    if (!_videoDynamicAspectRatio || v9)
    {
      _dynamicAspectRatio = [(CAMDynamicAspectRatioCommand *)self _dynamicAspectRatio];
      currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
      supportedDynamicAspectRatios = [currentVideoDeviceFormat supportedDynamicAspectRatios];
      v13 = [supportedDynamicAspectRatios containsObject:_dynamicAspectRatio];

      currentVideoDevice = os_log_create("com.apple.camera", "CaptureCommand");
      v15 = os_log_type_enabled(currentVideoDevice, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v16 = 138543362;
          v17 = _dynamicAspectRatio;
          _os_log_impl(&dword_1A3640000, currentVideoDevice, OS_LOG_TYPE_DEFAULT, "Setting dynamic aspect ratio: %{public}@", &v16, 0xCu);
        }

        currentVideoDevice = [contextCopy currentVideoDevice];
        [currentVideoDevice setDynamicAspectRatio:_dynamicAspectRatio completionHandler:0];
      }

      else if (v15)
      {
        v16 = 138543362;
        v17 = _dynamicAspectRatio;
        _os_log_impl(&dword_1A3640000, currentVideoDevice, OS_LOG_TYPE_DEFAULT, "Unsupported dynamic aspect ratio: %{public}@", &v16, 0xCu);
      }
    }
  }
}

- (id)_dynamicAspectRatio
{
  v3 = *MEMORY[0x1E69868B8];
  _videoDynamicAspectRatio = [(CAMDynamicAspectRatioCommand *)self _videoDynamicAspectRatio];
  if (_videoDynamicAspectRatio)
  {
    v5 = [CAMCaptureConversions AVCaptureAspectRatioForCAMDynamicAspectRatio:_videoDynamicAspectRatio];
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

- (void)_executeForSecondaryDeviceWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = *MEMORY[0x1E69868B8];
  currentSecondaryVideoDeviceFormat = [contextCopy currentSecondaryVideoDeviceFormat];
  supportedDynamicAspectRatios = [currentSecondaryVideoDeviceFormat supportedDynamicAspectRatios];
  v7 = [supportedDynamicAspectRatios containsObject:v4];

  currentSecondaryVideoDevice = os_log_create("com.apple.camera", "FRSV");
  v9 = os_log_type_enabled(currentSecondaryVideoDevice, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1A3640000, currentSecondaryVideoDevice, OS_LOG_TYPE_DEFAULT, "Setting dynamic aspect ratio for secondary device: %{public}@", &v10, 0xCu);
    }

    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];
    [currentSecondaryVideoDevice setDynamicAspectRatio:v4 completionHandler:0];
  }

  else if (v9)
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_1A3640000, currentSecondaryVideoDevice, OS_LOG_TYPE_DEFAULT, "Unsupported dynamic aspect ratio for secondary device: %{public}@", &v10, 0xCu);
  }
}

@end