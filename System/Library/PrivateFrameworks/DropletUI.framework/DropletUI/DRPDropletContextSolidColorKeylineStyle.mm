@interface DRPDropletContextSolidColorKeylineStyle
- (DRPDropletContextSolidColorKeylineStyle)init;
- (DRPDropletContextSolidColorKeylineStyle)initWithInnerWidth:(double)a3 outerWidth:(double)a4 keylineOutsets:(UIEdgeInsets)a5 keylineFadeLengths:(UIEdgeInsets)a6 normalizedStartLocation:(double)a7 normalizedStopLocation:(double)a8 color:(id)a9;
- (UIColor)color;
- (UIEdgeInsets)keylineFadeLengths;
- (UIEdgeInsets)keylineOutsets;
- (double)innerWidth;
- (double)normalizedStartLocation;
- (double)normalizedStopLocation;
- (double)outerWidth;
- (void)setColor:(id)a3;
- (void)setInnerWidth:(double)a3;
- (void)setNormalizedStartLocation:(double)a3;
- (void)setNormalizedStopLocation:(double)a3;
- (void)setOuterWidth:(double)a3;
@end

@implementation DRPDropletContextSolidColorKeylineStyle

- (double)innerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInnerWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)outerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOuterWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setNormalizedStartLocation:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)normalizedStopLocation
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStopLocation:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (UIColor)color
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setColor:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (DRPDropletContextSolidColorKeylineStyle)initWithInnerWidth:(double)a3 outerWidth:(double)a4 keylineOutsets:(UIEdgeInsets)a5 keylineFadeLengths:(UIEdgeInsets)a6 normalizedStartLocation:(double)a7 normalizedStopLocation:(double)a8 color:(id)a9
{
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth) = a3;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth) = a4;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineOutsets) = a5;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineFadeLengths) = a6;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation) = a7;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation) = a8;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color) = a9;
  v11.receiver = self;
  v11.super_class = DRPDropletContextSolidColorKeylineStyle;
  v9 = a9;
  return [(DRPDropletContextSolidColorKeylineStyle *)&v11 init];
}

- (DRPDropletContextSolidColorKeylineStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end