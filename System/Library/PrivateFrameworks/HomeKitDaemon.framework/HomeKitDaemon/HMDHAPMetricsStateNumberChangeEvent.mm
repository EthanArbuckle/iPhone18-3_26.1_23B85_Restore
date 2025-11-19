@interface HMDHAPMetricsStateNumberChangeEvent
- (HMDHAPMetricsStateNumberChangeEvent)initWithAccessory:(id)a3;
@end

@implementation HMDHAPMetricsStateNumberChangeEvent

- (HMDHAPMetricsStateNumberChangeEvent)initWithAccessory:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDHAPMetricsStateNumberChangeEvent;
  return [(HMDHAPMetrics *)&v4 initWithHMDAccessory:a3];
}

@end