@interface HMDHomeKeySetupLockLogEvent
- (BOOL)incrementCompleted;
- (HMDHomeKeySetupLockLogEvent)initWithAccessoryUUID:(id)a3 withKeyType:(unint64_t)a4 expectedCount:(int64_t)a5 queue:(id)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
- (void)submitSuccess;
- (void)timeout;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDHomeKeySetupLockLogEvent

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeKeySetupLockLogEvent *)self timer];

  if (v5 == v4)
  {

    [(HMDHomeKeySetupLockLogEvent *)self timeout];
  }
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeKeySetupLockLogEvent success](self, "success")}];
  [v3 setObject:v5 forKeyedSubscript:@"success"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeKeySetupLockLogEvent expectedCount](self, "expectedCount")}];
  [v3 setObject:v6 forKeyedSubscript:@"expectedCount"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeKeySetupLockLogEvent completedCount](self, "completedCount")}];
  [v3 setObject:v7 forKeyedSubscript:@"completedCount"];

  v8 = [v3 copy];

  return v8;
}

- (void)timeout
{
  self->_success = 0;
  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  v3 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  [v4 submitLogEvent:self error:v3];
}

- (void)submitSuccess
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_timeout object:0];
  self->_success = 1;
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v3 submitLogEvent:self];
}

- (BOOL)incrementCompleted
{
  [(HMDHomeKeySetupLockLogEvent *)self setCompletedCount:[(HMDHomeKeySetupLockLogEvent *)self completedCount]+ 1];
  v3 = [(HMDHomeKeySetupLockLogEvent *)self completedCount];
  v4 = [(HMDHomeKeySetupLockLogEvent *)self expectedCount];
  if (v3 == v4)
  {
    [(HMDHomeKeySetupLockLogEvent *)self submitSuccess];
  }

  return v3 == v4;
}

- (HMDHomeKeySetupLockLogEvent)initWithAccessoryUUID:(id)a3 withKeyType:(unint64_t)a4 expectedCount:(int64_t)a5 queue:(id)a6
{
  v10 = a3;
  v19.receiver = self;
  v19.super_class = HMDHomeKeySetupLockLogEvent;
  v11 = a6;
  v12 = [(HMMLogEvent *)&v19 init];
  accessoryUUID = v12->_accessoryUUID;
  v12->_accessoryUUID = v10;
  v14 = v10;

  v12->_keyType = a4;
  v12->_expectedCount = a5;
  v12->_completedCount = 0;
  v15 = objc_alloc(MEMORY[0x277D0F920]);
  v16 = [v15 initWithTimeInterval:0 options:{60.0, v19.receiver, v19.super_class}];
  timer = v12->_timer;
  v12->_timer = v16;

  [(HMFTimer *)v12->_timer setDelegate:v12];
  [(HMFTimer *)v12->_timer setDelegateQueue:v11];

  return v12;
}

@end