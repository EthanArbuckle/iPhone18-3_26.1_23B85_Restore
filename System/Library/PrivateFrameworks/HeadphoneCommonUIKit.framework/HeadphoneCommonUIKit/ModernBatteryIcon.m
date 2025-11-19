@interface ModernBatteryIcon
- (UIView)_micaView;
- (double)chargePercent;
- (void)setChargePercent:(double)a3;
- (void)setIsCharging:(BOOL)a3;
@end

@implementation ModernBatteryIcon

- (void)setIsCharging:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1AC3B72C4();
  sub_1AC3689F8();
  MEMORY[0x1E69E5920](self);
}

- (double)chargePercent
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC368AD4();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setChargePercent:(double)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1AC368B90(a3);
  MEMORY[0x1E69E5920](self);
}

- (UIView)_micaView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC3694D4();
  MEMORY[0x1E69E5920](self);

  return v4;
}

@end