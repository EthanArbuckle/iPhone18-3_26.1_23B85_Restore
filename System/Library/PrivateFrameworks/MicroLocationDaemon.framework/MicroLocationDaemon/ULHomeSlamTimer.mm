@interface ULHomeSlamTimer
- (ULHomeSlamTimer)initWithTimeout:(double)timeout andStartTime:(id)time;
- (id)checkTimeoutAtDate:(id)date;
@end

@implementation ULHomeSlamTimer

- (ULHomeSlamTimer)initWithTimeout:(double)timeout andStartTime:(id)time
{
  timeCopy = time;
  v10.receiver = self;
  v10.super_class = ULHomeSlamTimer;
  v7 = [(ULHomeSlamTimer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULHomeSlamTimer *)v7 setTimeoutSeconds:timeout];
    [(ULHomeSlamTimer *)v8 setStartTime:timeCopy];
  }

  return v8;
}

- (id)checkTimeoutAtDate:(id)date
{
  dateCopy = date;
  startTime = [(ULHomeSlamTimer *)self startTime];
  [dateCopy timeIntervalSinceDate:startTime];
  v7 = v6;

  [(ULHomeSlamTimer *)self timeoutSeconds];
  v9 = v8;

  if (v7 <= v9)
  {
    v11 = 0;
  }

  else
  {
    startTime2 = [(ULHomeSlamTimer *)self startTime];
    [(ULHomeSlamTimer *)self timeoutSeconds];
    v11 = [startTime2 dateByAddingTimeInterval:?];
  }

  return v11;
}

@end