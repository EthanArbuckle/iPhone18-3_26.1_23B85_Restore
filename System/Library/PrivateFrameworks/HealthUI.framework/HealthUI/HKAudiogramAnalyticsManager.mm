@interface HKAudiogramAnalyticsManager
- (HKAudiogramAnalyticsManager)init;
- (HKAudiogramAnalyticsManager)initWithHealthStore:(id)store;
- (void)submitPerformanceAnalyticsWithMetric:(id)metric;
@end

@implementation HKAudiogramAnalyticsManager

- (HKAudiogramAnalyticsManager)initWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = sub_1C3CE5060(storeCopy);

  return v4;
}

- (void)submitPerformanceAnalyticsWithMetric:(id)metric
{
  type metadata accessor for AudiogramPerformanceAnalytics.Event();
  v5 = swift_allocObject();
  *(v5 + 16) = metric;
  *(v5 + 24) = &protocol witness table for AudiogramPerformanceAnalytics.Metric;
  metricCopy = metric;
  selfCopy = self;

  sub_1C3CE4D50(v7, selfCopy);
}

- (HKAudiogramAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end