@interface CAMTorchCommand
- (CAMTorchCommand)initWithCoder:(id)coder;
- (CAMTorchCommand)initWithTorchLevel:(float)level;
- (CAMTorchCommand)initWithTorchMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMTorchCommand

- (CAMTorchCommand)initWithTorchMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = CAMTorchCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__torchMode = mode;
    v4->__level = 3.4028e38;
    v6 = v4;
  }

  return v5;
}

- (CAMTorchCommand)initWithTorchLevel:(float)level
{
  v8.receiver = self;
  v8.super_class = CAMTorchCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__torchMode = 1;
    v4->__level = level;
    v6 = v4;
  }

  return v5;
}

- (CAMTorchCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CAMTorchCommand;
  v5 = [(CAMCaptureCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__torchMode = [coderCopy decodeIntegerForKey:@"CAMTorchCommandTorchMode"];
    [coderCopy decodeFloatForKey:@"CAMTorchCommandTorchLevel"];
    v5->__level = v6;
    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMTorchCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMTorchCommand _torchMode](self forKey:{"_torchMode", v5.receiver, v5.super_class), @"CAMTorchCommandTorchMode"}];
  [(CAMTorchCommand *)self _level];
  [coderCopy encodeFloat:@"CAMTorchCommandTorchLevel" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CAMTorchCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:zone];
  v4[4] = [(CAMTorchCommand *)self _torchMode];
  [(CAMTorchCommand *)self _level];
  *(v4 + 6) = v5;
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  v5 = [CAMCaptureConversions captureTorchModeForTorchMode:[(CAMTorchCommand *)self _torchMode]];
  [(CAMTorchCommand *)self _level];
  v7 = v6;
  if ([currentVideoDevice hasTorch] && objc_msgSend(currentVideoDevice, "isTorchModeSupported:", v5))
  {
    if (v7 >= 3.4028e38)
    {
      [currentVideoDevice setTorchMode:v5];
    }

    else
    {
      v12 = 0;
      *&v8 = v7;
      [currentVideoDevice setTorchModeOnWithLevel:&v12 error:v8];
      v9 = v12;
      if (v9)
      {
        v10 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(CAMTorchCommand *)v9 executeWithContext:v10];
        }
      }
    }
  }

  else if ([currentVideoDevice hasTorch])
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CAMTorchCommand *)currentVideoDevice executeWithContext:v5, v11];
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
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Ignoring request to set unsupported torch mode %ld on device %{public}@.", &v3, 0x16u);
}

- (void)executeWithContext:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Attempt to set explicit torch level failed with error %{public}@", &v2, 0xCu);
}

@end