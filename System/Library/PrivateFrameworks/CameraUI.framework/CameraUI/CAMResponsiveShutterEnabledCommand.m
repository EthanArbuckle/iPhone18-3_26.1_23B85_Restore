@interface CAMResponsiveShutterEnabledCommand
- (CAMResponsiveShutterEnabledCommand)initWithCoder:(id)a3;
- (CAMResponsiveShutterEnabledCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMResponsiveShutterEnabledCommand

- (CAMResponsiveShutterEnabledCommand)initWithEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMResponsiveShutterEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMResponsiveShutterEnabledCommand)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CAMResponsiveShutterEnabledCommandKey"];

  return [(CAMResponsiveShutterEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMResponsiveShutterEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMResponsiveShutterEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMResponsiveShutterEnabledCommandKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMResponsiveShutterEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMResponsiveShutterEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v5 = [a3 currentStillImageOutput];
  v4 = [(CAMResponsiveShutterEnabledCommand *)self _isEnabled];
  if ([v5 isResponsiveCaptureSupported])
  {
    [v5 setResponsiveCaptureEnabled:1];
  }

  if ([v5 isFastCapturePrioritizationSupported])
  {
    [v5 setFastCapturePrioritizationEnabled:v4];
  }
}

@end