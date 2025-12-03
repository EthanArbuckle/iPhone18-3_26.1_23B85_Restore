@interface HFAnalyticsEnergyCategoryStatusItemVisitEvent
- (HFAnalyticsEnergyCategoryStatusItemVisitEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsEnergyCategoryStatusItemVisitEvent

- (HFAnalyticsEnergyCategoryStatusItemVisitEvent)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsEnergyCategoryStatusItemVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:53];
}

@end