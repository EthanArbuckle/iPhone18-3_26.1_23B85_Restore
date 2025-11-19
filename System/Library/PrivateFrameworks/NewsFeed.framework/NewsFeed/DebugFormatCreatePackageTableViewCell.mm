@interface DebugFormatCreatePackageTableViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC8NewsFeed37DebugFormatCreatePackageTableViewCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed37DebugFormatCreatePackageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)onTextChange;
- (void)prepareForReuse;
@end

@implementation DebugFormatCreatePackageTableViewCell

- (_TtC8NewsFeed37DebugFormatCreatePackageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D60CFDF4(a3, a4, v6);
}

- (_TtC8NewsFeed37DebugFormatCreatePackageTableViewCell)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  v7 = sub_1D7257A4C();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1D60D045C();
}

- (void)onTextChange
{
  v2 = self;
  sub_1D60D05D8();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = sub_1D726207C();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_1D60D0AA8(v7, v9);

  return v7 & 1;
}

@end