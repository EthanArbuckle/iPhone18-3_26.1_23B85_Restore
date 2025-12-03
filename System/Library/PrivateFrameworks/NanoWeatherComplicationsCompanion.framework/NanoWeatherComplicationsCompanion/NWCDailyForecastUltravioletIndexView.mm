@interface NWCDailyForecastUltravioletIndexView
- (NWCDailyForecastUltravioletIndexView)initWithDevice:(id)device;
@end

@implementation NWCDailyForecastUltravioletIndexView

- (NWCDailyForecastUltravioletIndexView)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = NWCDailyForecastUltravioletIndexView;
  v3 = [(NWCDailyForecastView *)&v7 initWithDevice:device];
  if (v3)
  {
    v4 = +[NWMUltravioletIndexColorIndex allIndices];
    linearGaugeView = [(NWCDailyForecastView *)v3 linearGaugeView];
    [linearGaugeView setBackgroundColorIndices:v4];
  }

  return v3;
}

@end