@interface CAMVideoHDRSuspensionCommand
- (CAMVideoHDRSuspensionCommand)initWithCoder:(id)coder;
- (CAMVideoHDRSuspensionCommand)initWithVideoHDRSuspended:(BOOL)suspended;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoHDRSuspensionCommand

- (CAMVideoHDRSuspensionCommand)initWithVideoHDRSuspended:(BOOL)suspended
{
  v8.receiver = self;
  v8.super_class = CAMVideoHDRSuspensionCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->_videoHDRSuspended = suspended;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoHDRSuspensionCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMVideoHDRSuspensionCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoHDRSuspensionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoHDRSuspensionCommand *)self isVideoHDRSuspended];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  if ([currentVideoDevice isVideoHDREnabled] && objc_msgSend(currentVideoDeviceFormat, "isVideoHDRSuspensionSupported"))
  {
    isVideoHDRSuspended = [(CAMVideoHDRSuspensionCommand *)self isVideoHDRSuspended];
    if (isVideoHDRSuspended || [currentVideoDevice isVideoHDRSuspended])
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"NO";
        if (isVideoHDRSuspended)
        {
          v9 = @"YES";
        }

        v10 = v9;
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Setting videoHDRSuspended=%{public}@", &v11, 0xCu);
      }
    }

    if (isVideoHDRSuspended != [currentVideoDevice isVideoHDRSuspended])
    {
      [currentVideoDevice setVideoHDRSuspended:isVideoHDRSuspended];
    }
  }
}

@end