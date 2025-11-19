@interface HomeKitEventTriggerAddLogEvent
- (HomeKitEventTriggerAddLogEvent)initWithHomeUUID:(id)a3;
@end

@implementation HomeKitEventTriggerAddLogEvent

- (HomeKitEventTriggerAddLogEvent)initWithHomeUUID:(id)a3
{
  v7.receiver = self;
  v7.super_class = HomeKitEventTriggerAddLogEvent;
  v3 = [(HMMHomeLogEvent *)&v7 initWithHomeUUID:a3];
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