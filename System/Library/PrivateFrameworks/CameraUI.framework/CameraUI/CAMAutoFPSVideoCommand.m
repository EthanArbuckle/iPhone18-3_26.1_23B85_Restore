@interface CAMAutoFPSVideoCommand
- (CAMAutoFPSVideoCommand)initWithAutoFPSVideoEnabled:(BOOL)a3 configureSecondaryDevice:(BOOL)a4;
- (CAMAutoFPSVideoCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMAutoFPSVideoCommand

- (CAMAutoFPSVideoCommand)initWithAutoFPSVideoEnabled:(BOOL)a3 configureSecondaryDevice:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CAMAutoFPSVideoCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    v6->__autoFPSVideoEnabled = a3;
    v6->__configureSecondaryDevice = a4;
    v8 = v6;
  }

  return v7;
}

- (CAMAutoFPSVideoCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMAutoFPSVideoCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMAutoFPSVideoCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMAutoFPSVideoCommand *)self _isAutoFPSVideoEnabled];
  v4[25] = [(CAMAutoFPSVideoCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v8 = a3;
  v4 = [v8 currentVideoDevice];
  v5 = [v8 currentVideoDeviceFormat];
  if ([(CAMAutoFPSVideoCommand *)self _configureSecondaryDevice])
  {
    v6 = [v8 currentSecondaryVideoDevice];

    v7 = [v8 currentSecondaryVideoDeviceFormat];

    v4 = v6;
    v5 = v7;
  }

  if ([v5 isAutoVideoFrameRateSupported])
  {
    [v4 setAutoVideoFrameRateEnabled:{-[CAMAutoFPSVideoCommand _isAutoFPSVideoEnabled](self, "_isAutoFPSVideoEnabled")}];
  }
}

@end