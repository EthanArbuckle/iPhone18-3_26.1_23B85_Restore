@interface DebugButton
- (_TtC8NewsFeed11DebugButton)initWithCoder:(id)a3;
- (_TtC8NewsFeed11DebugButton)initWithFrame:(CGRect)a3;
@end

@implementation DebugButton

- (_TtC8NewsFeed11DebugButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.super.isa + v9) = [objc_allocWithZone(v10) init];
  v16.receiver = self;
  v16.super_class = ObjectType;
  v11 = [(DebugButton *)&v16 initWithFrame:x, y, width, height];
  v12 = *(&v11->super.super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap);
  v13 = v11;
  v14 = v12;
  sub_1D725F67C();

  return v13;
}

- (_TtC8NewsFeed11DebugButton)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end