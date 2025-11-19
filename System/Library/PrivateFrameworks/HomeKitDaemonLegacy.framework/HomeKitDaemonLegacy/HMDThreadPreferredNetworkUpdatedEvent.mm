@interface HMDThreadPreferredNetworkUpdatedEvent
- (HMDThreadPreferredNetworkUpdatedEvent)initWithEventValue:(id)a3;
@end

@implementation HMDThreadPreferredNetworkUpdatedEvent

- (HMDThreadPreferredNetworkUpdatedEvent)initWithEventValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDThreadPreferredNetworkUpdatedEvent;
  v6 = [(HMDThreadPreferredNetworkUpdatedEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventValue, a3);
  }

  return v7;
}

@end