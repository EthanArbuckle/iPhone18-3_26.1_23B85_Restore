@interface CAMPrepareStillImageCaptureCommand
- (CAMPrepareStillImageCaptureCommand)initWithCoder:(id)a3;
- (CAMPrepareStillImageCaptureCommand)initWithSystemTime:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPrepareStillImageCaptureCommand

- (CAMPrepareStillImageCaptureCommand)initWithSystemTime:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CAMPrepareStillImageCaptureCommand;
  result = [(CAMCaptureCommand *)&v5 init];
  if (result)
  {
    result->__systemTimeOfCapture = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMPrepareStillImageCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMPrepareStillImageCaptureCommand *)self _systemTimeOfCapture];
  return v4;
}

- (CAMPrepareStillImageCaptureCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPrepareStillImageCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->__systemTimeOfCapture = [v4 decodeInt64ForKey:@"CAMPrepareStillImageCaptureCommandSystemTime"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[CAMPrepareStillImageCaptureCommand _systemTimeOfCapture](self forKey:{"_systemTimeOfCapture"), @"CAMPrepareStillImageCaptureCommandSystemTime"}];
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  [v4 userInitiatedCaptureRequestAtTime:{-[CAMPrepareStillImageCaptureCommand _systemTimeOfCapture](self, "_systemTimeOfCapture")}];
}

@end