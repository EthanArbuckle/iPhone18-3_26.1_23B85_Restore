@interface DRPDropletContextAdaptiveKeylineStyle
- (CAColorMatrix)adaptiveColorMatrix;
- (DRPDropletContextAdaptiveKeylineStyle)init;
- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)width outerWidth:(double)outerWidth keylineOutsets:(UIEdgeInsets)outsets keylineFadeLengths:(UIEdgeInsets)lengths adaptiveColorMatrix:(CAColorMatrix *)matrix;
- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)width outerWidth:(double)outerWidth keylineOutsets:(UIEdgeInsets)outsets keylineFadeLengths:(UIEdgeInsets)lengths normalizedStartLocation:(double)location normalizedStopLocation:(double)stopLocation adaptiveColorMatrix:(CAColorMatrix *)matrix;
- (DRPDropletContextAdaptiveKeylineStyle)initWithWidth:(double)width boundaryFadeLength:(double)length adaptiveColorMatrix:(CAColorMatrix *)matrix;
- (UIEdgeInsets)keylineFadeLengths;
- (UIEdgeInsets)keylineOutsets;
- (double)innerWidth;
- (double)normalizedStartLocation;
- (double)normalizedStopLocation;
- (double)outerWidth;
- (void)setAdaptiveColorMatrix:(CAColorMatrix *)matrix;
- (void)setInnerWidth:(double)width;
- (void)setNormalizedStartLocation:(double)location;
- (void)setNormalizedStopLocation:(double)location;
- (void)setOuterWidth:(double)width;
@end

@implementation DRPDropletContextAdaptiveKeylineStyle

- (double)innerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInnerWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (double)outerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOuterWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (UIEdgeInsets)keylineOutsets
{
  v2 = sub_249EBCFBC(self, a2, &OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineOutsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)keylineFadeLengths
{
  v2 = sub_249EBCFBC(self, a2, &OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineFadeLengths);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)normalizedStartLocation
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStartLocation:(double)location
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (double)normalizedStopLocation
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStopLocation:(double)location
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (CAColorMatrix)adaptiveColorMatrix
{
  v4 = (self + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix);
  result = swift_beginAccess();
  v6 = v4[1];
  *&retstr->var0 = *v4;
  *&retstr->var4 = v6;
  v7 = v4[3];
  *&retstr->var8 = v4[2];
  *&retstr->var12 = v7;
  *&retstr->var16 = v4[4];
  return result;
}

- (void)setAdaptiveColorMatrix:(CAColorMatrix *)matrix
{
  v3 = (self + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix);
  v7 = *&matrix->var4;
  v8 = *&matrix->var0;
  v5 = *&matrix->var12;
  v6 = *&matrix->var8;
  v4 = *&matrix->var16;
  swift_beginAccess();
  *v3 = v8;
  v3[1] = v7;
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v4;
}

- (DRPDropletContextAdaptiveKeylineStyle)initWithWidth:(double)width boundaryFadeLength:(double)length adaptiveColorMatrix:(CAColorMatrix *)matrix
{
  v5 = *&matrix->var4;
  v8[0] = *&matrix->var0;
  v8[1] = v5;
  v6 = *&matrix->var12;
  v8[2] = *&matrix->var8;
  v8[3] = v6;
  v8[4] = *&matrix->var16;
  return [(DRPDropletContextAdaptiveKeylineStyle *)self initWithInnerWidth:v8 outerWidth:0.0 keylineOutsets:width keylineFadeLengths:-(width + length) adaptiveColorMatrix:-(width + length), -(width + length), -(width + length), *&length, *&length, *&length, *&length];
}

- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)width outerWidth:(double)outerWidth keylineOutsets:(UIEdgeInsets)outsets keylineFadeLengths:(UIEdgeInsets)lengths adaptiveColorMatrix:(CAColorMatrix *)matrix
{
  v7 = *&matrix->var4;
  v10[0] = *&matrix->var0;
  v10[1] = v7;
  v8 = *&matrix->var12;
  v10[2] = *&matrix->var8;
  v10[3] = v8;
  v10[4] = *&matrix->var16;
  return [(DRPDropletContextAdaptiveKeylineStyle *)self initWithInnerWidth:v10 outerWidth:width keylineOutsets:outerWidth keylineFadeLengths:outsets.top normalizedStartLocation:outsets.left normalizedStopLocation:outsets.bottom adaptiveColorMatrix:outsets.right, *&lengths.top, *&lengths.left, *&lengths.bottom, *&lengths.right, 0, 0x3FF0000000000000];
}

- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)width outerWidth:(double)outerWidth keylineOutsets:(UIEdgeInsets)outsets keylineFadeLengths:(UIEdgeInsets)lengths normalizedStartLocation:(double)location normalizedStopLocation:(double)stopLocation adaptiveColorMatrix:(CAColorMatrix *)matrix
{
  v9 = *&matrix->var0;
  v10 = *&matrix->var4;
  v11 = *&matrix->var8;
  v12 = *&matrix->var12;
  v13 = *&matrix->var16;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth) = width;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth) = outerWidth;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineOutsets) = outsets;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineFadeLengths) = lengths;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation) = location;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation) = stopLocation;
  v14 = (self + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix);
  *v14 = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  v14[4] = v13;
  v16.receiver = self;
  v16.super_class = DRPDropletContextAdaptiveKeylineStyle;
  return [(DRPDropletContextAdaptiveKeylineStyle *)&v16 init];
}

- (DRPDropletContextAdaptiveKeylineStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end