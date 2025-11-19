@interface VideoConversionHangDetector
- (VideoConversionHangDetector)initWithThresholdTimeInterval:(double)a3;
- (void)updateCurrentProgress:(double)a3;
@end

@implementation VideoConversionHangDetector

- (void)updateCurrentProgress:(double)a3
{
  v5 = +[NSDate date];
  v6 = v5;
  lastProgressTimestamp = self->_lastProgressTimestamp;
  if (lastProgressTimestamp && self->_lastProgress >= a3)
  {
    [(NSDate *)v5 timeIntervalSinceDate:?];
    self->_progressUnchangedTimeInterval = v8 + self->_progressUnchangedTimeInterval;
    lastProgressTimestamp = self->_lastProgressTimestamp;
  }

  else
  {
    self->_progressUnchangedTimeInterval = 0.0;
  }

  self->_lastProgressTimestamp = v6;

  self->_lastProgress = a3;
}

- (VideoConversionHangDetector)initWithThresholdTimeInterval:(double)a3
{
  if (a3 <= 0.0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"thresholdTimeInterval > 0"}];
  }

  v8.receiver = self;
  v8.super_class = VideoConversionHangDetector;
  result = [(VideoConversionHangDetector *)&v8 init];
  if (result)
  {
    result->_hangDetectionThresholdTimeInterval = a3;
  }

  return result;
}

@end