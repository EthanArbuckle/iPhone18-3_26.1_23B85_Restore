@interface HPSBatteryIconView
- (HPSBatteryIconView)init;
- (void)setIsCharging:(BOOL)charging;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HPSBatteryIconView

- (HPSBatteryIconView)init
{
  v12.receiver = self;
  v12.super_class = HPSBatteryIconView;
  v2 = [(HPSBatteryIconView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(_UIBatteryView *)v2 setSizeCategory:1];
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [(_UIBatteryView *)v3 setFillColor:systemGreenColor];

    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [(_UIBatteryView *)v3 setBodyColor:lightGrayColor];

    lightGrayColor2 = [MEMORY[0x277D75348] lightGrayColor];
    [(_UIBatteryView *)v3 setPinColor:lightGrayColor2];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(_UIBatteryView *)v3 setBoltColor:systemBlackColor];

    traitCollection = [(HPSBatteryIconView *)v3 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(_UIBatteryView *)v3 setBoltColor:whiteColor];
    }
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = HPSBatteryIconView;
  [(HPSBatteryIconView *)&v6 traitCollectionDidChange:change];
  traitCollection = [(HPSBatteryIconView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
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