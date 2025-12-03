@interface CAMResponsiveShutterEnabledCommand
- (CAMResponsiveShutterEnabledCommand)initWithCoder:(id)coder;
- (CAMResponsiveShutterEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMResponsiveShutterEnabledCommand

- (CAMResponsiveShutterEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMResponsiveShutterEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMResponsiveShutterEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMResponsiveShutterEnabledCommandKey"];

  return [(CAMResponsiveShutterEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMResponsiveShutterEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMResponsiveShutterEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMResponsiveShutterEnabledCommandKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMResponsiveShutterEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMResponsiveShutterEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  _isEnabled = [(CAMResponsiveShutterEnabledCommand *)self _isEnabled];
  if ([currentStillImageOutput isResponsiveCaptureSupported])
  {
    [currentStillImageOutput setResponsiveCaptureEnabled:1];
  }

  if ([currentStillImageOutput isFastCapturePrioritizationSupported])
  {
    [currentStillImageOutput setFastCapturePrioritizationEnabled:_isEnabled];
  }
}

@end