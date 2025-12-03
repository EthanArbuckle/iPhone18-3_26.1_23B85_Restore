@interface CAMImageControlModeCommand
- (CAMImageControlModeCommand)initWithCaptureMode:(int64_t)mode capturing:(BOOL)capturing;
- (CAMImageControlModeCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMImageControlModeCommand

- (CAMImageControlModeCommand)initWithCaptureMode:(int64_t)mode capturing:(BOOL)capturing
{
  v10.receiver = self;
  v10.super_class = CAMImageControlModeCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__captureMode = mode;
    v6->__capturing = capturing;
    v8 = v6;
  }

  return v7;
}

- (CAMImageControlModeCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMImageControlModeCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__captureMode = [coderCopy decodeIntegerForKey:@"CAMImageControlModeCommandCaptureMode"];
    v5->__capturing = [coderCopy decodeBoolForKey:@"CAMImageControlModeCommandCapturing"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMImageControlModeCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMImageControlModeCommand _captureMode](self forKey:{"_captureMode", v5.receiver, v5.super_class), @"CAMImageControlModeCommandCaptureMode"}];
  [coderCopy encodeBool:-[CAMImageControlModeCommand _capturing](self forKey:{"_capturing"), @"CAMImageControlModeCommandCapturing"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMImageControlModeCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[4] = [(CAMImageControlModeCommand *)self _captureMode];
  *(v4 + 24) = [(CAMImageControlModeCommand *)self _capturing];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  _captureMode = [(CAMImageControlModeCommand *)self _captureMode];
  if (_captureMode <= 9)
  {
    if (((1 << _captureMode) & 0x3D7) != 0)
    {
      [currentVideoDevice setAutomaticallyAdjustsImageControlMode:1];
      goto LABEL_4;
    }

    if (_captureMode == 3)
    {
      if ([currentVideoDevice isImageControlModeSupported:4])
      {
        [currentVideoDevice setAutomaticallyAdjustsImageControlMode:0];
        v6 = currentVideoDevice;
        v7 = 4;
LABEL_18:
        [v6 setImageControlMode:v7];
        goto LABEL_4;
      }

      v9 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v10 = "Unable to set the proper image control mode for panorama, results will be unexpected!";
        v11 = &v13;
LABEL_23:
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      if ([currentVideoDevice isImageControlModeSupported:5] && objc_msgSend(currentVideoDevice, "isImageControlModeSupported:", 6))
      {
        if ([(CAMImageControlModeCommand *)self _capturing])
        {
          v8 = 6;
        }

        else
        {
          v8 = 5;
        }
      }

      else
      {
        v8 = 2;
      }

      if ([currentVideoDevice isImageControlModeSupported:v8])
      {
        if ([currentVideoDevice isTorchModeSupported:0])
        {
          [currentVideoDevice setTorchMode:0];
        }

        [currentVideoDevice setAutomaticallyAdjustsImageControlMode:0];
        v6 = currentVideoDevice;
        v7 = v8;
        goto LABEL_18;
      }

      v9 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v10 = "Unable to set the proper image control mode for timelapse, results will be unexpected!";
        v11 = &v12;
        goto LABEL_23;
      }
    }
  }

LABEL_4:
}

@end