@interface HKAudiogramAnalyticsManager
- (HKAudiogramAnalyticsManager)init;
- (HKAudiogramAnalyticsManager)initWithHealthStore:(id)a3;
- (void)submitPerformanceAnalyticsWithMetric:(id)a3;
@end

@implementation HKAudiogramAnalyticsManager

- (HKAudiogramAnalyticsManager)initWithHealthStore:(id)a3
{
  v3 = a3;
  v4 = sub_1C3CE5060(v3);

  return v4;
}

- (void)submitPerformanceAnalyticsWithMetric:(id)a3
{
  type metadata accessor for AudiogramPerformanceAnalytics.Event();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = &protocol witness table for AudiogramPerformanceAnalytics.Metric;
  v6 = a3;
  v8 = self;

  sub_1C3CE4D50(v7, v8);
}

- (HKAudiogramAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end