@interface BatteryStatusView
- (BOOL)isProductOfDifferentColors;
- (_TtC19HeadphoneSettingsUI17BatteryStatusView)initWithFrame:(CGRect)a3 device:(id)a4 darkMode:(BOOL)a5;
- (id)batteryIconViewInstance;
- (id)caseImage;
- (id)deviceImage;
- (id)getAssetsDictionary:(unsigned int)a3;
- (id)getDeviceCaseIconName:(unsigned int)a3;
- (id)getProductIDString;
- (id)leftBudImage;
- (id)rightBudImage;
- (unsigned)bestDeviceColor:(unsigned int)a3 productID:(unsigned int)a4;
- (unsigned)defaultFiltersID;
- (void)setupViews;
- (void)startListeningModernWithDevice:(id)a3;
@end

@implementation BatteryStatusView

- (id)batteryIconViewInstance
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC22E0C4();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)startListeningModernWithDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC230A18(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)setupViews
{
  MEMORY[0x1E69E5928](self);
  sub_1AC233258();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI17BatteryStatusView)initWithFrame:(CGRect)a3 device:(id)a4 darkMode:(BOOL)a5
{
  MEMORY[0x1E69E5928](a4);
  v5 = sub_1AC30910C();
  sub_1AC23355C(v5);
}

- (id)getDeviceCaseIconName:(unsigned int)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1AC23388C();
  MEMORY[0x1E69E5920](self);
  v5 = sub_1AC30A91C();

  return v5;
}

- (id)getAssetsDictionary:(unsigned int)a3
{
  MEMORY[0x1E69E5928](self);
  v5 = sub_1AC233974();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (id)getProductIDString
{
  MEMORY[0x1E69E5928](self);
  sub_1AC233A38();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

- (BOOL)isProductOfDifferentColors
{
  MEMORY[0x1E69E5928](self);
  sub_1AC233B10();
  MEMORY[0x1E69E5920](self);
  return sub_1AC3090FC() & 1;
}

- (unsigned)defaultFiltersID
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC233BA0();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (unsigned)bestDeviceColor:(unsigned int)a3 productID:(unsigned int)a4
{
  MEMORY[0x1E69E5928](self);
  v7 = sub_1AC233C20(a3);
  MEMORY[0x1E69E5920](self);
  return v7;
}

- (id)leftBudImage
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC233D18();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (id)rightBudImage
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC233DCC();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (id)caseImage
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC233E80();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (id)deviceImage
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC233F34();
  MEMORY[0x1E69E5920](self);

  return v4;
}

@end