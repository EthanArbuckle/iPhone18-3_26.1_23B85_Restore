@interface HealthBalanceNotificationsAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HealthBalanceNotificationsAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1CFE308F4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_1CFDFD2D0(MEMORY[0x1E69E7CC0]);
  v4 = sub_1CFE30804();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  HealthBalanceNotificationsAnalyticsEvent.makeIHAGatedEventPayload(with:)(v4);

  v5 = sub_1CFE30804();

  return v5;
}

@end