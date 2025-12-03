@interface CAMSetVideoOrientationCommand
- (CAMSetVideoOrientationCommand)initWithCaptureOrientation:(int64_t)orientation;
- (CAMSetVideoOrientationCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)orientation;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSetVideoOrientationCommand

- (CAMSetVideoOrientationCommand)initWithCaptureOrientation:(int64_t)orientation
{
  v8.receiver = self;
  v8.super_class = CAMSetVideoOrientationCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__captureOrientation = orientation;
    v6 = v4;
  }

  return v5;
}

- (CAMSetVideoOrientationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMSetVideoOrientationCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__captureOrientation = [coderCopy decodeIntegerForKey:@"CAMSetVideoOrientationCommandCaptureOrientation"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMSetVideoOrientationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMSetVideoOrientationCommand _captureOrientation](self forKey:{"_captureOrientation", v5.receiver, v5.super_class), @"CAMSetVideoOrientationCommandCaptureOrientation"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMSetVideoOrientationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMSetVideoOrientationCommand *)self _captureOrientation];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _captureOrientation = [(CAMSetVideoOrientationCommand *)self _captureOrientation];
  if (_captureOrientation)
  {
    v5 = _captureOrientation;
    currentMovieFileOutput = [contextCopy currentMovieFileOutput];
    currentStillImageOutput = [contextCopy currentStillImageOutput];
    v8 = currentStillImageOutput;
    if (currentMovieFileOutput)
    {
      currentStillImageOutput = currentMovieFileOutput;
    }

    v9 = [currentStillImageOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
    [v9 setVideoOrientation:{-[CAMSetVideoOrientationCommand _videoOrientationForCaptureOrientation:](self, "_videoOrientationForCaptureOrientation:", v5)}];
  }
}

- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
  }
}

@end