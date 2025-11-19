@interface HFAnalyticsEnergyCategoryStatusItemVisitEvent
- (HFAnalyticsEnergyCategoryStatusItemVisitEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsEnergyCategoryStatusItemVisitEvent

- (HFAnalyticsEnergyCategoryStatusItemVisitEvent)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsEnergyCategoryStatusItemVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:53];
}

@end