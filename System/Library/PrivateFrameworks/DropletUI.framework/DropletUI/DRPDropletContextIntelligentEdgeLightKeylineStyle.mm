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
- (void)setAlpha:(double)alpha;
- (void)setEdrGain:(double)gain;
- (void)setInnerWidth:(double)width;
- (void)setKeylineBlurRadius:(double)radius;
- (void)setKeylineInputAmount:(double)amount;
- (void)setKeylineInputEnd:(double)end;
- (void)setKeylineInputStart:(double)start;
- (void)setNormalizedStartLocation:(double)location;
- (void)setNormalizedStopLocation:(double)location;
- (void)setOuterWidth:(double)width;
- (void)setPreferAudioReactivity:(BOOL)reactivity;
- (void)setScreenBlendMode:(BOOL)mode;
- (void)setSoftRim:(BOOL)rim;
- (void)setStyle:(unint64_t)style;
@end

@implementation DRPDropletContextIntelligentEdgeLightKeylineStyle

- (BOOL)preferAudioReactivity
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreferAudioReactivity:(BOOL)reactivity
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  swift_beginAccess();
  *(&self->super.isa + v5) = reactivity;
}

- (unint64_t)style
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setStyle:(unint64_t)style
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  swift_beginAccess();
  *(&self->super.isa + v5) = style;
}

- (BOOL)softRim
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSoftRim:(BOOL)rim
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  swift_beginAccess();
  *(&self->super.isa + v5) = rim;
}

- (BOOL)screenBlendMode
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenBlendMode:(BOOL)mode
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = mode;
}

- (double)alpha
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAlpha:(double)alpha
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  swift_beginAccess();
  *(&self->super.isa + v5) = alpha;
}

- (double)innerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInnerWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (double)outerWidth
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOuterWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (double)keylineBlurRadius
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (double)keylineInputAmount
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineInputAmount:(double)amount
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  swift_beginAccess();
  *(&self->super.isa + v5) = amount;
}

- (double)keylineInputStart
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineInputStart:(double)start
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  swift_beginAccess();
  *(&self->super.isa + v5) = start;
}

- (double)keylineInputEnd
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeylineInputEnd:(double)end
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  swift_beginAccess();
  *(&self->super.isa + v5) = end;
}

- (double)edrGain
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEdrGain:(double)gain
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  swift_beginAccess();
  *(&self->super.isa + v5) = gain;
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

- (void)setNormalizedStartLocation:(double)location
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (double)normalizedStopLocation
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNormalizedStopLocation:(double)location
{
  v5 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (DRPDropletContextIntelligentEdgeLightKeylineStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end