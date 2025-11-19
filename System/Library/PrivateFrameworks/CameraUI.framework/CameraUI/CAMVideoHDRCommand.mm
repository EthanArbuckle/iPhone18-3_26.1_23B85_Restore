@interface CAMVideoHDRCommand
- (CAMVideoHDRCommand)initWithCoder:(id)a3;
- (CAMVideoHDRCommand)initWithVideoHDREnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoHDRCommand

- (CAMVideoHDRCommand)initWithVideoHDREnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoHDRCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoHDRCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMVideoHDRCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMVideoHDRCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMVideoHDRCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMVideoHDRCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoHDRCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoHDRCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoHDRCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v9 = [v4 currentVideoDevicePreset];
  v5 = [v4 currentVideoDeviceFormat];
  v6 = [v4 currentVideoDevice];

  v7 = [(CAMVideoHDRCommand *)self _isEnabled];
  v8 = [v9 isEqualToString:*MEMORY[0x1E6986AF0]];
  if (!v9 || (v8 & 1) != 0)
  {
    if (v5 && [v5 isVideoHDRSupported])
    {
      [v6 setAutomaticallyAdjustsVideoHDREnabled:0];
      [v6 setVideoHDREnabled:v7];
    }
  }

  else
  {
    [v6 setAutomaticallyAdjustsVideoHDREnabled:v7];
  }
}

@end