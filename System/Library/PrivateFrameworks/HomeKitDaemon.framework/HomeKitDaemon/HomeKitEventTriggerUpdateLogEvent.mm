@interface HomeKitEventTriggerUpdateLogEvent
- (HomeKitEventTriggerUpdateLogEvent)init;
@end

@implementation HomeKitEventTriggerUpdateLogEvent

- (HomeKitEventTriggerUpdateLogEvent)init
{
  v6.receiver = self;
  v6.super_class = HomeKitEventTriggerUpdateLogEvent;
  v2 = [(HMMLogEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HMDAnalyticsUpdateEventTriggerData);
    analyticsData = v2->_analyticsData;
    v2->_analyticsData = v3;

    [(HMDAnalyticsUpdateEventTriggerData *)v2->_analyticsData setTimestamp:0];
  }

  return v2;
}

@end