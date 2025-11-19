@interface HMDHomePodSensorPairingLogEvent
- (HMDHomePodSensorPairingLogEvent)initWithStartTime:(double)a3 pairingSuccess:(BOOL)a4 failureReason:(unint64_t)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomePodSensorPairingLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(HMMLogEvent *)self startTime];
  if (v4 != 0.0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
    [v3 setObject:v5 forKeyedSubscript:@"duration"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSensorPairingLogEvent pairingSuccess](self, "pairingSuccess")}];
  [v3 setObject:v6 forKeyedSubscript:@"success"];

  v7 = [(HMMLogEvent *)self error];
  v8 = [v7 domain];
  [v3 setObject:v8 forKeyedSubscript:@"errorDomain"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(HMMLogEvent *)self error];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "code")}];
  [v3 setObject:v11 forKeyedSubscript:@"errorNumber"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomePodSensorPairingLogEvent failureReason](self, "failureReason")}];
  [v3 setObject:v12 forKeyedSubscript:@"failureReason"];

  v13 = [v3 copy];

  return v13;
}

- (HMDHomePodSensorPairingLogEvent)initWithStartTime:(double)a3 pairingSuccess:(BOOL)a4 failureReason:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = HMDHomePodSensorPairingLogEvent;
  result = [(HMMLogEvent *)&v8 initWithStartTime:a3];
  if (result)
  {
    result->_pairingSuccess = a4;
    result->_failureReason = a5;
  }

  return result;
}

@end