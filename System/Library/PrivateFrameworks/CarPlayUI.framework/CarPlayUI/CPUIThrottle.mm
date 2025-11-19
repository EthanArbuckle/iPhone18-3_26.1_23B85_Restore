@interface CPUIThrottle
- (BOOL)incrementAttempts;
- (BOOL)isThrottled;
- (CPUIThrottle)initWithBase:(double)a3 factor:(double)a4 max:(double)a5;
- (void)unthrottle;
@end

@implementation CPUIThrottle

- (CPUIThrottle)initWithBase:(double)a3 factor:(double)a4 max:(double)a5
{
  v9.receiver = self;
  v9.super_class = CPUIThrottle;
  result = [(CPUIThrottle *)&v9 init];
  if (result)
  {
    result->_base = a3;
    result->_factor = a4;
    result->_max = a5;
    result->_attempts = 0;
  }

  return result;
}

- (BOOL)isThrottled
{
  v3 = [(CPUIThrottle *)self unthrottleDate];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(CPUIThrottle *)self unthrottleDate];
  v6 = [v4 compare:v5] == -1;

  return v6;
}

- (void)unthrottle
{
  throttleDate = self->_throttleDate;
  self->_throttleDate = 0;
  self->_attempts = 0;

  unthrottleDate = self->_unthrottleDate;
  self->_unthrottleDate = 0;
}

- (BOOL)incrementAttempts
{
  v3 = self->_attempts + 1;
  self->_attempts = v3;
  base = self->_base;
  v5 = base * pow(self->_factor, v3);
  if (v5 >= base)
  {
    base = v5;
    if (v5 > self->_max)
    {
      base = self->_max;
    }
  }

  v6 = [(CPUIThrottle *)self isThrottled];
  if (!v6)
  {
    self->_attempts = 1;
    v7 = [MEMORY[0x277CBEAA8] date];
    throttleDate = self->_throttleDate;
    self->_throttleDate = v7;
  }

  v9 = [(NSDate *)self->_throttleDate dateByAddingTimeInterval:base];
  unthrottleDate = self->_unthrottleDate;
  self->_unthrottleDate = v9;

  return !v6;
}

@end