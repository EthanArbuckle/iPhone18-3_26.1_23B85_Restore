@interface NWCDailyForecastUltravioletIndexView
- (NWCDailyForecastUltravioletIndexView)initWithDevice:(id)a3;
@end

@implementation NWCDailyForecastUltravioletIndexView

- (NWCDailyForecastUltravioletIndexView)initWithDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = NWCDailyForecastUltravioletIndexView;
  v3 = [(NWCDailyForecastView *)&v7 initWithDevice:a3];
  if (v3)
  {
    v4 = +[NWMUltravioletIndexColorIndex allIndices];
    v5 = [(NWCDailyForecastView *)v3 linearGaugeView];
    [v5 setBackgroundColorIndices:v4];
  }

  return v3;
}

@end