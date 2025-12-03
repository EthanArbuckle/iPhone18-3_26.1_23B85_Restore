@interface CAMVideoHDRCommand
- (CAMVideoHDRCommand)initWithCoder:(id)coder;
- (CAMVideoHDRCommand)initWithVideoHDREnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoHDRCommand

- (CAMVideoHDRCommand)initWithVideoHDREnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoHDRCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoHDRCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoHDRCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMVideoHDRCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoHDRCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoHDRCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoHDRCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoHDRCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoHDRCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevicePreset = [contextCopy currentVideoDevicePreset];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
  currentVideoDevice = [contextCopy currentVideoDevice];

  _isEnabled = [(CAMVideoHDRCommand *)self _isEnabled];
  v8 = [currentVideoDevicePreset isEqualToString:*MEMORY[0x1E6986AF0]];
  if (!currentVideoDevicePreset || (v8 & 1) != 0)
  {
    if (currentVideoDeviceFormat && [currentVideoDeviceFormat isVideoHDRSupported])
    {
      [currentVideoDevice setAutomaticallyAdjustsVideoHDREnabled:0];
      [currentVideoDevice setVideoHDREnabled:_isEnabled];
    }
  }

  else
  {
    [currentVideoDevice setAutomaticallyAdjustsVideoHDREnabled:_isEnabled];
  }
}

@end