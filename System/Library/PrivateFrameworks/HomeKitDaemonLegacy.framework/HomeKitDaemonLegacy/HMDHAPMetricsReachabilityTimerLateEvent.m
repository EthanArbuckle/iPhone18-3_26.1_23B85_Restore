@interface HMDHAPMetricsReachabilityTimerLateEvent
- (HMDHAPMetricsReachabilityTimerLateEvent)initWithAccessory:(id)a3 actualDuration:(id)a4 expectedDuration:(id)a5;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDHAPMetricsReachabilityTimerLateEvent

- (id)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDHAPMetricsReachabilityTimerLateEvent *)self actualDuration];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(HMDHAPMetricsReachabilityTimerLateEvent *)self actualDuration];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "integerValue")}];
    [v3 setObject:v7 forKeyedSubscript:@"duration"];
  }

  v8 = [(HMDHAPMetricsReachabilityTimerLateEvent *)self expectedDuration];
  [v3 setObject:v8 forKeyedSubscript:@"expectedDuration"];

  v9 = [v3 copy];

  return v9;
}

- (HMDHAPMetricsReachabilityTimerLateEvent)initWithAccessory:(id)a3 actualDuration:(id)a4 expectedDuration:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDHAPMetricsReachabilityTimerLateEvent;
  v11 = [(HMDHAPMetrics *)&v14 initWithHMDAccessory:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actualDuration, a4);
    objc_storeStrong(&v12->_expectedDuration, a5);
  }

  return v12;
}

@end