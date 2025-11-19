@interface BlurrableImageView
- (_TtC12MobileSafari18BlurrableImageView)initWithCoder:(id)a3;
- (_TtC12MobileSafari18BlurrableImageView)initWithFrame:(CGRect)a3;
- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)a3;
- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation BlurrableImageView

- (_TtC12MobileSafari18BlurrableImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableImageView();
  v7 = [(BlurrableImageView *)&v9 initWithFrame:x, y, width, height];
  sub_18BC0F324();

  return v7;
}

- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlurrableImageView();
  v4 = a3;
  v5 = [(BlurrableImageView *)&v7 initWithImage:v4];
  sub_18BC0F324();

  return v5;
}

- (_TtC12MobileSafari18BlurrableImageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableImageView();
  v4 = a3;
  v5 = [(BlurrableImageView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18BC0F324();
  }

  return v6;
}

- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end