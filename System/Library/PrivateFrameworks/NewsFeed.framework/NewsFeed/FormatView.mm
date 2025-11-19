@interface FormatView
- (_TtC8NewsFeed10FormatView)initWithCoder:(id)a3;
- (_TtC8NewsFeed10FormatView)initWithFrame:(CGRect)a3;
@end

@implementation FormatView

- (_TtC8NewsFeed10FormatView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed10FormatView_identifier);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FormatView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed10FormatView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed10FormatView_identifier);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(FormatView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end