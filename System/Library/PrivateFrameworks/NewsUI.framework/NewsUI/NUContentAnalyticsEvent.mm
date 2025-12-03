@interface NUContentAnalyticsEvent
- (NUContentAnalyticsEvent)initWithEvent:(id)event;
@end

@implementation NUContentAnalyticsEvent

- (NUContentAnalyticsEvent)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = NUContentAnalyticsEvent;
  v6 = [(NUContentAnalyticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

@end