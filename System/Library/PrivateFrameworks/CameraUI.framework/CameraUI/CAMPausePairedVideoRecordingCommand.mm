@interface CAMPausePairedVideoRecordingCommand
- (CAMPausePairedVideoRecordingCommand)initWithCoder:(id)coder;
- (CAMPausePairedVideoRecordingCommand)initWithRecordingPaused:(BOOL)paused;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPausePairedVideoRecordingCommand

- (CAMPausePairedVideoRecordingCommand)initWithRecordingPaused:(BOOL)paused
{
  v8.receiver = self;
  v8.super_class = CAMPausePairedVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__recordingPaused = paused;
    v6 = v4;
  }

  return v5;
}

- (CAMPausePairedVideoRecordingCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPausePairedVideoRecordingCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__recordingPaused = [coderCopy decodeBoolForKey:@"CAMPausePairedVideoRecordingCommandPaused"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPausePairedVideoRecordingCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMPausePairedVideoRecordingCommand _isRecordingPaused](self forKey:{"_isRecordingPaused", v5.receiver, v5.super_class), @"CAMPausePairedVideoRecordingCommandPaused"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPausePairedVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMPausePairedVideoRecordingCommand *)self _isRecordingPaused];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  isLivePhotoCaptureSupported = [currentStillImageOutput isLivePhotoCaptureSupported];
  isLivePhotoCaptureEnabled = [currentStillImageOutput isLivePhotoCaptureEnabled];
  if (isLivePhotoCaptureSupported && isLivePhotoCaptureEnabled)
  {
    [currentStillImageOutput setLivePhotoCaptureSuspended:{-[CAMPausePairedVideoRecordingCommand _isRecordingPaused](self, "_isRecordingPaused")}];
  }
}

@end