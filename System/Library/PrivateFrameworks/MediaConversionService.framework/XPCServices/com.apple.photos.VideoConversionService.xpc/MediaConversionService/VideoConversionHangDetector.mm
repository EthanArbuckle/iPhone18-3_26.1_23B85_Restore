@interface VideoConversionHangDetector
- (VideoConversionHangDetector)initWithThresholdTimeInterval:(double)interval;
- (void)updateCurrentProgress:(double)progress;
@end

@implementation VideoConversionHangDetector

- (void)updateCurrentProgress:(double)progress
{
  v5 = +[NSDate date];
  v6 = v5;
  lastProgressTimestamp = self->_lastProgressTimestamp;
  if (lastProgressTimestamp && self->_lastProgress >= progress)
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

  self->_lastProgress = progress;
}

- (VideoConversionHangDetector)initWithThresholdTimeInterval:(double)interval
{
  if (interval <= 0.0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"thresholdTimeInterval > 0"}];
  }

  v8.receiver = self;
  v8.super_class = VideoConversionHangDetector;
  result = [(VideoConversionHangDetector *)&v8 init];
  if (result)
  {
    result->_hangDetectionThresholdTimeInterval = interval;
  }

  return result;
}

@end