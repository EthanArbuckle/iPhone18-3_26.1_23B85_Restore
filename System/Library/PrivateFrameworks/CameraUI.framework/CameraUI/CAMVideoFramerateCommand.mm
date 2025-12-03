@interface CAMVideoFramerateCommand
- (CAMVideoFramerateCommand)initWithCoder:(id)coder;
- (CAMVideoFramerateCommand)initWithVideoConfiguration:(int64_t)configuration configureSecondaryDevice:(BOOL)device;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoFramerateCommand

- (CAMVideoFramerateCommand)initWithVideoConfiguration:(int64_t)configuration configureSecondaryDevice:(BOOL)device
{
  v10.receiver = self;
  v10.super_class = CAMVideoFramerateCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__videoConfiguration = configuration;
    v6->__configureSecondaryDevice = device;
    v8 = v6;
  }

  return v7;
}

- (CAMVideoFramerateCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoFramerateCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__videoConfiguration = [coderCopy decodeIntegerForKey:@"CAMVideoFramerateCommandVideoConfiguration"];
    v5->__configureSecondaryDevice = [coderCopy decodeBoolForKey:@"CAMVideoFramerateCommandConfigureSecondaryDevice"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoFramerateCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMVideoFramerateCommand _videoConfiguration](self forKey:{"_videoConfiguration", v5.receiver, v5.super_class), @"CAMVideoFramerateCommandVideoConfiguration"}];
  [coderCopy encodeBool:-[CAMVideoFramerateCommand _configureSecondaryDevice](self forKey:{"_configureSecondaryDevice"), @"CAMVideoFramerateCommandConfigureSecondaryDevice"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoFramerateCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[4] = [(CAMVideoFramerateCommand *)self _videoConfiguration];
  *(v4 + 24) = [(CAMVideoFramerateCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(CAMVideoFramerateCommand *)self _configureSecondaryDevice])
  {
    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];
    currentSecondaryVideoDeviceInput = [contextCopy currentSecondaryVideoDeviceInput];
    [contextCopy currentSecondaryVideoDeviceFormat];
  }

  else
  {
    currentSecondaryVideoDevice = [contextCopy currentVideoDevice];
    currentSecondaryVideoDeviceInput = [contextCopy currentVideoDeviceInput];
    [contextCopy currentVideoDeviceFormat];
  }
  v7 = ;

  _videoConfiguration = [(CAMVideoFramerateCommand *)self _videoConfiguration];
  v9 = _videoConfiguration;
  memset(&v15, 0, sizeof(v15));
  if (_videoConfiguration <= 8)
  {
    if (_videoConfiguration <= 3)
    {
      if (_videoConfiguration != 1)
      {
        if (_videoConfiguration != 2)
        {
          v10 = 0;
          if (_videoConfiguration != 3)
          {
            goto LABEL_28;
          }

LABEL_19:
          v10 = 240;
          goto LABEL_28;
        }

        goto LABEL_24;
      }

LABEL_25:
      v10 = 60;
      goto LABEL_28;
    }

    if ((_videoConfiguration - 5) >= 3)
    {
      if (_videoConfiguration != 4)
      {
        v10 = 0;
        if (_videoConfiguration != 8)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_24:
      v10 = 120;
      goto LABEL_28;
    }

LABEL_23:
    v10 = 30;
    goto LABEL_28;
  }

  if (_videoConfiguration > 12)
  {
    if (_videoConfiguration == 13)
    {
      goto LABEL_24;
    }

    if (_videoConfiguration == 14)
    {
      v10 = 100;
      goto LABEL_28;
    }

    v10 = 0;
    if (_videoConfiguration != 10003)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if ((_videoConfiguration - 11) < 2)
  {
    v10 = 25;
    goto LABEL_28;
  }

  if (_videoConfiguration == 9)
  {
    goto LABEL_25;
  }

  if (_videoConfiguration == 10)
  {
    v10 = 24;
  }

  else
  {
    v10 = 0;
  }

LABEL_28:
  CMTimeMake(&v15, 1, v10);
  buf = v15;
  if ([v7 cam_supportsFrameDuration:&buf])
  {
    buf = v15;
    [currentSecondaryVideoDevice setActiveVideoMinFrameDuration:&buf];
    buf = v15;
    [currentSecondaryVideoDevice setActiveVideoMaxFrameDuration:&buf];
    buf = v15;
    [currentSecondaryVideoDeviceInput setVideoMinFrameDurationOverride:&buf];
  }

  else
  {
    buf = **&MEMORY[0x1E6960C70];
    v14 = *&buf.value;
    epoch = buf.epoch;
    [currentSecondaryVideoDeviceInput setVideoMinFrameDurationOverride:&buf];
    *&buf.value = v14;
    buf.epoch = epoch;
    [currentSecondaryVideoDevice setActiveVideoMinFrameDuration:&buf];
    *&buf.value = v14;
    buf.epoch = epoch;
    [currentSecondaryVideoDevice setActiveVideoMaxFrameDuration:&buf];
    if (currentSecondaryVideoDevice)
    {
      [currentSecondaryVideoDevice activeVideoMinFrameDuration];
      [currentSecondaryVideoDevice activeVideoMaxFrameDuration];
    }

    v12 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      if (v9 > 9999)
      {
        if (v9 > 10002)
        {
          switch(v9)
          {
            case 10003:
              v13 = @"ImagePickerVGA";
              break;
            case 10004:
              v13 = @"ImagePickeriFrame720p";
              break;
            case 10005:
              v13 = @"ImagePickeriFrame540p";
              break;
          }
        }

        else if (v9 == 10000)
        {
          v13 = @"ImagePickerHigh";
        }

        else if (v9 == 10001)
        {
          v13 = @"ImagePickerMedium";
        }

        else
        {
          v13 = @"ImagePickerLow";
        }
      }

      else
      {
        switch(v9)
        {
          case 0:
            v13 = @"Auto";
            break;
          case 1:
            v13 = @"1080p60";
            break;
          case 2:
            v13 = @"720p120";
            break;
          case 3:
            v13 = @"720p240";
            break;
          case 4:
            v13 = @"1080p120";
            break;
          case 5:
            v13 = @"4k30";
            break;
          case 6:
            v13 = @"720p30";
            break;
          case 7:
            v13 = @"1080p30";
            break;
          case 8:
            v13 = @"1080p240";
            break;
          case 9:
            v13 = @"4k60";
            break;
          case 10:
            v13 = @"4k24";
            break;
          case 11:
            v13 = @"1080p25";
            break;
          case 12:
            v13 = @"4k25";
            break;
          case 13:
            v13 = @"4k120";
            break;
          case 14:
            v13 = @"4k100";
            break;
          default:
            break;
        }
      }

      LODWORD(buf.value) = 134218754;
      *(&buf.value + 4) = 0 / 0;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = 0 / 0;
      HIWORD(buf.epoch) = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Resetting video min/max framerate to %ld/%ld for configuration %{public}@ and current format %{public}@", &buf, 0x2Au);
    }
  }
}

@end