@interface HealthBalanceAppLaunchAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HealthBalanceAppLaunchAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1CFE308F4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  environmentDataSource = [sourceCopy environmentDataSource];
  v7 = self->needsOnboarding[0];
  v11 = self->source[0];
  v8 = sub_1CFE0497C(environmentDataSource, v7, &v11);

  sub_1CFE025C4(v8);

  v9 = sub_1CFE30804();

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_1CFE05364(sourceCopy);

  v5 = sub_1CFE30804();

  return v5;
}

@end