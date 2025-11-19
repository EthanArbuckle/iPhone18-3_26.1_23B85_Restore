@interface CAMTimelapseCaptureRateCommand
- (CAMTimelapseCaptureRateCommand)initWithDefaultTimelapseCaptureRate;
- (CAMTimelapseCaptureRateCommand)initWithTimelapseCaptureRate:(float)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMTimelapseCaptureRateCommand

- (CAMTimelapseCaptureRateCommand)initWithTimelapseCaptureRate:(float)a3
{
  v8.receiver = self;
  v8.super_class = CAMTimelapseCaptureRateCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__captureRate = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CAMTimelapseCaptureRateCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:a3];
  [(CAMTimelapseCaptureRateCommand *)self _captureRate];
  v4[6] = v5;
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  [(CAMTimelapseCaptureRateCommand *)self _captureRate];
  v6 = v5;
  v8 = [v4 currentStillImageOutput];

  LODWORD(v7) = v6;
  [v8 setTimeLapseCaptureRate:v7];
}

@end