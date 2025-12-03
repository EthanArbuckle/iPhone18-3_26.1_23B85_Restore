@interface NWKUILinearGaugeValueIndicatorView
- (NWKUILinearGaugeValueIndicatorView)initWithDiameter:(double)diameter;
@end

@implementation NWKUILinearGaugeValueIndicatorView

- (NWKUILinearGaugeValueIndicatorView)initWithDiameter:(double)diameter
{
  v8.receiver = self;
  v8.super_class = NWKUILinearGaugeValueIndicatorView;
  diameter = [(NWKUILinearGaugeValueIndicatorView *)&v8 initWithFrame:0.0, 0.0, diameter, diameter];
  v5 = diameter;
  if (diameter)
  {
    layer = [(NWKUILinearGaugeValueIndicatorView *)diameter layer];
    [layer setCornerRadius:diameter * 0.5];
  }

  return v5;
}

@end