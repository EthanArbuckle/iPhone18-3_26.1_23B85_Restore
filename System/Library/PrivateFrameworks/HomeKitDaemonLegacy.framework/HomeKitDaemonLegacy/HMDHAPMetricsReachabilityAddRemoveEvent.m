@interface HMDHAPMetricsReachabilityAddRemoveEvent
- (HMDHAPMetricsReachabilityAddRemoveEvent)initWithAccessory:(id)a3 hmdAddRemoveEvent:(unint64_t)a4 forLinkType:(id)a5;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDHAPMetricsReachabilityAddRemoveEvent

- (id)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHAPMetricsReachabilityAddRemoveEvent addRemoveEvent](self, "addRemoveEvent")}];
  [v3 setObject:v4 forKey:@"addremove"];

  v5 = [(HMDHAPMetricsReachabilityAddRemoveEvent *)self linkType];
  [v3 setObject:v5 forKey:@"linkType"];

  v6 = [v3 copy];

  return v6;
}

- (HMDHAPMetricsReachabilityAddRemoveEvent)initWithAccessory:(id)a3 hmdAddRemoveEvent:(unint64_t)a4 forLinkType:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMDHAPMetricsReachabilityAddRemoveEvent;
  v10 = [(HMDHAPMetrics *)&v13 initWithHMDAccessory:a3];
  v11 = v10;
  if (v10)
  {
    v10->_addRemoveEvent = a4;
    objc_storeStrong(&v10->_linkType, a5);
  }

  return v11;
}

@end