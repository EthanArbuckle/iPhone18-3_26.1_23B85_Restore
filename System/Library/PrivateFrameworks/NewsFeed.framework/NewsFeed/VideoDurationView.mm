@interface VideoDurationView
- (CGSize)intrinsicContentSize;
- (_TtC8NewsFeed17VideoDurationView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation VideoDurationView

- (_TtC8NewsFeed17VideoDurationView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(VideoDurationView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label];
  [v2 bounds];
  [v3 setFrame_];
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label);
  v5 = self;
  v6 = [v4 font];
  if (v6)
  {
    v9 = v6;
    [v6 capHeight];
    v11 = v10;

    [*(&self->super.super.super.isa + v3) intrinsicContentSize];
    v13 = v12;

    v7 = v13 + 12.0;
    v8 = v11 + 12.0;
  }

  else
  {
    __break(1u);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

@end