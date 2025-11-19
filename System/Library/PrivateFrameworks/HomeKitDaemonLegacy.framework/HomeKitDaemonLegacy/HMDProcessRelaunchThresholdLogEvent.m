@interface HMDProcessRelaunchThresholdLogEvent
- (HMDProcessRelaunchThresholdLogEvent)initWithTimeSincePreviousLaunch:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDProcessRelaunchThresholdLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"timeIntervalSincePreviousProcessLaunch";
  v3 = +[HMDLogEventHistograms latencyHistogram];
  v4 = [(HMDProcessRelaunchThresholdLogEvent *)self timeIntervalSincePreviousProcessLaunch];
  v5 = [v3 intervalIndexForValue:{1000 * objc_msgSend(v4, "unsignedIntegerValue")}];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDProcessRelaunchThresholdLogEvent)initWithTimeSincePreviousLaunch:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDProcessRelaunchThresholdLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeIntervalSincePreviousProcessLaunch, a3);
  }

  return v7;
}

@end