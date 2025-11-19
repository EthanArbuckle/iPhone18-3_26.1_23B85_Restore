@interface DRPDropletContextIntelligentEdgeLightKeylineStyle
- (BOOL)preferAudioReactivity;
- (BOOL)screenBlendMode;
- (BOOL)softRim;
- (DRPDropletContextIntelligentEdgeLightKeylineStyle)init;
- (UIEdgeInsets)keylineFadeLengths;
- (UIEdgeInsets)keylineOutsets;
- (double)alpha;
- (double)edrGain;
- (double)innerWidth;
- (double)keylineBlurRadius;
- (double)keylineInputAmount;
- (double)keylineInputEnd;
- (double)keylineInputStart;
- (double)normalizedStartLocation;
- (double)normalizedStopLocation;
- (double)outerWidth;
- (unint64_t)style;
- (void)setAlpha:(double)a3;
- (void)setEdrGain:(double)a3;
- (void)setInnerWidth:(double)a3;
- (void)setKeylineBlurRadius:(double)a3;
- (void)setKeylineInputAmount:(double)a3;
- (void)setKeylineInputEnd:(double)a3;
- (void)setKeylineInputStart:(double)a3;
- (void)setNormalizedStartLocation:(double)a3;
- (void)setNormalizedStopLocation:(double)a3;
- (void)setOuterWidth:(double)a3;
- (void)setPreferAudioReactivity:(BOOL)a3;
- (void)setScreenBlendMode:(BOOL)a3;
- (void)setSoftRim:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation DRPDropletContextIntelligentEdgeLightKeylineStyle

- (BOOL)preferAudioReactivity
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreferAudioReactivity:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)style
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setStyle:(unint64_t)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)softRim
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSoftRim:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)screenBlendMode
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenBlendMode:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)alpha
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAlpha:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)innerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInnerWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)outerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOuterWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)keylineBlurRadius
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)keylineInputAmount
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineInputAmount:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)keylineInputStart
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineInputStart:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)keylineInputEnd
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineInputEnd:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)edrGain
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEdrGain:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (UIEdgeInsets)keylineOutsets
{
  v2 = sub_249EBCFBC(self, a2, &OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineOutsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)keylineFadeLengths
{
  v2 = sub_249EBCFBC(self, a2, &OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineFadeLengths);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)normalizedStartLocation
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStartLocation:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)normalizedStopLocation
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStopLocation:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (DRPDropletContextIntelligentEdgeLightKeylineStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end