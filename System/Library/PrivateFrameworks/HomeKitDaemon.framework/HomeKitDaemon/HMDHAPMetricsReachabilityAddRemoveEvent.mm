@interface HMDHAPMetricsReachabilityAddRemoveEvent
- (HMDHAPMetricsReachabilityAddRemoveEvent)initWithAccessory:(id)accessory hmdAddRemoveEvent:(unint64_t)event forLinkType:(id)type;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDHAPMetricsReachabilityAddRemoveEvent

- (id)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHAPMetricsReachabilityAddRemoveEvent addRemoveEvent](self, "addRemoveEvent")}];
  [dictionary setObject:v4 forKey:@"addremove"];

  linkType = [(HMDHAPMetricsReachabilityAddRemoveEvent *)self linkType];
  [dictionary setObject:linkType forKey:@"linkType"];

  v6 = [dictionary copy];

  return v6;
}

- (HMDHAPMetricsReachabilityAddRemoveEvent)initWithAccessory:(id)accessory hmdAddRemoveEvent:(unint64_t)event forLinkType:(id)type
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = HMDHAPMetricsReachabilityAddRemoveEvent;
  v10 = [(HMDHAPMetrics *)&v13 initWithHMDAccessory:accessory];
  v11 = v10;
  if (v10)
  {
    v10->_addRemoveEvent = event;
    objc_storeStrong(&v10->_linkType, type);
  }

  return v11;
}

@end