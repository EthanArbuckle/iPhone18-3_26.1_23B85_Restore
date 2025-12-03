@interface MTTimerTimeInterval
- (BOOL)isEqual:(id)equal;
- (MTTimerTimeInterval)initWithCoder:(id)coder;
- (MTTimerTimeInterval)initWithTimeInterval:(double)interval;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTTimerTimeInterval

- (MTTimerTimeInterval)initWithTimeInterval:(double)interval
{
  v5.receiver = self;
  v5.super_class = MTTimerTimeInterval;
  result = [(MTTimerTimeInterval *)&v5 init];
  if (result)
  {
    result->_remainingTime = interval;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F297C498])
  {
    v5 = equalCopy;
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

- (MTTimerTimeInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MTTimerTimeInterval *)self initWithTimeInterval:0.0];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"MTTimerTimeInterval"];
    v5->_remainingTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(MTTimerTimeInterval *)self remainingTime];
  [coderCopy encodeDouble:@"MTTimerTimeInterval" forKey:?];
}

@end