@interface NWCHourlyForecastPrecipitationViewBuilder
- (NWCHourlyForecastPrecipitationViewBuilder)initWithDevice:(id)device;
- (id)createHourlyForecastView;
@end

@implementation NWCHourlyForecastPrecipitationViewBuilder

- (NWCHourlyForecastPrecipitationViewBuilder)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastPrecipitationViewBuilder;
  v6 = [(NWCHourlyForecastPrecipitationViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)createHourlyForecastView
{
  v3 = [NWCHourlyForecastPrecipitationView alloc];
  device = [(NWCHourlyForecastPrecipitationViewBuilder *)self device];
  v5 = [(NWCHourlyForecastView *)v3 initWithDevice:device];

  return v5;
}

@end