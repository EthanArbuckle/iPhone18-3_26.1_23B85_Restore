@interface HMDAccessCodeSetupLogEvent
- (HMDAccessCodeSetupLogEvent)init;
- (NSDictionary)coreAnalyticsEventDictionary;
- (void)submitFailureWithReason:(unint64_t)a3 error:(id)a4;
- (void)submitSuccess;
@end

@implementation HMDAccessCodeSetupLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessCodeSetupLogEvent success](self, "success")}];
  [v3 setObject:v5 forKeyedSubscript:@"success"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessCodeSetupLogEvent failureReason](self, "failureReason")}];
  [v3 setObject:v6 forKeyedSubscript:@"failureReason"];

  v7 = [v3 copy];

  return v7;
}

- (void)submitSuccess
{
  self->_failureReason = 0;
  self->_success = 1;
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v3 submitLogEvent:self];
}

- (void)submitFailureWithReason:(unint64_t)a3 error:(id)a4
{
  self->_failureReason = a3;
  self->_success = 0;
  v5 = a4;
  v6 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v6 submitLogEvent:self error:v5];
}

- (HMDAccessCodeSetupLogEvent)init
{
  v3.receiver = self;
  v3.super_class = HMDAccessCodeSetupLogEvent;
  return [(HMMLogEvent *)&v3 init];
}

@end