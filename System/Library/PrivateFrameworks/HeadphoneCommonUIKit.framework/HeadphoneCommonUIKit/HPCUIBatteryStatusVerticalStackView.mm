@interface HPCUIBatteryStatusVerticalStackView
- (HPCUIBatteryStatusVerticalStackView)init;
@end

@implementation HPCUIBatteryStatusVerticalStackView

- (HPCUIBatteryStatusVerticalStackView)init
{
  v5.receiver = self;
  v5.super_class = HPCUIBatteryStatusVerticalStackView;
  v2 = [(HPCUIBatteryStatusVerticalStackView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HPCUIBatteryStatusVerticalStackView *)v2 setAxis:1];
    [(HPCUIBatteryStatusVerticalStackView *)v3 setAlignment:3];
    [(HPCUIBatteryStatusVerticalStackView *)v3 setDistribution:3];
    [(HPCUIBatteryStatusVerticalStackView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

@end