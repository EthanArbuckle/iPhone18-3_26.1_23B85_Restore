@interface BlurrableView
- (_TtC12MobileSafari13BlurrableView)initWithCoder:(id)a3;
- (_TtC12MobileSafari13BlurrableView)initWithFrame:(CGRect)a3;
@end

@implementation BlurrableView

- (_TtC12MobileSafari13BlurrableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableView();
  v7 = [(BlurrableView *)&v9 initWithFrame:x, y, width, height];
  sub_18B7C480C();

  return v7;
}

- (_TtC12MobileSafari13BlurrableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableView();
  v4 = a3;
  v5 = [(BlurrableView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18B7C480C();
  }

  return v6;
}

@end