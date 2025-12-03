@interface HMDHomePodSensorPairingLogEvent
- (HMDHomePodSensorPairingLogEvent)initWithStartTime:(double)time pairingSuccess:(BOOL)success failureReason:(unint64_t)reason;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomePodSensorPairingLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(HMMLogEvent *)self startTime];
  if (v4 != 0.0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSensorPairingLogEvent pairingSuccess](self, "pairingSuccess")}];
  [dictionary setObject:v6 forKeyedSubscript:@"success"];

  error = [(HMMLogEvent *)self error];
  domain = [error domain];
  [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

  v9 = MEMORY[0x277CCABB0];
  error2 = [(HMMLogEvent *)self error];
  v11 = [v9 numberWithInteger:{objc_msgSend(error2, "code")}];
  [dictionary setObject:v11 forKeyedSubscript:@"errorNumber"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomePodSensorPairingLogEvent failureReason](self, "failureReason")}];
  [dictionary setObject:v12 forKeyedSubscript:@"failureReason"];

  v13 = [dictionary copy];

  return v13;
}

- (HMDHomePodSensorPairingLogEvent)initWithStartTime:(double)time pairingSuccess:(BOOL)success failureReason:(unint64_t)reason
{
  v8.receiver = self;
  v8.super_class = HMDHomePodSensorPairingLogEvent;
  result = [(HMMLogEvent *)&v8 initWithStartTime:time];
  if (result)
  {
    result->_pairingSuccess = success;
    result->_failureReason = reason;
  }

  return result;
}

@end