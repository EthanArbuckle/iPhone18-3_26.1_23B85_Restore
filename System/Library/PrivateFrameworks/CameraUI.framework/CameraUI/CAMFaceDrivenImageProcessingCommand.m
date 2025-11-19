@interface CAMFaceDrivenImageProcessingCommand
- (CAMFaceDrivenImageProcessingCommand)initWithCoder:(id)a3;
- (CAMFaceDrivenImageProcessingCommand)initWithFaceDrivenImageProcessingEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMFaceDrivenImageProcessingCommand

- (CAMFaceDrivenImageProcessingCommand)initWithFaceDrivenImageProcessingEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMFaceDrivenImageProcessingCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_faceDrivenImageProcessingEnabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMFaceDrivenImageProcessingCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMFaceDrivenImageProcessingCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_faceDrivenImageProcessingEnabled = [v4 decodeBoolForKey:@"CAMFaceDrivenImageProcessingCommandEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMFaceDrivenImageProcessingCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMFaceDrivenImageProcessingCommand isFaceDrivenImageProcessingEnabled](self forKey:{"isFaceDrivenImageProcessingEnabled", v5.receiver, v5.super_class), @"CAMFaceDrivenImageProcessingCommandEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMFaceDrivenImageProcessingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMFaceDrivenImageProcessingCommand *)self isFaceDrivenImageProcessingEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  if ([v5 isFaceDetectionSupported])
  {
    v6 = [(CAMFaceDrivenImageProcessingCommand *)self isFaceDrivenImageProcessingEnabled];
    v7 = [v4 currentMovieFileOutput];
    v8 = (v7 == 0) & v6;
    if (v7 && v6)
    {
      v8 = [v5 isFaceDetectionDuringVideoPreviewSupported];
    }

    if (v8 != [v5 isFaceDetectionDrivenImageProcessingEnabled])
    {
      [v5 setFaceDetectionDrivenImageProcessingEnabled:v8];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CAMFaceDrivenImageProcessingCommand executeWithContext:v7];
    }
  }
}

@end