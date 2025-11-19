@interface HMDTriggerConfirmationTimer
- (HMDTriggerConfirmationTimer)initWithExecutionSessionID:(id)a3 timeoutInterval:(double)a4;
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

- (HMDTriggerConfirmationTimer)initWithExecutionSessionID:(id)a3 timeoutInterval:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDTriggerConfirmationTimer;
  v8 = [(HMFTimer *)&v11 initWithTimeInterval:1 options:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_executionSessionID, a3);
  }

  return v9;
}

@end