@interface HomeKitEventTriggerUserConfirmationSendLogEvent
- (HomeKitEventTriggerUserConfirmationSendLogEvent)initWithSessionID:(id)a3;
@end

@implementation HomeKitEventTriggerUserConfirmationSendLogEvent

- (HomeKitEventTriggerUserConfirmationSendLogEvent)initWithSessionID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HomeKitEventTriggerUserConfirmationSendLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(HMDAnalyticsEventTriggerUserConfirmationSendData);
    analyticsData = v5->_analyticsData;
    v5->_analyticsData = v6;

    [(HMDAnalyticsEventTriggerUserConfirmationSendData *)v5->_analyticsData setTimestamp:0];
    [(HMDAnalyticsEventTriggerUserConfirmationSendData *)v5->_analyticsData setSessionID:v4];
  }

  return v5;
}

@end