@interface FocusReticleImage
- (_TtC16MagnifierSupport17FocusReticleImage)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport17FocusReticleImage)initWithFrame:(CGRect)a3;
- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)a3;
- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)tintColorDidChange;
@end

@implementation FocusReticleImage

- (_TtC16MagnifierSupport17FocusReticleImage)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FocusReticleImage();
  v7 = [(FocusReticleImage *)&v9 initWithFrame:x, y, width, height];
  sub_257E2D98C();
  [(FocusReticleImage *)v7 setContentMode:0];

  return v7;
}

- (_TtC16MagnifierSupport17FocusReticleImage)initWithCoder:(id)a3
{
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_257E2D98C();
}

- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport17FocusReticleImage)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end