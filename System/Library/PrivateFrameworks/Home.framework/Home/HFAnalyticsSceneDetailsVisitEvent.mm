@interface HFAnalyticsSceneDetailsVisitEvent
- (HFAnalyticsSceneDetailsVisitEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsSceneDetailsVisitEvent

- (HFAnalyticsSceneDetailsVisitEvent)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsSceneDetailsVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:35];
}

@end