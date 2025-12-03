@interface HMDTriggerConfirmationTimer
- (HMDTriggerConfirmationTimer)initWithExecutionSessionID:(id)d timeoutInterval:(double)interval;
- (id)description;
@end

@implementation HMDTriggerConfirmationTimer

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = MEMORY[0x277CCABB0];
  [(HMFTimer *)self timeInterval];
  v4 = [v3 numberWithDouble:?];
  v5 = [v2 stringWithFormat:@"[Timeout interval: %@]", v4];

  return v5;
}

- (HMDTriggerConfirmationTimer)initWithExecutionSessionID:(id)d timeoutInterval:(double)interval
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HMDTriggerConfirmationTimer;
  v8 = [(HMFTimer *)&v11 initWithTimeInterval:1 options:interval];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_executionSessionID, d);
  }

  return v9;
}

@end