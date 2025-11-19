@interface NWCFiveHourForecastWindView
- (id)_setupViewBuilderForDevice:(id)a3;
@end

@implementation NWCFiveHourForecastWindView

- (id)_setupViewBuilderForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NWCHourlyForecastWindViewBuilder alloc] initWithDevice:v3];

  return v4;
}

@end