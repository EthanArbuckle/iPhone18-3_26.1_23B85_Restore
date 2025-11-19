@interface HMDHomeKeySetupWalletLogEvent
- (HMDHomeKeySetupWalletLogEvent)initWithQueue:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (void)submitSuccess;
- (void)timeout;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDHomeKeySetupWalletLogEvent

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeKeySetupWalletLogEvent *)self timer];

  if (v5 == v4)
  {

    [(HMDHomeKeySetupWalletLogEvent *)self timeout];
  }
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeKeySetupWalletLogEvent success](self, "success")}];
  [v3 setObject:v5 forKeyedSubscript:@"success"];

  v6 = [v3 copy];

  return v6;
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

- (HMDHomeKeySetupWalletLogEvent)initWithQueue:(id)a3
{
  v9.receiver = self;
  v9.super_class = HMDHomeKeySetupWalletLogEvent;
  v3 = a3;
  v4 = [(HMMLogEvent *)&v9 init];
  v5 = objc_alloc(MEMORY[0x277D0F920]);
  v6 = [v5 initWithTimeInterval:0 options:{60.0, v9.receiver, v9.super_class}];
  timer = v4->_timer;
  v4->_timer = v6;

  [(HMFTimer *)v4->_timer setDelegate:v4];
  [(HMFTimer *)v4->_timer setDelegateQueue:v3];

  return v4;
}

@end