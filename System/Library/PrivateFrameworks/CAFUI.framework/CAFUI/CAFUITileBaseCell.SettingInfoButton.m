@interface CAFUITileBaseCell.SettingInfoButton
- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithCoder:(id)a3;
- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithFrame:(CGRect)a3;
@end

@implementation CAFUITileBaseCell.SettingInfoButton

- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUITileBaseCell.SettingInfoButton();
  return [(CAFUITileBaseCell.SettingInfoButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAFUITileBaseCell.SettingInfoButton();
  v4 = a3;
  v5 = [(CAFUITileBaseCell.SettingInfoButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end