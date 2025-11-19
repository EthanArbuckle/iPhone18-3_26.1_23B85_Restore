@interface ULHomeSlamTimer
- (ULHomeSlamTimer)initWithTimeout:(double)a3 andStartTime:(id)a4;
- (id)checkTimeoutAtDate:(id)a3;
@end

@implementation ULHomeSlamTimer

- (ULHomeSlamTimer)initWithTimeout:(double)a3 andStartTime:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ULHomeSlamTimer;
  v7 = [(ULHomeSlamTimer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULHomeSlamTimer *)v7 setTimeoutSeconds:a3];
    [(ULHomeSlamTimer *)v8 setStartTime:v6];
  }

  return v8;
}

- (id)checkTimeoutAtDate:(id)a3
{
  v4 = a3;
  v5 = [(ULHomeSlamTimer *)self startTime];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  [(ULHomeSlamTimer *)self timeoutSeconds];
  v9 = v8;

  if (v7 <= v9)
  {
    v11 = 0;
  }

  else
  {
    v10 = [(ULHomeSlamTimer *)self startTime];
    [(ULHomeSlamTimer *)self timeoutSeconds];
    v11 = [v10 dateByAddingTimeInterval:?];
  }

  return v11;
}

@end