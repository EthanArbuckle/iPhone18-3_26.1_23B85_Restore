@interface HPSCenterContentCell
- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)addSubview:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPSCenterContentCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC281B44();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)addSubview:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC282484(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  if (a4)
  {
    v7 = sub_1AC30A92C();
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

  return sub_1AC2825A4(a3, v9, v10, a5);
}

- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v6 = sub_1AC30A92C();
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

  return sub_1AC282854(a3, v8, v9);
}

@end