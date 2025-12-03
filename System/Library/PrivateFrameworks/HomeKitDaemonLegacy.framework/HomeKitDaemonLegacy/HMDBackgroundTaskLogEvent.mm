@interface HMDBackgroundTaskLogEvent
- (HMDBackgroundTaskLogEvent)initWithTask:(id)task didFire:(BOOL)fire now:(id)now;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDBackgroundTaskLogEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  [(HMDBackgroundTaskLogEvent *)self fireDelay];
  v5 = v4;
  [(HMDBackgroundTaskLogEvent *)self scheduledToExpectedFireInterval];
  v7 = v6;
  [(HMDBackgroundTaskLogEvent *)self didFire];
  v8 = HMFBooleanToString();
  v9 = [v3 stringWithFormat:@"<HMDBackgroundTaskLogEvent fireDelay: %fs scheduledToExpectedFireInterval: %fs didFire: %@>", v5, v7, v8];

  return v9;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"fireDelay";
  v3 = MEMORY[0x277CCABB0];
  [(HMDBackgroundTaskLogEvent *)self fireDelay];
  v4 = [v3 numberWithDouble:?];
  v12[0] = v4;
  v11[1] = @"scheduledToExpectedFireInterval";
  v5 = MEMORY[0x277CCABB0];
  [(HMDBackgroundTaskLogEvent *)self scheduledToExpectedFireInterval];
  v6 = [v5 numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"didFire";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDBackgroundTaskLogEvent didFire](self, "didFire")}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDBackgroundTaskLogEvent)initWithTask:(id)task didFire:(BOOL)fire now:(id)now
{
  taskCopy = task;
  nowCopy = now;
  v18.receiver = self;
  v18.super_class = HMDBackgroundTaskLogEvent;
  v10 = [(HMMLogEvent *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_didFire = fire;
    if (fire)
    {
      expectedFireDate = [taskCopy expectedFireDate];
      [nowCopy timeIntervalSinceDate:expectedFireDate];
      v11->_fireDelay = v13;
    }

    else
    {
      v10->_fireDelay = 0.0;
    }

    expectedFireDate2 = [taskCopy expectedFireDate];
    scheduledDate = [taskCopy scheduledDate];
    [expectedFireDate2 timeIntervalSinceDate:scheduledDate];
    v11->_scheduledToExpectedFireInterval = v16;
  }

  return v11;
}

@end