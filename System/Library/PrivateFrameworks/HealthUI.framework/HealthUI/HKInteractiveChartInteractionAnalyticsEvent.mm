@interface HKInteractiveChartInteractionAnalyticsEvent
- (NSString)eventName;
- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)init;
- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDataType:(id)type;
- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDisplayType:(id)type;
- (id)initFor:(id)for timeScopeSelected:(int64_t)selected;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKInteractiveChartInteractionAnalyticsEvent

- (id)initFor:(id)for timeScopeSelected:(int64_t)selected
{
  forCopy = for;
  v6 = sub_1C3CC3D50(forCopy, selected);

  return v6;
}

- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDisplayType:(id)type
{
  typeCopy = type;
  v4 = sub_1C3CC3C70(typeCopy);

  return v4;
}

- (_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent)initWithShowMoreDataForDataType:(id)type
{
  typeCopy = type;
  v4 = sub_1C3CC3EF0(typeCopy);

  return v4;
}

- (NSString)eventName
{
  v2 = sub_1C3D200C4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_1C3C75090(MEMORY[0x1E69E7CC0]);
  v4 = sub_1C3D1FEE4();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  selfCopy = self;
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