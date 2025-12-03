@interface CMSAnalytics
+ (void)sendContentFailureEvent:(id)event;
@end

@implementation CMSAnalytics

+ (void)sendContentFailureEvent:(id)event
{
  eventCopy = event;
  eventName = [eventCopy eventName];
  v6 = eventCopy;
  v5 = eventCopy;
  AnalyticsSendEventLazy();
}

@end