@interface DetectionLabel
- (_TtC16MagnifierSupport14DetectionLabel)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport14DetectionLabel)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation DetectionLabel

- (_TtC16MagnifierSupport14DetectionLabel)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(DetectionLabel *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC16MagnifierSupport14DetectionLabel)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(DetectionLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end