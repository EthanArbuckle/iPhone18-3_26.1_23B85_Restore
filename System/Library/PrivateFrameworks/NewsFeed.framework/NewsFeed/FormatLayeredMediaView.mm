@interface FormatLayeredMediaView
- (_TtC8NewsFeed22FormatLayeredMediaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FormatLayeredMediaView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(FormatLayeredMediaView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    sub_1D726344C();
  }
}

- (_TtC8NewsFeed22FormatLayeredMediaView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_identifier);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView) = 0;
  v10 = self + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(FormatLayeredMediaView *)&v12 initWithFrame:x, y, width, height];
}

@end