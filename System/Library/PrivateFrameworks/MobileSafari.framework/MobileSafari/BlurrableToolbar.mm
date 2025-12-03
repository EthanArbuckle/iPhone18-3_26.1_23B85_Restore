@interface BlurrableToolbar
- (_TtC12MobileSafari16BlurrableToolbar)initWithCoder:(id)coder;
- (_TtC12MobileSafari16BlurrableToolbar)initWithFrame:(CGRect)frame;
@end

@implementation BlurrableToolbar

- (_TtC12MobileSafari16BlurrableToolbar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BlurrableToolbar();
  return [(BlurrableToolbar *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12MobileSafari16BlurrableToolbar)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlurrableToolbar();
  coderCopy = coder;
  v5 = [(BlurrableToolbar *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end