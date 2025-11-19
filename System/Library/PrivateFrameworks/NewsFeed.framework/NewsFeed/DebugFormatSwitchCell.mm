@interface DebugFormatSwitchCell
- (_TtC8NewsFeed21DebugFormatSwitchCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed21DebugFormatSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)valueChanged;
@end

@implementation DebugFormatSwitchCell

- (_TtC8NewsFeed21DebugFormatSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D67A5304(v4, v5);
}

- (_TtC8NewsFeed21DebugFormatSwitchCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_onChangeBlock);
  *v5 = 0;
  v5[1] = 0;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)valueChanged
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_onChangeBlock);
  if (v2)
  {
    v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl);
    v4 = self;
    sub_1D5DEA510(v2);
    v2([v3 isOn]);

    sub_1D5B74328(v2);
  }
}

@end