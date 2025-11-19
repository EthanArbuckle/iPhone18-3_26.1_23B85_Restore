@interface HealthBalanceOnboardingAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HealthBalanceOnboardingAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1CFE308F4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  HealthBalanceOnboardingAnalyticsEvent.makeUnrestrictedEventPayload(with:)(v4);

  v5 = sub_1CFE30804();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_1CFE040C8(v4);

  v5 = sub_1CFE30804();

  return v5;
}

@end