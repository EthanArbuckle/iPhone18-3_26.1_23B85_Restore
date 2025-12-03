@interface CAMCTMVideoCaptureEnabledCommand
- (CAMCTMVideoCaptureEnabledCommand)initWithCoder:(id)coder;
- (CAMCTMVideoCaptureEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMCTMVideoCaptureEnabledCommand

- (CAMCTMVideoCaptureEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMCTMVideoCaptureEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMCTMVideoCaptureEnabledCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMCTMVideoCaptureEnabledCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMCTMVideoCaptureEnabledCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMCTMVideoCaptureEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMCTMVideoCaptureEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMCTMVideoCaptureEnabledCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMCTMVideoCaptureEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMCTMVideoCaptureEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  _isEnabled = [(CAMCTMVideoCaptureEnabledCommand *)self _isEnabled];
  if ([currentStillImageOutput isMovieRecordingSupported])
  {
    [currentStillImageOutput setMovieRecordingEnabled:_isEnabled];
  }

  else if (_isEnabled)
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAMCTMVideoCaptureEnabledCommand executeWithContext:v6];
    }
  }
}

@end