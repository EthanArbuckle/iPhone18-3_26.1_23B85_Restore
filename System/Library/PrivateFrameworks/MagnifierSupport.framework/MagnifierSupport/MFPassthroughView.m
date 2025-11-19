@interface MFPassthroughView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC16MagnifierSupport17MFPassthroughView)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport17MFPassthroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation MFPassthroughView

- (_TtC16MagnifierSupport17MFPassthroughView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_heightOfPanAreaAboveDrawer) = 0x403E000000000000;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_257DD2A10(v4, x, y);

  return v4 & 1;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_257DD2C74(a4, x, y);

  return v10;
}

- (_TtC16MagnifierSupport17MFPassthroughView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end