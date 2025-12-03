@interface BatteryStatusView
- (BOOL)isProductOfDifferentColors;
- (_TtC19HeadphoneSettingsUI17BatteryStatusView)initWithFrame:(CGRect)frame device:(id)device darkMode:(BOOL)mode;
- (id)batteryIconViewInstance;
- (id)caseImage;
- (id)deviceImage;
- (id)getAssetsDictionary:(unsigned int)dictionary;
- (id)getDeviceCaseIconName:(unsigned int)name;
- (id)getProductIDString;
- (id)leftBudImage;
- (id)rightBudImage;
- (unsigned)bestDeviceColor:(unsigned int)color productID:(unsigned int)d;
- (unsigned)defaultFiltersID;
- (void)setupViews;
- (void)startListeningModernWithDevice:(id)device;
@end

@implementation BatteryStatusView

- (id)batteryIconViewInstance
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC22E0C4();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)startListeningModernWithDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  sub_1AC230A18(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

- (void)setupViews
{
  MEMORY[0x1E69E5928](self);
  sub_1AC233258();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI17BatteryStatusView)initWithFrame:(CGRect)frame device:(id)device darkMode:(BOOL)mode
{
  MEMORY[0x1E69E5928](device);
  v5 = sub_1AC30910C();
  sub_1AC23355C(v5);
}

- (id)getDeviceCaseIconName:(unsigned int)name
{
  MEMORY[0x1E69E5928](self);
  sub_1AC23388C();
  MEMORY[0x1E69E5920](self);
  v5 = sub_1AC30A91C();

  return v5;
}

- (id)getAssetsDictionary:(unsigned int)dictionary
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

- (unsigned)bestDeviceColor:(unsigned int)color productID:(unsigned int)d
{
  MEMORY[0x1E69E5928](self);
  v7 = sub_1AC233C20(color);
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