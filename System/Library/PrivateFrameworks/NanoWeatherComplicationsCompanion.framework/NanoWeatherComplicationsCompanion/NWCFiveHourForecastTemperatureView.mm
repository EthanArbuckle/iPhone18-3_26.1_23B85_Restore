@interface NWCFiveHourForecastTemperatureView
- (id)_setupViewBuilderForDevice:(id)a3;
@end

@implementation NWCFiveHourForecastTemperatureView

- (id)_setupViewBuilderForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NWCHourlyForecastTemperatureViewBuilder alloc] initWithDevice:v3];

  return v4;
}

@end