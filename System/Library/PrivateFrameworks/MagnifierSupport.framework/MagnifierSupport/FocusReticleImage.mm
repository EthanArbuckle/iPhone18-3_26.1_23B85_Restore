@interface FocusReticleImage
- (_TtC16MagnifierSupport17FocusReticleImage)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport17FocusReticleImage)initWithFrame:(CGRect)frame;
- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)image;
- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)tintColorDidChange;
@end

@implementation FocusReticleImage

- (_TtC16MagnifierSupport17FocusReticleImage)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FocusReticleImage();
  height = [(FocusReticleImage *)&v9 initWithFrame:x, y, width, height];
  sub_257E2D98C();
  [(FocusReticleImage *)height setContentMode:0];

  return height;
}

- (_TtC16MagnifierSupport17FocusReticleImage)initWithCoder:(id)coder
{
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_257E2D98C();
}

- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end