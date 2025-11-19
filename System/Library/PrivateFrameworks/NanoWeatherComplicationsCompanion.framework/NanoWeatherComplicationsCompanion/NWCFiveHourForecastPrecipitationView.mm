@interface NWCFiveHourForecastPrecipitationView
- (id)_setupViewBuilderForDevice:(id)a3;
@end

@implementation NWCFiveHourForecastPrecipitationView

- (id)_setupViewBuilderForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NWCHourlyForecastPrecipitationViewBuilder alloc] initWithDevice:v3];

  return v4;
}

@end