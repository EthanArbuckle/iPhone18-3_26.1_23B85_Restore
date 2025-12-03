@interface HMDAccessCodeSetupLogEvent
- (HMDAccessCodeSetupLogEvent)init;
- (NSDictionary)coreAnalyticsEventDictionary;
- (void)submitFailureWithReason:(unint64_t)reason error:(id)error;
- (void)submitSuccess;
@end

@implementation HMDAccessCodeSetupLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessCodeSetupLogEvent success](self, "success")}];
  [dictionary setObject:v5 forKeyedSubscript:@"success"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessCodeSetupLogEvent failureReason](self, "failureReason")}];
  [dictionary setObject:v6 forKeyedSubscript:@"failureReason"];

  v7 = [dictionary copy];

  return v7;
}

- (void)submitSuccess
{
  self->_failureReason = 0;
  self->_success = 1;
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v3 submitLogEvent:self];
}

- (void)submitFailureWithReason:(unint64_t)reason error:(id)error
{
  self->_failureReason = reason;
  self->_success = 0;
  errorCopy = error;
  v6 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v6 submitLogEvent:self error:errorCopy];
}

- (HMDAccessCodeSetupLogEvent)init
{
  v3.receiver = self;
  v3.super_class = HMDAccessCodeSetupLogEvent;
  return [(HMMLogEvent *)&v3 init];
}

@end