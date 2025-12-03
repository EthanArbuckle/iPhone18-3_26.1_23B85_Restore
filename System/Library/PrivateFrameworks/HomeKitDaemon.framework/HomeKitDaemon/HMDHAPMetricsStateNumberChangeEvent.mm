@interface HMDHAPMetricsStateNumberChangeEvent
- (HMDHAPMetricsStateNumberChangeEvent)initWithAccessory:(id)accessory;
@end

@implementation HMDHAPMetricsStateNumberChangeEvent

- (HMDHAPMetricsStateNumberChangeEvent)initWithAccessory:(id)accessory
{
  v4.receiver = self;
  v4.super_class = HMDHAPMetricsStateNumberChangeEvent;
  return [(HMDHAPMetrics *)&v4 initWithHMDAccessory:accessory];
}

@end