@interface NWKUILinearGaugeValueIndicatorView
- (NWKUILinearGaugeValueIndicatorView)initWithDiameter:(double)a3;
@end

@implementation NWKUILinearGaugeValueIndicatorView

- (NWKUILinearGaugeValueIndicatorView)initWithDiameter:(double)a3
{
  v8.receiver = self;
  v8.super_class = NWKUILinearGaugeValueIndicatorView;
  v4 = [(NWKUILinearGaugeValueIndicatorView *)&v8 initWithFrame:0.0, 0.0, a3, a3];
  v5 = v4;
  if (v4)
  {
    v6 = [(NWKUILinearGaugeValueIndicatorView *)v4 layer];
    [v6 setCornerRadius:a3 * 0.5];
  }

  return v5;
}

@end