@interface CPUIThrottle
- (BOOL)incrementAttempts;
- (BOOL)isThrottled;
- (CPUIThrottle)initWithBase:(double)base factor:(double)factor max:(double)max;
- (void)unthrottle;
@end

@implementation CPUIThrottle

- (CPUIThrottle)initWithBase:(double)base factor:(double)factor max:(double)max
{
  v9.receiver = self;
  v9.super_class = CPUIThrottle;
  result = [(CPUIThrottle *)&v9 init];
  if (result)
  {
    result->_base = base;
    result->_factor = factor;
    result->_max = max;
    result->_attempts = 0;
  }

  return result;
}

- (BOOL)isThrottled
{
  unthrottleDate = [(CPUIThrottle *)self unthrottleDate];

  if (!unthrottleDate)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  unthrottleDate2 = [(CPUIThrottle *)self unthrottleDate];
  v6 = [date compare:unthrottleDate2] == -1;

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

  isThrottled = [(CPUIThrottle *)self isThrottled];
  if (!isThrottled)
  {
    self->_attempts = 1;
    date = [MEMORY[0x277CBEAA8] date];
    throttleDate = self->_throttleDate;
    self->_throttleDate = date;
  }

  v9 = [(NSDate *)self->_throttleDate dateByAddingTimeInterval:base];
  unthrottleDate = self->_unthrottleDate;
  self->_unthrottleDate = v9;

  return !isThrottled;
}

@end