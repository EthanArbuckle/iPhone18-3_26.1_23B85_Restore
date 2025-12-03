@interface HPSCenterContentCell
- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)addSubview:(id)subview;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPSCenterContentCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  MEMORY[0x1E69E5928](specifier);
  MEMORY[0x1E69E5928](self);
  sub_1AC281B44();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](specifier);
}

- (void)addSubview:(id)subview
{
  MEMORY[0x1E69E5928](subview);
  MEMORY[0x1E69E5928](self);
  sub_1AC282484(subview);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](subview);
}

- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  MEMORY[0x1E69E5928](identifier);
  MEMORY[0x1E69E5928](specifier);
  if (identifier)
  {
    v7 = sub_1AC30A92C();
    v8 = v5;
    MEMORY[0x1E69E5920](identifier);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return sub_1AC2825A4(style, v9, v10, specifier);
}

- (_TtC19HeadphoneSettingsUI20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  MEMORY[0x1E69E5928](identifier);
  if (identifier)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](identifier);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC282854(style, v8, v9);
}

@end