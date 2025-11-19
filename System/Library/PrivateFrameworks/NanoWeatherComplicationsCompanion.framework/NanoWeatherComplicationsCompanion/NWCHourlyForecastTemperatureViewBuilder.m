@interface NWCHourlyForecastTemperatureViewBuilder
- (NWCHourlyForecastTemperatureViewBuilder)initWithDevice:(id)a3;
- (id)createHourlyForecastView;
@end

@implementation NWCHourlyForecastTemperatureViewBuilder

- (NWCHourlyForecastTemperatureViewBuilder)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastTemperatureViewBuilder;
  v6 = [(NWCHourlyForecastTemperatureViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)createHourlyForecastView
{
  v3 = [NWCHourlyForecastTemperatureView alloc];
  v4 = [(NWCHourlyForecastTemperatureViewBuilder *)self device];
  v5 = [(NWCHourlyForecastView *)v3 initWithDevice:v4];

  return v5;
}

@end