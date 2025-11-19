@interface DRPDropletContextAdaptiveKeylineStyle
- (CAColorMatrix)adaptiveColorMatrix;
- (DRPDropletContextAdaptiveKeylineStyle)init;
- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)a3 outerWidth:(double)a4 keylineOutsets:(UIEdgeInsets)a5 keylineFadeLengths:(UIEdgeInsets)a6 adaptiveColorMatrix:(CAColorMatrix *)a7;
- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)a3 outerWidth:(double)a4 keylineOutsets:(UIEdgeInsets)a5 keylineFadeLengths:(UIEdgeInsets)a6 normalizedStartLocation:(double)a7 normalizedStopLocation:(double)a8 adaptiveColorMatrix:(CAColorMatrix *)a9;
- (DRPDropletContextAdaptiveKeylineStyle)initWithWidth:(double)a3 boundaryFadeLength:(double)a4 adaptiveColorMatrix:(CAColorMatrix *)a5;
- (UIEdgeInsets)keylineFadeLengths;
- (UIEdgeInsets)keylineOutsets;
- (double)innerWidth;
- (double)normalizedStartLocation;
- (double)normalizedStopLocation;
- (double)outerWidth;
- (void)setAdaptiveColorMatrix:(CAColorMatrix *)a3;
- (void)setInnerWidth:(double)a3;
- (void)setNormalizedStartLocation:(double)a3;
- (void)setNormalizedStopLocation:(double)a3;
- (void)setOuterWidth:(double)a3;
@end

@implementation DRPDropletContextAdaptiveKeylineStyle

- (double)innerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInnerWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)outerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOuterWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setNormalizedStartLocation:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)normalizedStopLocation
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStopLocation:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setAdaptiveColorMatrix:(CAColorMatrix *)a3
{
  v3 = (self + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix);
  v7 = *&a3->var4;
  v8 = *&a3->var0;
  v5 = *&a3->var12;
  v6 = *&a3->var8;
  v4 = *&a3->var16;
  swift_beginAccess();
  *v3 = v8;
  v3[1] = v7;
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v4;
}

- (DRPDropletContextAdaptiveKeylineStyle)initWithWidth:(double)a3 boundaryFadeLength:(double)a4 adaptiveColorMatrix:(CAColorMatrix *)a5
{
  v5 = *&a5->var4;
  v8[0] = *&a5->var0;
  v8[1] = v5;
  v6 = *&a5->var12;
  v8[2] = *&a5->var8;
  v8[3] = v6;
  v8[4] = *&a5->var16;
  return [(DRPDropletContextAdaptiveKeylineStyle *)self initWithInnerWidth:v8 outerWidth:0.0 keylineOutsets:a3 keylineFadeLengths:-(a3 + a4) adaptiveColorMatrix:-(a3 + a4), -(a3 + a4), -(a3 + a4), *&a4, *&a4, *&a4, *&a4];
}

- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)a3 outerWidth:(double)a4 keylineOutsets:(UIEdgeInsets)a5 keylineFadeLengths:(UIEdgeInsets)a6 adaptiveColorMatrix:(CAColorMatrix *)a7
{
  v7 = *&a7->var4;
  v10[0] = *&a7->var0;
  v10[1] = v7;
  v8 = *&a7->var12;
  v10[2] = *&a7->var8;
  v10[3] = v8;
  v10[4] = *&a7->var16;
  return [(DRPDropletContextAdaptiveKeylineStyle *)self initWithInnerWidth:v10 outerWidth:a3 keylineOutsets:a4 keylineFadeLengths:a5.top normalizedStartLocation:a5.left normalizedStopLocation:a5.bottom adaptiveColorMatrix:a5.right, *&a6.top, *&a6.left, *&a6.bottom, *&a6.right, 0, 0x3FF0000000000000];
}

- (DRPDropletContextAdaptiveKeylineStyle)initWithInnerWidth:(double)a3 outerWidth:(double)a4 keylineOutsets:(UIEdgeInsets)a5 keylineFadeLengths:(UIEdgeInsets)a6 normalizedStartLocation:(double)a7 normalizedStopLocation:(double)a8 adaptiveColorMatrix:(CAColorMatrix *)a9
{
  v9 = *&a9->var0;
  v10 = *&a9->var4;
  v11 = *&a9->var8;
  v12 = *&a9->var12;
  v13 = *&a9->var16;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth) = a3;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth) = a4;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineOutsets) = a5;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineFadeLengths) = a6;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation) = a7;
  *(&self->super.isa + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation) = a8;
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