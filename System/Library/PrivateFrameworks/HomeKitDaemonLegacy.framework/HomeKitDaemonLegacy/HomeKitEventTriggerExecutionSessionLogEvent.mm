@interface HomeKitEventTriggerExecutionSessionLogEvent
- (HomeKitEventTriggerExecutionSessionLogEvent)initWithStartTime:(double)time sessionID:(id)d;
@end

@implementation HomeKitEventTriggerExecutionSessionLogEvent

- (HomeKitEventTriggerExecutionSessionLogEvent)initWithStartTime:(double)time sessionID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HomeKitEventTriggerExecutionSessionLogEvent;
  v7 = [(HMMLogEvent *)&v13 initWithStartTime:time];
  if (v7)
  {
    v8 = objc_alloc_init(HMDAnalyticsEventTriggerExecutionSessionData);
    analyticsData = v7->_analyticsData;
    v7->_analyticsData = v8;

    analyticsData = [(HomeKitEventTriggerExecutionSessionLogEvent *)v7 analyticsData];
    [analyticsData setTimestamp:0];

    analyticsData2 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v7 analyticsData];
    [analyticsData2 setSessionID:dCopy];
  }

  return v7;
}

@end