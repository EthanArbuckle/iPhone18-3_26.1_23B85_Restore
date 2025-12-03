@interface HomeKitEventTriggerAddLogEvent
- (HomeKitEventTriggerAddLogEvent)initWithHomeUUID:(id)d;
@end

@implementation HomeKitEventTriggerAddLogEvent

- (HomeKitEventTriggerAddLogEvent)initWithHomeUUID:(id)d
{
  v7.receiver = self;
  v7.super_class = HomeKitEventTriggerAddLogEvent;
  v3 = [(HMMHomeLogEvent *)&v7 initWithHomeUUID:d];
  if (v3)
  {
    v4 = objc_alloc_init(HMDAnalyticsAddEventTriggerData);
    analyticsData = v3->_analyticsData;
    v3->_analyticsData = v4;

    [(HMDAnalyticsAddEventTriggerData *)v3->_analyticsData setTimestamp:0];
  }

  return v3;
}

@end