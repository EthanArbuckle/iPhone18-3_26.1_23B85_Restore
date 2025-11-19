@interface HKInteractiveChartInteractionAnalyticsEvent
- (NSString)eventName;
- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)init;
- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDataType:(id)a3;
- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDisplayType:(id)a3;
- (id)initFor:(id)a3 timeScopeSelected:(int64_t)a4;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKInteractiveChartInteractionAnalyticsEvent

- (id)initFor:(id)a3 timeScopeSelected:(int64_t)a4
{
  v5 = a3;
  v6 = sub_1C3CC3D50(v5, a4);

  return v6;
}

- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDisplayType:(id)a3
{
  v3 = a3;
  v4 = sub_1C3CC3C70(v3);

  return v4;
}

- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDataType:(id)a3
{
  v3 = a3;
  v4 = sub_1C3CC3EF0(v3);

  return v4;
}

- (NSString)eventName
{
  v2 = sub_1C3D200C4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_1C3C75090(MEMORY[0x1E69E7CC0]);
  v4 = sub_1C3D1FEE4();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1C3CC40C8();

  v7 = sub_1C3D1FEE4();

  return v7;
}

- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end