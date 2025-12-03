@interface BlurrableButton
- (_TtC12MobileSafari15BlurrableButton)initWithCoder:(id)coder;
- (_TtC12MobileSafari15BlurrableButton)initWithFrame:(CGRect)frame;
@end

@implementation BlurrableButton

- (_TtC12MobileSafari15BlurrableButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableButton();
  height = [(BlurrableButton *)&v9 initWithFrame:x, y, width, height];
  sub_18B7C46DC(height, type metadata accessor for BlurrableButton);

  return height;
}

- (_TtC12MobileSafari15BlurrableButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableButton();
  coderCopy = coder;
  v5 = [(BlurrableButton *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18B7C46DC(v7, type metadata accessor for BlurrableButton);
  }

  return v6;
}

@end