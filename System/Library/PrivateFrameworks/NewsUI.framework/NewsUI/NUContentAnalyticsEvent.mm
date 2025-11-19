@interface NUContentAnalyticsEvent
- (NUContentAnalyticsEvent)initWithEvent:(id)a3;
@end

@implementation NUContentAnalyticsEvent

- (NUContentAnalyticsEvent)initWithEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUContentAnalyticsEvent;
  v6 = [(NUContentAnalyticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

@end