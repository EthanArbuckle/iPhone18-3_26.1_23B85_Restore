@interface MapsSuggestionsWeatherConditionsProvider
- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)init;
- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)initWithQueue:(id)a3 locationRange:(double)a4;
- (void)didUpdateLocation;
@end

@implementation MapsSuggestionsWeatherConditionsProvider

- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)initWithQueue:(id)a3 locationRange:(double)a4
{
  v5 = a3;
  v6 = sub_1000485FC(v5, a4);

  return v6;
}

- (void)didUpdateLocation
{
  v2 = self;
  MapsSuggestionsWeatherConditionsProvider.didUpdateLocation()();
}

- (_TtC12destinationd40MapsSuggestionsWeatherConditionsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end