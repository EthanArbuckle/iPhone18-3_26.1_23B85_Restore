@interface HealthBalanceOnboardingAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HealthBalanceOnboardingAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1CFE308F4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  HealthBalanceOnboardingAnalyticsEvent.makeUnrestrictedEventPayload(with:)(sourceCopy);

  v5 = sub_1CFE30804();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_1CFE040C8(sourceCopy);

  v5 = sub_1CFE30804();

  return v5;
}

@end