@interface CAMVideoRecordingCameraSelectionBehaviorCommand
- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCameraSwitchingEnabled:(BOOL)enabled;
- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoRecordingCameraSelectionBehaviorCommand

- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCameraSwitchingEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__cameraSwitchingEnabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__cameraSwitchingEnabled = [coderCopy decodeBoolForKey:@"CAMVideoRecordingCameraSelectionBehaviorCommandCameraSwitchingEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoRecordingCameraSelectionBehaviorCommand _isCameraSwitchingEnabled](self forKey:{"_isCameraSwitchingEnabled", v5.receiver, v5.super_class), @"CAMVideoRecordingCameraSelectionBehaviorCommandCameraSwitchingEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoRecordingCameraSelectionBehaviorCommand *)self _isCameraSwitchingEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];

  _isCameraSwitchingEnabled = [(CAMVideoRecordingCameraSelectionBehaviorCommand *)self _isCameraSwitchingEnabled];
  bravoCameraSelectionBehavior = [currentVideoDevice bravoCameraSelectionBehavior];
  if (([bravoCameraSelectionBehavior isEqualToString:*MEMORY[0x1E69868D8]] & 1) == 0)
  {
    v8 = MEMORY[0x1E69868D0];
    if (!_isCameraSwitchingEnabled)
    {
      v8 = MEMORY[0x1E69868C8];
    }

    [currentMovieFileOutput setBravoCameraSelectionBehaviorForRecording:*v8];
  }
}

@end