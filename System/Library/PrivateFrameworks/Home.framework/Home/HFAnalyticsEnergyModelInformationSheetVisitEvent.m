@interface HFAnalyticsEnergyModelInformationSheetVisitEvent
- (HFAnalyticsEnergyModelInformationSheetVisitEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsEnergyModelInformationSheetVisitEvent

- (HFAnalyticsEnergyModelInformationSheetVisitEvent)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsEnergyModelInformationSheetVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:49];
}

@end