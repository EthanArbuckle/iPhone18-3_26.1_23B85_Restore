@interface HPCUIBatteryIconView
- (HPCUIBatteryIconView)init;
- (void)setIsCharging:(BOOL)charging;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HPCUIBatteryIconView

- (HPCUIBatteryIconView)init
{
  v12.receiver = self;
  v12.super_class = HPCUIBatteryIconView;
  v2 = [(HPCUIBatteryIconView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(_UIBatteryView *)v2 setSizeCategory:1];
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    [(_UIBatteryView *)v3 setFillColor:systemGreenColor];

    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [(_UIBatteryView *)v3 setBodyColor:lightGrayColor];

    lightGrayColor2 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(_UIBatteryView *)v3 setPinColor:lightGrayColor2];

    systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
    [(_UIBatteryView *)v3 setBoltColor:systemBlackColor];

    traitCollection = [(HPCUIBatteryIconView *)v3 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(_UIBatteryView *)v3 setBoltColor:whiteColor];
    }
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = HPCUIBatteryIconView;
  [(HPCUIBatteryIconView *)&v6 traitCollectionDidChange:change];
  traitCollection = [(HPCUIBatteryIconView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v5 = ;
  [(_UIBatteryView *)self setBoltColor:v5];
}

- (void)setIsCharging:(BOOL)charging
{
  chargingCopy = charging;
  [(_UIBatteryView *)self setShowsInlineChargingIndicator:?];

  [(_UIBatteryView *)self setChargingState:chargingCopy];
}

@end