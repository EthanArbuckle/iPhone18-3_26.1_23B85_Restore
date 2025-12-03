@interface BlurrableView
- (_TtC12MobileSafari13BlurrableView)initWithCoder:(id)coder;
- (_TtC12MobileSafari13BlurrableView)initWithFrame:(CGRect)frame;
@end

@implementation BlurrableView

- (_TtC12MobileSafari13BlurrableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableView();
  height = [(BlurrableView *)&v9 initWithFrame:x, y, width, height];
  sub_18B7C480C();

  return height;
}

- (_TtC12MobileSafari13BlurrableView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableView();
  coderCopy = coder;
  v5 = [(BlurrableView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18B7C480C();
  }

  return v6;
}

@end