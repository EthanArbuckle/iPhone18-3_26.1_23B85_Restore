@interface CAMVideoHDRSuspensionCommand
- (CAMVideoHDRSuspensionCommand)initWithCoder:(id)a3;
- (CAMVideoHDRSuspensionCommand)initWithVideoHDRSuspended:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoHDRSuspensionCommand

- (CAMVideoHDRSuspensionCommand)initWithVideoHDRSuspended:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoHDRSuspensionCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->_videoHDRSuspended = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoHDRSuspensionCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMVideoHDRSuspensionCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoHDRSuspensionCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoHDRSuspensionCommand *)self isVideoHDRSuspended];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  v6 = [v4 currentVideoDeviceFormat];

  if ([v5 isVideoHDREnabled] && objc_msgSend(v6, "isVideoHDRSuspensionSupported"))
  {
    v7 = [(CAMVideoHDRSuspensionCommand *)self isVideoHDRSuspended];
    if (v7 || [v5 isVideoHDRSuspended])
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"NO";
        if (v7)
        {
          v9 = @"YES";
        }

        v10 = v9;
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Setting videoHDRSuspended=%{public}@", &v11, 0xCu);
      }
    }

    if (v7 != [v5 isVideoHDRSuspended])
    {
      [v5 setVideoHDRSuspended:v7];
    }
  }
}

@end