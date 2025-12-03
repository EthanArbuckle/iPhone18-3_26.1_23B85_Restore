@interface HealthBalanceNotificationsAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HealthBalanceNotificationsAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1CFE308F4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_1CFDFD2D0(MEMORY[0x1E69E7CC0]);
  v4 = sub_1CFE30804();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  HealthBalanceNotificationsAnalyticsEvent.makeIHAGatedEventPayload(with:)(sourceCopy);

  v5 = sub_1CFE30804();

  return v5;
}

@end