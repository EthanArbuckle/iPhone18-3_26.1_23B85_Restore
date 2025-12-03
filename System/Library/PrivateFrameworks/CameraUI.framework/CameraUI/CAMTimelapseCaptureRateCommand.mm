@interface CAMTimelapseCaptureRateCommand
- (CAMTimelapseCaptureRateCommand)initWithDefaultTimelapseCaptureRate;
- (CAMTimelapseCaptureRateCommand)initWithTimelapseCaptureRate:(float)rate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMTimelapseCaptureRateCommand

- (CAMTimelapseCaptureRateCommand)initWithTimelapseCaptureRate:(float)rate
{
  v8.receiver = self;
  v8.super_class = CAMTimelapseCaptureRateCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__captureRate = rate;
    v6 = v4;
  }

  return v5;
}

- (CAMTimelapseCaptureRateCommand)initWithDefaultTimelapseCaptureRate
{
  v3 = +[CAMTimelapseSettings sharedInstance];
  [v3 initialCaptureTimeInterval];
  v5 = 1.0 / v4;

  *&v6 = v5;

  return [(CAMTimelapseCaptureRateCommand *)self initWithTimelapseCaptureRate:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CAMTimelapseCaptureRateCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:zone];
  [(CAMTimelapseCaptureRateCommand *)self _captureRate];
  v4[6] = v5;
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  [(CAMTimelapseCaptureRateCommand *)self _captureRate];
  v6 = v5;
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  LODWORD(v7) = v6;
  [currentStillImageOutput setTimeLapseCaptureRate:v7];
}

@end