@interface HealthBalanceAppLaunchAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HealthBalanceAppLaunchAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1CFE308F4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;

  v6 = [v5 environmentDataSource];
  v7 = self->needsOnboarding[0];
  v11 = self->source[0];
  v8 = sub_1CFE0497C(v6, v7, &v11);

  sub_1CFE025C4(v8);

  v9 = sub_1CFE30804();

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_1CFE05364(v4);

  v5 = sub_1CFE30804();

  return v5;
}

@end