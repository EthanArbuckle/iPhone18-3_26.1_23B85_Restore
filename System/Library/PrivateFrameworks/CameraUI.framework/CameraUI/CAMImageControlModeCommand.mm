@interface CAMImageControlModeCommand
- (CAMImageControlModeCommand)initWithCaptureMode:(int64_t)a3 capturing:(BOOL)a4;
- (CAMImageControlModeCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMImageControlModeCommand

- (CAMImageControlModeCommand)initWithCaptureMode:(int64_t)a3 capturing:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CAMImageControlModeCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__captureMode = a3;
    v6->__capturing = a4;
    v8 = v6;
  }

  return v7;
}

- (CAMImageControlModeCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMImageControlModeCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__captureMode = [v4 decodeIntegerForKey:@"CAMImageControlModeCommandCaptureMode"];
    v5->__capturing = [v4 decodeBoolForKey:@"CAMImageControlModeCommandCapturing"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMImageControlModeCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMImageControlModeCommand _captureMode](self forKey:{"_captureMode", v5.receiver, v5.super_class), @"CAMImageControlModeCommandCaptureMode"}];
  [v4 encodeBool:-[CAMImageControlModeCommand _capturing](self forKey:{"_capturing"), @"CAMImageControlModeCommandCapturing"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMImageControlModeCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[4] = [(CAMImageControlModeCommand *)self _captureMode];
  *(v4 + 24) = [(CAMImageControlModeCommand *)self _capturing];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoDevice];
  v5 = [(CAMImageControlModeCommand *)self _captureMode];
  if (v5 <= 9)
  {
    if (((1 << v5) & 0x3D7) != 0)
    {
      [v4 setAutomaticallyAdjustsImageControlMode:1];
      goto LABEL_4;
    }

    if (v5 == 3)
    {
      if ([v4 isImageControlModeSupported:4])
      {
        [v4 setAutomaticallyAdjustsImageControlMode:0];
        v6 = v4;
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
      if ([v4 isImageControlModeSupported:5] && objc_msgSend(v4, "isImageControlModeSupported:", 6))
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

      if ([v4 isImageControlModeSupported:v8])
      {
        if ([v4 isTorchModeSupported:0])
        {
          [v4 setTorchMode:0];
        }

        [v4 setAutomaticallyAdjustsImageControlMode:0];
        v6 = v4;
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