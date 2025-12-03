@interface CAMIrisVideoRecordingCommand
- (CAMIrisVideoRecordingCommand)initWithCoder:(id)coder;
- (CAMIrisVideoRecordingCommand)initWithVideoRecordingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMIrisVideoRecordingCommand

- (CAMIrisVideoRecordingCommand)initWithVideoRecordingEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMIrisVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMIrisVideoRecordingCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMIrisVideoRecordingCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMIrisVideoRecordingCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMIrisVideoRecordingCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMIrisVideoRecordingCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMIrisVideoRecordingCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMIrisVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMIrisVideoRecordingCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  _isEnabled = [(CAMIrisVideoRecordingCommand *)self _isEnabled];
  if ([currentStillImageOutput isLivePhotoCaptureSupported])
  {
    [currentStillImageOutput setLivePhotoCaptureEnabled:_isEnabled];
  }
}

@end