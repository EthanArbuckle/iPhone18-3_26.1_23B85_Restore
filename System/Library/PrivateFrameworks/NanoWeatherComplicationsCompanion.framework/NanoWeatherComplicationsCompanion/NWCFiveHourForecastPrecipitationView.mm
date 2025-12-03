@interface NWCFiveHourForecastPrecipitationView
- (id)_setupViewBuilderForDevice:(id)device;
@end

@implementation NWCFiveHourForecastPrecipitationView

- (id)_setupViewBuilderForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NWCHourlyForecastPrecipitationViewBuilder alloc] initWithDevice:deviceCopy];

  return v4;
}

@end