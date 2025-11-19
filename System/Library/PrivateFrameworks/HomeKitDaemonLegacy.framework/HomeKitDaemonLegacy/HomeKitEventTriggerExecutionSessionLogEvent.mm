@interface HomeKitEventTriggerExecutionSessionLogEvent
- (HomeKitEventTriggerExecutionSessionLogEvent)initWithStartTime:(double)a3 sessionID:(id)a4;
@end

@implementation HomeKitEventTriggerExecutionSessionLogEvent

- (HomeKitEventTriggerExecutionSessionLogEvent)initWithStartTime:(double)a3 sessionID:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HomeKitEventTriggerExecutionSessionLogEvent;
  v7 = [(HMMLogEvent *)&v13 initWithStartTime:a3];
  if (v7)
  {
    v8 = objc_alloc_init(HMDAnalyticsEventTriggerExecutionSessionData);
    analyticsData = v7->_analyticsData;
    v7->_analyticsData = v8;

    v10 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v7 analyticsData];
    [v10 setTimestamp:0];

    v11 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v7 analyticsData];
    [v11 setSessionID:v6];
  }

  return v7;
}

@end