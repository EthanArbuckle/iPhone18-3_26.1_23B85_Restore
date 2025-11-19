@interface HFAnalyticsStatusDetailsVisitEvent
- (HFAnalyticsStatusDetailsVisitEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsStatusDetailsVisitEvent

- (HFAnalyticsStatusDetailsVisitEvent)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsStatusDetailsVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:34];
}

@end