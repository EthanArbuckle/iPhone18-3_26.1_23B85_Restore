@interface HPSBatteryStatusHorizontalStackView
- (HPSBatteryStatusHorizontalStackView)init;
@end

@implementation HPSBatteryStatusHorizontalStackView

- (HPSBatteryStatusHorizontalStackView)init
{
  v5.receiver = self;
  v5.super_class = HPSBatteryStatusHorizontalStackView;
  v2 = [(HPSBatteryStatusHorizontalStackView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HPSBatteryStatusHorizontalStackView *)v2 setAxis:0];
    [(HPSBatteryStatusHorizontalStackView *)v3 setAlignment:3];
    [(HPSBatteryStatusHorizontalStackView *)v3 setDistribution:3];
    [(HPSBatteryStatusHorizontalStackView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

@end