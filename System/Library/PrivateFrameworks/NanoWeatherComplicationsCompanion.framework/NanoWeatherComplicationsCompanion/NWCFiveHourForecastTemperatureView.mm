@interface NWCFiveHourForecastTemperatureView
- (id)_setupViewBuilderForDevice:(id)device;
@end

@implementation NWCFiveHourForecastTemperatureView

- (id)_setupViewBuilderForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NWCHourlyForecastTemperatureViewBuilder alloc] initWithDevice:deviceCopy];

  return v4;
}

@end