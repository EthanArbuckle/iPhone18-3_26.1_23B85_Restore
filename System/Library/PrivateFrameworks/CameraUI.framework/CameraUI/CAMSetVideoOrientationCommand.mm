@interface CAMSetVideoOrientationCommand
- (CAMSetVideoOrientationCommand)initWithCaptureOrientation:(int64_t)a3;
- (CAMSetVideoOrientationCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSetVideoOrientationCommand

- (CAMSetVideoOrientationCommand)initWithCaptureOrientation:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMSetVideoOrientationCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__captureOrientation = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMSetVideoOrientationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMSetVideoOrientationCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__captureOrientation = [v4 decodeIntegerForKey:@"CAMSetVideoOrientationCommandCaptureOrientation"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMSetVideoOrientationCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CAMSetVideoOrientationCommand _captureOrientation](self forKey:{"_captureOrientation", v5.receiver, v5.super_class), @"CAMSetVideoOrientationCommandCaptureOrientation"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMSetVideoOrientationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMSetVideoOrientationCommand *)self _captureOrientation];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v10 = a3;
  v4 = [(CAMSetVideoOrientationCommand *)self _captureOrientation];
  if (v4)
  {
    v5 = v4;
    v6 = [v10 currentMovieFileOutput];
    v7 = [v10 currentStillImageOutput];
    v8 = v7;
    if (v6)
    {
      v7 = v6;
    }

    v9 = [v7 connectionWithMediaType:*MEMORY[0x1E6987608]];
    [v9 setVideoOrientation:{-[CAMSetVideoOrientationCommand _videoOrientationForCaptureOrientation:](self, "_videoOrientationForCaptureOrientation:", v5)}];
  }
}

- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

@end