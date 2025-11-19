@interface NWCHourlyForecastWindViewBuilder
- (NWCHourlyForecastWindViewBuilder)initWithDevice:(id)a3;
- (id)createHourlyForecastView;
@end

@implementation NWCHourlyForecastWindViewBuilder

- (NWCHourlyForecastWindViewBuilder)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastWindViewBuilder;
  v6 = [(NWCHourlyForecastWindViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)createHourlyForecastView
{
  v3 = [NWCHourlyForecastWindView alloc];
  v4 = [(NWCHourlyForecastWindViewBuilder *)self device];
  v5 = [(NWCHourlyForecastView *)v3 initWithDevice:v4];

  return v5;
}

@end