@interface NWCDailyForecastUltravioletIndexViewBuilder
- (NWCDailyForecastUltravioletIndexViewBuilder)initWithDevice:(id)a3;
- (id)createDailyForecastView;
@end

@implementation NWCDailyForecastUltravioletIndexViewBuilder

- (NWCDailyForecastUltravioletIndexViewBuilder)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NWCDailyForecastUltravioletIndexViewBuilder;
  v6 = [(NWCDailyForecastUltravioletIndexViewBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)createDailyForecastView
{
  v3 = [NWCDailyForecastUltravioletIndexView alloc];
  v4 = [(NWCDailyForecastUltravioletIndexViewBuilder *)self device];
  v5 = [(NWCDailyForecastUltravioletIndexView *)v3 initWithDevice:v4];

  return v5;
}

@end