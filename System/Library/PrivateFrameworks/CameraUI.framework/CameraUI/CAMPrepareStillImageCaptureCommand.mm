@interface CAMPrepareStillImageCaptureCommand
- (CAMPrepareStillImageCaptureCommand)initWithCoder:(id)coder;
- (CAMPrepareStillImageCaptureCommand)initWithSystemTime:(unint64_t)time;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPrepareStillImageCaptureCommand

- (CAMPrepareStillImageCaptureCommand)initWithSystemTime:(unint64_t)time
{
  v5.receiver = self;
  v5.super_class = CAMPrepareStillImageCaptureCommand;
  result = [(CAMCaptureCommand *)&v5 init];
  if (result)
  {
    result->__systemTimeOfCapture = time;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPrepareStillImageCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMPrepareStillImageCaptureCommand *)self _systemTimeOfCapture];
  return v4;
}

- (CAMPrepareStillImageCaptureCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPrepareStillImageCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->__systemTimeOfCapture = [coderCopy decodeInt64ForKey:@"CAMPrepareStillImageCaptureCommandSystemTime"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[CAMPrepareStillImageCaptureCommand _systemTimeOfCapture](self forKey:{"_systemTimeOfCapture"), @"CAMPrepareStillImageCaptureCommandSystemTime"}];
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  [currentStillImageOutput userInitiatedCaptureRequestAtTime:{-[CAMPrepareStillImageCaptureCommand _systemTimeOfCapture](self, "_systemTimeOfCapture")}];
}

@end