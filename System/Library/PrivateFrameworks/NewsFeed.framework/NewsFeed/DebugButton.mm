@interface DebugButton
- (_TtC8NewsFeed11DebugButton)initWithCoder:(id)coder;
- (_TtC8NewsFeed11DebugButton)initWithFrame:(CGRect)frame;
@end

@implementation DebugButton

- (_TtC8NewsFeed11DebugButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.super.isa + v9) = [objc_allocWithZone(v10) init];
  v16.receiver = self;
  v16.super_class = ObjectType;
  height = [(DebugButton *)&v16 initWithFrame:x, y, width, height];
  v12 = *(&height->super.super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap);
  v13 = height;
  v14 = v12;
  sub_1D725F67C();

  return v13;
}

- (_TtC8NewsFeed11DebugButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end