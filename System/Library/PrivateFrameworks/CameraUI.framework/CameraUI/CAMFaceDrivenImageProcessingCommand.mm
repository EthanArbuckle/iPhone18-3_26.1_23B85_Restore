@interface CAMFaceDrivenImageProcessingCommand
- (CAMFaceDrivenImageProcessingCommand)initWithCoder:(id)coder;
- (CAMFaceDrivenImageProcessingCommand)initWithFaceDrivenImageProcessingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMFaceDrivenImageProcessingCommand

- (CAMFaceDrivenImageProcessingCommand)initWithFaceDrivenImageProcessingEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMFaceDrivenImageProcessingCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_faceDrivenImageProcessingEnabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMFaceDrivenImageProcessingCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMFaceDrivenImageProcessingCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_faceDrivenImageProcessingEnabled = [coderCopy decodeBoolForKey:@"CAMFaceDrivenImageProcessingCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMFaceDrivenImageProcessingCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMFaceDrivenImageProcessingCommand isFaceDrivenImageProcessingEnabled](self forKey:{"isFaceDrivenImageProcessingEnabled", v5.receiver, v5.super_class), @"CAMFaceDrivenImageProcessingCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMFaceDrivenImageProcessingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMFaceDrivenImageProcessingCommand *)self isFaceDrivenImageProcessingEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([currentVideoDevice isFaceDetectionSupported])
  {
    isFaceDrivenImageProcessingEnabled = [(CAMFaceDrivenImageProcessingCommand *)self isFaceDrivenImageProcessingEnabled];
    currentMovieFileOutput = [contextCopy currentMovieFileOutput];
    isFaceDetectionDuringVideoPreviewSupported = (currentMovieFileOutput == 0) & isFaceDrivenImageProcessingEnabled;
    if (currentMovieFileOutput && isFaceDrivenImageProcessingEnabled)
    {
      isFaceDetectionDuringVideoPreviewSupported = [currentVideoDevice isFaceDetectionDuringVideoPreviewSupported];
    }

    if (isFaceDetectionDuringVideoPreviewSupported != [currentVideoDevice isFaceDetectionDrivenImageProcessingEnabled])
    {
      [currentVideoDevice setFaceDetectionDrivenImageProcessingEnabled:isFaceDetectionDuringVideoPreviewSupported];
    }
  }

  else
  {
    currentMovieFileOutput = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(currentMovieFileOutput, OS_LOG_TYPE_DEBUG))
    {
      [CAMFaceDrivenImageProcessingCommand executeWithContext:currentMovieFileOutput];
    }
  }
}

@end