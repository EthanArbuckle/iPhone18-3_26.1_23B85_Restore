@interface MFSlider
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (_TtC16MagnifierSupport8MFSlider)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport8MFSlider)initWithFrame:(CGRect)frame;
@end

@implementation MFSlider

- (_TtC16MagnifierSupport8MFSlider)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport8MFSlider_trackColor;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.7 alpha:1.0];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport8MFSlider_extraTouchInset) = 0xC020000000000000;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(MFSlider *)selfCopy bounds];
  v11 = CGRectInset(v10, -8.0, -8.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  [(MFSlider *)selfCopy alignmentRectInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  UIRoundToViewScale();
  v28.receiver = selfCopy;
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

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_257C7EE98(touchCopy);

  return v9;
}

- (_TtC16MagnifierSupport8MFSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end