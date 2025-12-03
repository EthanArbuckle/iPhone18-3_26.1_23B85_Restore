@interface HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent
- (HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent)initWithSessionID:(id)d;
@end

@implementation HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent

- (HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent)initWithSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(HMDAnalyticsEventTriggerUserConfirmationReceiverSessionData);
    analyticsData = v5->_analyticsData;
    v5->_analyticsData = v6;

    [(HMDAnalyticsEventTriggerUserConfirmationReceiverSessionData *)v5->_analyticsData setTimestamp:0];
    [(HMDAnalyticsEventTriggerUserConfirmationReceiverSessionData *)v5->_analyticsData setSessionID:dCopy];
  }

  return v5;
}

@end