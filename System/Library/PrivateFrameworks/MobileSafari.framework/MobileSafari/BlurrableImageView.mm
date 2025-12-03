@interface BlurrableImageView
- (_TtC12MobileSafari18BlurrableImageView)initWithCoder:(id)coder;
- (_TtC12MobileSafari18BlurrableImageView)initWithFrame:(CGRect)frame;
- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)image;
- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation BlurrableImageView

- (_TtC12MobileSafari18BlurrableImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableImageView();
  height = [(BlurrableImageView *)&v9 initWithFrame:x, y, width, height];
  sub_18BC0F324();

  return height;
}

- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)image
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlurrableImageView();
  imageCopy = image;
  v5 = [(BlurrableImageView *)&v7 initWithImage:imageCopy];
  sub_18BC0F324();

  return v5;
}

- (_TtC12MobileSafari18BlurrableImageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableImageView();
  coderCopy = coder;
  v5 = [(BlurrableImageView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18BC0F324();
  }

  return v6;
}

- (_TtC12MobileSafari18BlurrableImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end