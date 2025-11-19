@interface HFAnalyticsSceneDetailsVisitEvent
- (HFAnalyticsSceneDetailsVisitEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsSceneDetailsVisitEvent

- (HFAnalyticsSceneDetailsVisitEvent)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsSceneDetailsVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:35];
}

@end