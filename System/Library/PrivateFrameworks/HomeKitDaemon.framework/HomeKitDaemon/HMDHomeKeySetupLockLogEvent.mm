@interface HMDHomeKeySetupLockLogEvent
- (BOOL)incrementCompleted;
- (HMDHomeKeySetupLockLogEvent)initWithAccessoryUUID:(id)d withKeyType:(unint64_t)type expectedCount:(int64_t)count queue:(id)queue;
- (NSDictionary)coreAnalyticsEventDictionary;
- (void)submitSuccess;
- (void)timeout;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHomeKeySetupLockLogEvent

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  timer = [(HMDHomeKeySetupLockLogEvent *)self timer];

  if (timer == fireCopy)
  {

    [(HMDHomeKeySetupLockLogEvent *)self timeout];
  }
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeKeySetupLockLogEvent success](self, "success")}];
  [dictionary setObject:v5 forKeyedSubscript:@"success"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeKeySetupLockLogEvent expectedCount](self, "expectedCount")}];
  [dictionary setObject:v6 forKeyedSubscript:@"expectedCount"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeKeySetupLockLogEvent completedCount](self, "completedCount")}];
  [dictionary setObject:v7 forKeyedSubscript:@"completedCount"];

  v8 = [dictionary copy];

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
  completedCount = [(HMDHomeKeySetupLockLogEvent *)self completedCount];
  expectedCount = [(HMDHomeKeySetupLockLogEvent *)self expectedCount];
  if (completedCount == expectedCount)
  {
    [(HMDHomeKeySetupLockLogEvent *)self submitSuccess];
  }

  return completedCount == expectedCount;
}

- (HMDHomeKeySetupLockLogEvent)initWithAccessoryUUID:(id)d withKeyType:(unint64_t)type expectedCount:(int64_t)count queue:(id)queue
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = HMDHomeKeySetupLockLogEvent;
  queueCopy = queue;
  v12 = [(HMMLogEvent *)&v19 init];
  accessoryUUID = v12->_accessoryUUID;
  v12->_accessoryUUID = dCopy;
  v14 = dCopy;

  v12->_keyType = type;
  v12->_expectedCount = count;
  v12->_completedCount = 0;
  v15 = objc_alloc(MEMORY[0x277D0F920]);
  v16 = [v15 initWithTimeInterval:0 options:{60.0, v19.receiver, v19.super_class}];
  timer = v12->_timer;
  v12->_timer = v16;

  [(HMFTimer *)v12->_timer setDelegate:v12];
  [(HMFTimer *)v12->_timer setDelegateQueue:queueCopy];

  return v12;
}

@end