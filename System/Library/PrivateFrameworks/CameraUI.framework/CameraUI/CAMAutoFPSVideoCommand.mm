@interface CAMAutoFPSVideoCommand
- (CAMAutoFPSVideoCommand)initWithAutoFPSVideoEnabled:(BOOL)enabled configureSecondaryDevice:(BOOL)device;
- (CAMAutoFPSVideoCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMAutoFPSVideoCommand

- (CAMAutoFPSVideoCommand)initWithAutoFPSVideoEnabled:(BOOL)enabled configureSecondaryDevice:(BOOL)device
{
  v10.receiver = self;
  v10.super_class = CAMAutoFPSVideoCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    v6->__autoFPSVideoEnabled = enabled;
    v6->__configureSecondaryDevice = device;
    v8 = v6;
  }

  return v7;
}

- (CAMAutoFPSVideoCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMAutoFPSVideoCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMAutoFPSVideoCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMAutoFPSVideoCommand *)self _isAutoFPSVideoEnabled];
  v4[25] = [(CAMAutoFPSVideoCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
  if ([(CAMAutoFPSVideoCommand *)self _configureSecondaryDevice])
  {
    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];

    currentSecondaryVideoDeviceFormat = [contextCopy currentSecondaryVideoDeviceFormat];

    currentVideoDevice = currentSecondaryVideoDevice;
    currentVideoDeviceFormat = currentSecondaryVideoDeviceFormat;
  }

  if ([currentVideoDeviceFormat isAutoVideoFrameRateSupported])
  {
    [currentVideoDevice setAutoVideoFrameRateEnabled:{-[CAMAutoFPSVideoCommand _isAutoFPSVideoEnabled](self, "_isAutoFPSVideoEnabled")}];
  }
}

@end