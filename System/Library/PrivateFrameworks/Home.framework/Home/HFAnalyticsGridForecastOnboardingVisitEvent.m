@interface HFAnalyticsGridForecastOnboardingVisitEvent
- (HFAnalyticsGridForecastOnboardingVisitEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsGridForecastOnboardingVisitEvent

- (HFAnalyticsGridForecastOnboardingVisitEvent)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsGridForecastOnboardingVisitEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:45];
}

@end