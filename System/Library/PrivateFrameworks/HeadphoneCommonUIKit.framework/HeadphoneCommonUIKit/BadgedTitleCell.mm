@interface BadgedTitleCell
- (_TtC20HeadphoneCommonUIKit15BadgedTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20HeadphoneCommonUIKit15BadgedTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation BadgedTitleCell

- (_TtC20HeadphoneCommonUIKit15BadgedTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  MEMORY[0x1E69E5928](identifier);
  MEMORY[0x1E69E5928](specifier);
  if (identifier)
  {
    v7 = sub_1AC3B7EF4();
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

  return sub_1AC3B1CDC(style, v9, v10, specifier);
}

- (_TtC20HeadphoneCommonUIKit15BadgedTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  MEMORY[0x1E69E5928](identifier);
  if (identifier)
  {
    v6 = sub_1AC3B7EF4();
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

  return sub_1AC3B1FB0(style, v8, v9);
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  MEMORY[0x1E69E5928](specifier);
  MEMORY[0x1E69E5928](self);
  sub_1AC3B230C(specifier);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](specifier);
}

@end