@interface HPCUIAdaptiveVolumeSliderCell
- (_TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPCUIAdaptiveVolumeSliderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC3A54C0(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (_TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  if (a4)
  {
    v7 = sub_1AC3B7EF4();
    v8 = v5;
    MEMORY[0x1E69E5920](a4);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return sub_1AC3A6D18(a3, v9, v10, a5);
}

- (_TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v6 = sub_1AC3B7EF4();
    v7 = v4;
    MEMORY[0x1E69E5920](a4);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC3A6FF4(a3, v8, v9);
}

@end