@interface NWCHourlyForecastWindViewBuilder
- (NWCHourlyForecastWindViewBuilder)initWithDevice:(id)device;
- (id)createHourlyForecastView;
@end

@implementation NWCHourlyForecastWindViewBuilder

- (NWCHourlyForecastWindViewBuilder)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastWindViewBuilder;
  v6 = [(NWCHourlyForecastWindViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)createHourlyForecastView
{
  v3 = [NWCHourlyForecastWindView alloc];
  device = [(NWCHourlyForecastWindViewBuilder *)self device];
  v5 = [(NWCHourlyForecastView *)v3 initWithDevice:device];

  return v5;
}

@end