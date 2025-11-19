@interface DebugFormatTableViewCell
- (_TtC8NewsFeed24DebugFormatTableViewCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed24DebugFormatTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation DebugFormatTableViewCell

- (_TtC8NewsFeed24DebugFormatTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1D71F3CCC(v4, v5);
}

- (_TtC8NewsFeed24DebugFormatTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor) = 0;
  v3 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(DebugFormatTableViewCell *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView];
  [v2 bounds];
  sub_1D72632CC();
  [v4 setFrame_];
  v5 = [*&v2[v3] layer];
  [v5 setCornerRadius_];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1D71F3B7C();
}

@end