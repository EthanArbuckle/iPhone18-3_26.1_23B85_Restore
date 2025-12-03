@interface HFAnalyticsGridForecastOnboardingVisitEvent
- (HFAnalyticsGridForecastOnboardingVisitEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsGridForecastOnboardingVisitEvent

- (HFAnalyticsGridForecastOnboardingVisitEvent)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsGridForecastOnboardingVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:45];
}

@end