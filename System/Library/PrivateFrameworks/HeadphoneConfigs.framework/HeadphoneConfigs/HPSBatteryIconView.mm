@interface HPSBatteryIconView
- (HPSBatteryIconView)init;
- (void)setIsCharging:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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
    v4 = [MEMORY[0x277D75348] systemGreenColor];
    [(_UIBatteryView *)v3 setFillColor:v4];

    v5 = [MEMORY[0x277D75348] lightGrayColor];
    [(_UIBatteryView *)v3 setBodyColor:v5];

    v6 = [MEMORY[0x277D75348] lightGrayColor];
    [(_UIBatteryView *)v3 setPinColor:v6];

    v7 = [MEMORY[0x277D75348] systemBlackColor];
    [(_UIBatteryView *)v3 setBoltColor:v7];

    v8 = [(HPSBatteryIconView *)v3 traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == 2)
    {
      v10 = [MEMORY[0x277D75348] whiteColor];
      [(_UIBatteryView *)v3 setBoltColor:v10];
    }
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = HPSBatteryIconView;
  [(HPSBatteryIconView *)&v6 traitCollectionDidChange:a3];
  v4 = [(HPSBatteryIconView *)self traitCollection];
  if ([v4 userInterfaceStyle] == 2)
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

- (void)setIsCharging:(BOOL)a3
{
  v4 = a3;
  [(_UIBatteryView *)self setShowsInlineChargingIndicator:?];

  [(_UIBatteryView *)self setChargingState:v4];
}

@end