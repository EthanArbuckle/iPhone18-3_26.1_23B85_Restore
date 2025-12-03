@interface HMDHAPMetricsReachabilityTimerLateEvent
- (HMDHAPMetricsReachabilityTimerLateEvent)initWithAccessory:(id)accessory actualDuration:(id)duration expectedDuration:(id)expectedDuration;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDHAPMetricsReachabilityTimerLateEvent

- (id)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  actualDuration = [(HMDHAPMetricsReachabilityTimerLateEvent *)self actualDuration];

  if (actualDuration)
  {
    v5 = MEMORY[0x277CCABB0];
    actualDuration2 = [(HMDHAPMetricsReachabilityTimerLateEvent *)self actualDuration];
    v7 = [v5 numberWithInteger:{objc_msgSend(actualDuration2, "integerValue")}];
    [dictionary setObject:v7 forKeyedSubscript:@"duration"];
  }

  expectedDuration = [(HMDHAPMetricsReachabilityTimerLateEvent *)self expectedDuration];
  [dictionary setObject:expectedDuration forKeyedSubscript:@"expectedDuration"];

  v9 = [dictionary copy];

  return v9;
}

- (HMDHAPMetricsReachabilityTimerLateEvent)initWithAccessory:(id)accessory actualDuration:(id)duration expectedDuration:(id)expectedDuration
{
  durationCopy = duration;
  expectedDurationCopy = expectedDuration;
  v14.receiver = self;
  v14.super_class = HMDHAPMetricsReachabilityTimerLateEvent;
  v11 = [(HMDHAPMetrics *)&v14 initWithHMDAccessory:accessory];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actualDuration, duration);
    objc_storeStrong(&v12->_expectedDuration, expectedDuration);
  }

  return v12;
}

@end