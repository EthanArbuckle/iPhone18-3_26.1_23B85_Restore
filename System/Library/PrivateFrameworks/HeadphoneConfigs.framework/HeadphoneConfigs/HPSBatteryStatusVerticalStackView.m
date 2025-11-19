@interface HPSBatteryStatusVerticalStackView
- (HPSBatteryStatusVerticalStackView)init;
@end

@implementation HPSBatteryStatusVerticalStackView

- (HPSBatteryStatusVerticalStackView)init
{
  v5.receiver = self;
  v5.super_class = HPSBatteryStatusVerticalStackView;
  v2 = [(HPSBatteryStatusVerticalStackView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HPSBatteryStatusVerticalStackView *)v2 setAxis:1];
    [(HPSBatteryStatusVerticalStackView *)v3 setAlignment:3];
    [(HPSBatteryStatusVerticalStackView *)v3 setDistribution:3];
    [(HPSBatteryStatusVerticalStackView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

@end