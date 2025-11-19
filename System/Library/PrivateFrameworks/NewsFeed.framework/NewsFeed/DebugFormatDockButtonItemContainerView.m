@interface DebugFormatDockButtonItemContainerView
- (CGSize)intrinsicContentSize;
- (_TtC8NewsFeed38DebugFormatDockButtonItemContainerView)initWithCoder:(id)a3;
- (_TtC8NewsFeed38DebugFormatDockButtonItemContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DebugFormatDockButtonItemContainerView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 44.0;
  v7 = v5 * 44.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D5EE6FD8();
}

- (_TtC8NewsFeed38DebugFormatDockButtonItemContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_buttonSize) = 0x4046000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(DebugFormatDockButtonItemContainerView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed38DebugFormatDockButtonItemContainerView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_buttonSize) = 0x4046000000000000;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(DebugFormatDockButtonItemContainerView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end