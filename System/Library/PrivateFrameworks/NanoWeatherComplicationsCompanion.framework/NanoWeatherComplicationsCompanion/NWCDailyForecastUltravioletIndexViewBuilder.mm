@interface NWCDailyForecastUltravioletIndexViewBuilder
- (NWCDailyForecastUltravioletIndexViewBuilder)initWithDevice:(id)device;
- (id)createDailyForecastView;
@end

@implementation NWCDailyForecastUltravioletIndexViewBuilder

- (NWCDailyForecastUltravioletIndexViewBuilder)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NWCDailyForecastUltravioletIndexViewBuilder;
  v6 = [(NWCDailyForecastUltravioletIndexViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)createDailyForecastView
{
  v3 = [NWCDailyForecastUltravioletIndexView alloc];
  device = [(NWCDailyForecastUltravioletIndexViewBuilder *)self device];
  v5 = [(NWCDailyForecastUltravioletIndexView *)v3 initWithDevice:device];

  return v5;
}

@end