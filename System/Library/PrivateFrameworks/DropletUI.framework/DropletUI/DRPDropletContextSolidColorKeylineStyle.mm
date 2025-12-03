@interface DRPDropletContextSolidColorKeylineStyle
- (DRPDropletContextSolidColorKeylineStyle)init;
- (DRPDropletContextSolidColorKeylineStyle)initWithInnerWidth:(double)width outerWidth:(double)outerWidth keylineOutsets:(UIEdgeInsets)outsets keylineFadeLengths:(UIEdgeInsets)lengths normalizedStartLocation:(double)location normalizedStopLocation:(double)stopLocation color:(id)color;
- (UIColor)color;
- (UIEdgeInsets)keylineFadeLengths;
- (UIEdgeInsets)keylineOutsets;
- (double)innerWidth;
- (double)normalizedStartLocation;
- (double)normalizedStopLocation;
- (double)outerWidth;
- (void)setColor:(id)color;
- (void)setInnerWidth:(double)width;
- (void)setNormalizedStartLocation:(double)location;
- (void)setNormalizedStopLocation:(double)location;
- (void)setOuterWidth:(double)width;
@end

@implementation DRPDropletContextSolidColorKeylineStyle

- (double)innerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInnerWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (double)outerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOuterWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (UIEdgeInsets)keylineOutsets
{
  v2 = sub_249EBCFBC(self, a2, &OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineOutsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)keylineFadeLengths
{
  v2 = sub_249EBCFBC(self, a2, &OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineFadeLengths);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)normalizedStartLocation
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStartLocation:(double)location
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (double)normalizedStopLocation
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStopLocation:(double)location
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (UIColor)color
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setColor:(id)color
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = color;
  colorCopy = color;
}

- (DRPDropletContextSolidColorKeylineStyle)initWithInnerWidth:(double)width outerWidth:(double)outerWidth keylineOutsets:(UIEdgeInsets)outsets keylineFadeLengths:(UIEdgeInsets)lengths normalizedStartLocation:(double)location normalizedStopLocation:(double)stopLocation color:(id)color
{
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth) = width;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth) = outerWidth;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineOutsets) = outsets;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineFadeLengths) = lengths;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation) = location;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation) = stopLocation;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color) = color;
  v11.receiver = self;
  v11.super_class = DRPDropletContextSolidColorKeylineStyle;
  colorCopy = color;
  return [(DRPDropletContextSolidColorKeylineStyle *)&v11 init];
}

- (DRPDropletContextSolidColorKeylineStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end