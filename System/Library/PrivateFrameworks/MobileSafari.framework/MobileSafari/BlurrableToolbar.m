@interface BlurrableToolbar
- (_TtC12MobileSafari16BlurrableToolbar)initWithCoder:(id)a3;
- (_TtC12MobileSafari16BlurrableToolbar)initWithFrame:(CGRect)a3;
@end

@implementation BlurrableToolbar

- (_TtC12MobileSafari16BlurrableToolbar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BlurrableToolbar();
  return [(BlurrableToolbar *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12MobileSafari16BlurrableToolbar)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlurrableToolbar();
  v4 = a3;
  v5 = [(BlurrableToolbar *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end