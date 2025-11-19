@interface CAMVideoRecordingCameraSelectionBehaviorCommand
- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCameraSwitchingEnabled:(BOOL)a3;
- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoRecordingCameraSelectionBehaviorCommand

- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCameraSwitchingEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__cameraSwitchingEnabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoRecordingCameraSelectionBehaviorCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__cameraSwitchingEnabled = [v4 decodeBoolForKey:@"CAMVideoRecordingCameraSelectionBehaviorCommandCameraSwitchingEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMVideoRecordingCameraSelectionBehaviorCommand _isCameraSwitchingEnabled](self forKey:{"_isCameraSwitchingEnabled", v5.receiver, v5.super_class), @"CAMVideoRecordingCameraSelectionBehaviorCommandCameraSwitchingEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoRecordingCameraSelectionBehaviorCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoRecordingCameraSelectionBehaviorCommand *)self _isCameraSwitchingEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v9 = [v4 currentVideoDevice];
  v5 = [v4 currentMovieFileOutput];

  v6 = [(CAMVideoRecordingCameraSelectionBehaviorCommand *)self _isCameraSwitchingEnabled];
  v7 = [v9 bravoCameraSelectionBehavior];
  if (([v7 isEqualToString:*MEMORY[0x1E69868D8]] & 1) == 0)
  {
    v8 = MEMORY[0x1E69868D0];
    if (!v6)
    {
      v8 = MEMORY[0x1E69868C8];
    }

    [v5 setBravoCameraSelectionBehaviorForRecording:*v8];
  }
}

@end