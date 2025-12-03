@interface HFAnalyticsStatusDetailsVisitEvent
- (HFAnalyticsStatusDetailsVisitEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsStatusDetailsVisitEvent

- (HFAnalyticsStatusDetailsVisitEvent)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsStatusDetailsVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:34];
}

@end