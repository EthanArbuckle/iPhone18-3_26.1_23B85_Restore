@interface MapsSuggestionsWeatherConditionsProvider
- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)init;
- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)initWithQueue:(id)queue locationRange:(double)range;
- (void)didUpdateLocation;
@end

@implementation MapsSuggestionsWeatherConditionsProvider

- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)initWithQueue:(id)queue locationRange:(double)range
{
  queueCopy = queue;
  v6 = sub_1000485FC(queueCopy, range);

  return v6;
}

- (void)didUpdateLocation
{
  selfCopy = self;
  MapsSuggestionsWeatherConditionsProvider.didUpdateLocation()();
}

- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end