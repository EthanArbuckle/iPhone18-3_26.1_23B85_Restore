@interface NWCFiveHourForecastWindView
- (id)_setupViewBuilderForDevice:(id)device;
@end

@implementation NWCFiveHourForecastWindView

- (id)_setupViewBuilderForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NWCHourlyForecastWindViewBuilder alloc] initWithDevice:deviceCopy];

  return v4;
}

@end