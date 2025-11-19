@interface MFSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (_TtC16MagnifierSupport8MFSlider)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport8MFSlider)initWithFrame:(CGRect)a3;
@end

@implementation MFSlider

- (_TtC16MagnifierSupport8MFSlider)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport8MFSlider_trackColor;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.7 alpha:1.0];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport8MFSlider_extraTouchInset) = 0xC020000000000000;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(MFSlider *)v6 bounds];
  v11 = CGRectInset(v10, -8.0, -8.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v8 = self;
  [(MFSlider *)v8 alignmentRectInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  UIRoundToViewScale();
  v28.receiver = v8;
  v28.super_class = ObjectType;
  [(MFSlider *)&v28 trackRectForBounds:x, y, width, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v12 + v17;
  v25 = v21 - (v12 + v14);
  v26 = v10 + v19;
  v27 = v23 * 0.5;
  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v26;
  result.origin.x = v24;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257C7EE98(v6);

  return v9;
}

- (_TtC16MagnifierSupport8MFSlider)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end