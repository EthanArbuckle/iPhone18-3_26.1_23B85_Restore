@interface HFAnalyticsEventAnnounceNotificationExtensionUsage
- (HFAnalyticsEventAnnounceNotificationExtensionUsage)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEventAnnounceNotificationExtensionUsage

- (HFAnalyticsEventAnnounceNotificationExtensionUsage)initWithData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"notificationExtensionUsageDuration"];
  if (!v4)
  {
    NSLog(&cfstr_Hfanalyticsann_14.isa);
  }

  v8.receiver = self;
  v8.super_class = HFAnalyticsEventAnnounceNotificationExtensionUsage;
  v5 = [(HFAnalyticsEvent *)&v8 initWithEventType:19];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_notificationUsageDuration, v4);
  }

  return v6;
}

- (id)payload
{
  v7.receiver = self;
  v7.super_class = HFAnalyticsEventAnnounceNotificationExtensionUsage;
  payload = [(HFAnalyticsEvent *)&v7 payload];
  v4 = [payload mutableCopy];

  notificationUsageDuration = [(HFAnalyticsEventAnnounceNotificationExtensionUsage *)self notificationUsageDuration];
  [v4 setObject:notificationUsageDuration forKeyedSubscript:@"notificationExtensionUsageDuration"];

  return v4;
}

@end