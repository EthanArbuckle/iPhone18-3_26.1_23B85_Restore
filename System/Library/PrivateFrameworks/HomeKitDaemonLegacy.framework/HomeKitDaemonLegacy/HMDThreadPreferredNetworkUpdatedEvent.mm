@interface HMDThreadPreferredNetworkUpdatedEvent
- (HMDThreadPreferredNetworkUpdatedEvent)initWithEventValue:(id)value;
@end

@implementation HMDThreadPreferredNetworkUpdatedEvent

- (HMDThreadPreferredNetworkUpdatedEvent)initWithEventValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HMDThreadPreferredNetworkUpdatedEvent;
  v6 = [(HMDThreadPreferredNetworkUpdatedEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventValue, value);
  }

  return v7;
}

@end