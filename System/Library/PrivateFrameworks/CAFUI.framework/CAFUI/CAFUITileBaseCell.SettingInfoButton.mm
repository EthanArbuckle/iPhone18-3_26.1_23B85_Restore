@interface CAFUITileBaseCell.SettingInfoButton
- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithCoder:(id)coder;
- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithFrame:(CGRect)frame;
@end

@implementation CAFUITileBaseCell.SettingInfoButton

- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUITileBaseCell.SettingInfoButton();
  return [(CAFUITileBaseCell.SettingInfoButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5CAFUI17CAFUITileBaseCellP33_5AE52C3D732E730726E7BC4997A1D82917SettingInfoButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAFUITileBaseCell.SettingInfoButton();
  coderCopy = coder;
  v5 = [(CAFUITileBaseCell.SettingInfoButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end