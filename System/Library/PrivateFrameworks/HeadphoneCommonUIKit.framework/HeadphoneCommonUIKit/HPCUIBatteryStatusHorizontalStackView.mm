@interface HPCUIBatteryStatusHorizontalStackView
- (HPCUIBatteryStatusHorizontalStackView)init;
@end

@implementation HPCUIBatteryStatusHorizontalStackView

- (HPCUIBatteryStatusHorizontalStackView)init
{
  v5.receiver = self;
  v5.super_class = HPCUIBatteryStatusHorizontalStackView;
  v2 = [(HPCUIBatteryStatusHorizontalStackView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HPCUIBatteryStatusHorizontalStackView *)v2 setAxis:0];
    [(HPCUIBatteryStatusHorizontalStackView *)v3 setAlignment:3];
    [(HPCUIBatteryStatusHorizontalStackView *)v3 setDistribution:3];
    [(HPCUIBatteryStatusHorizontalStackView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

@end