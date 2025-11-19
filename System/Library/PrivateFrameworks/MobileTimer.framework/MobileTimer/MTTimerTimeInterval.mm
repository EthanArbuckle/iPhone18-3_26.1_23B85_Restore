@interface MTTimerTimeInterval
- (BOOL)isEqual:(id)a3;
- (MTTimerTimeInterval)initWithCoder:(id)a3;
- (MTTimerTimeInterval)initWithTimeInterval:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTTimerTimeInterval

- (MTTimerTimeInterval)initWithTimeInterval:(double)a3
{
  v5.receiver = self;
  v5.super_class = MTTimerTimeInterval;
  result = [(MTTimerTimeInterval *)&v5 init];
  if (result)
  {
    result->_remainingTime = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F297C498])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(MTTimerTimeInterval *)self isEqualToTime:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MTTimerTimeInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerTimeInterval *)self initWithTimeInterval:0.0];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"MTTimerTimeInterval"];
    v5->_remainingTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(MTTimerTimeInterval *)self remainingTime];
  [v4 encodeDouble:@"MTTimerTimeInterval" forKey:?];
}

@end