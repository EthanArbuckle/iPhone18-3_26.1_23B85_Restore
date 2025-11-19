@interface PBUIDefaultSessionReconnectPolicy
- (PBUIDefaultSessionReconnectPolicy)init;
- (void)sessionDidDisconnect;
@end

@implementation PBUIDefaultSessionReconnectPolicy

- (PBUIDefaultSessionReconnectPolicy)init
{
  v3.receiver = self;
  v3.super_class = PBUIDefaultSessionReconnectPolicy;
  result = [(PBUIDefaultSessionReconnectPolicy *)&v3 init];
  if (result)
  {
    *&result->_intervalMovingAverage = xmmword_21E70D8B0;
  }

  return result;
}

- (void)sessionDidDisconnect
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = v3;
  if (self->_lastDisconnect)
  {
    [(NSDate *)v3 timeIntervalSinceDate:?];
    intervalMovingAverage = self->_intervalMovingAverage;
    if (intervalMovingAverage != 0.0)
    {
      v5 = intervalMovingAverage * (1.0 - self->_alpha) + self->_alpha * v5;
    }

    self->_intervalMovingAverage = v5;
  }

  lastDisconnect = self->_lastDisconnect;
  self->_lastDisconnect = v4;
}

@end