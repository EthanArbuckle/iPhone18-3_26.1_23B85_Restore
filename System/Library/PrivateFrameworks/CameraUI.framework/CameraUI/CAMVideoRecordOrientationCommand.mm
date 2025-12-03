@interface CAMVideoRecordOrientationCommand
- (CAMVideoRecordOrientationCommand)initWithCoder:(id)coder;
- (CAMVideoRecordOrientationCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoRecordOrientationCommand

- (CAMVideoRecordOrientationCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoRecordOrientationCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoRecordOrientationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoRecordOrientationCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMVideoRecordOrientationCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoRecordOrientationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoRecordOrientationCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoRecordOrientationCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoRecordOrientationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoRecordOrientationCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentMovieFileOutput = [context currentMovieFileOutput];
  v5 = [currentMovieFileOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  _isEnabled = [(CAMVideoRecordOrientationCommand *)self _isEnabled];
  if (v5)
  {
    [currentMovieFileOutput setRecordsVideoOrientationAndMirroringChanges:_isEnabled asMetadataTrackForConnection:v5];
  }

  else if (_isEnabled)
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Unable to opt-in to video orientation and mirroring timed metadata, the connection is invalid.", v8, 2u);
    }
  }
}

@end