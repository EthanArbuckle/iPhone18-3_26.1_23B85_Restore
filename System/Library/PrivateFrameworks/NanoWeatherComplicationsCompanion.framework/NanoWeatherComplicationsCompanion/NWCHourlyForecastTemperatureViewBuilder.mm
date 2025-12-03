@interface NWCHourlyForecastTemperatureViewBuilder
- (NWCHourlyForecastTemperatureViewBuilder)initWithDevice:(id)device;
- (id)createHourlyForecastView;
@end

@implementation NWCHourlyForecastTemperatureViewBuilder

- (NWCHourlyForecastTemperatureViewBuilder)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastTemperatureViewBuilder;
  v6 = [(NWCHourlyForecastTemperatureViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)createHourlyForecastView
{
  v3 = [NWCHourlyForecastTemperatureView alloc];
  device = [(NWCHourlyForecastTemperatureViewBuilder *)self device];
  v5 = [(NWCHourlyForecastView *)v3 initWithDevice:device];

  return v5;
}

@end