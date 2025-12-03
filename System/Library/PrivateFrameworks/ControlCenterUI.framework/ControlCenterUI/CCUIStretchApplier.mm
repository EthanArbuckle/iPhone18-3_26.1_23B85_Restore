@interface CCUIStretchApplier
- (CCUIStretchApplier)init;
- (CCUIStretchParameters)parameters;
- (CGPoint)baseEffectiveScaleMagnitude;
- (CGPoint)baseEffectiveScaleScalarMagnitude;
- (CGVector)baseEffectiveTranslation;
- (NSSet)stretchSources;
- (id)addStretchSourceWithParameters:(CCUIStretchParameters)parameters primaryAxis:(int64_t)axis;
- (id)addStretchSourceWithParameters:(CCUIStretchParameters)parameters primaryAxis:(int64_t)axis stretchTransformer:(id)transformer;
- (void)applyStretchForChangedSource:(id)source;
- (void)applyStretchTo:(id)to applyScale:(BOOL)scale applyTranslation:(BOOL)translation;
- (void)beginApplyingStretchToStretchable:(id)stretchable;
- (void)endApplyingStretchToStretchable:(id)stretchable;
- (void)evaluateBaseStretch;
- (void)removeStretchSource:(id)source;
- (void)setStretchSources:(id)sources;
- (void)setStretchables:(id)stretchables;
- (void)setTransformersByStretchSource:(id)source;
- (void)updateStretchForChangedSource:(id)source;
@end

@implementation CCUIStretchApplier

- (id)addStretchSourceWithParameters:(CCUIStretchParameters)parameters primaryAxis:(int64_t)axis
{
  var2 = parameters.var2;
  var1 = parameters.var1;
  var0 = parameters.var0;
  selfCopy = self;
  v9 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(axis, 0, 0, var0, var1, var2);

  return v9;
}

- (id)addStretchSourceWithParameters:(CCUIStretchParameters)parameters primaryAxis:(int64_t)axis stretchTransformer:(id)transformer
{
  var2 = parameters.var2;
  var1 = parameters.var1;
  var0 = parameters.var0;
  v10 = _Block_copy(transformer);
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_21EA58B04;
    *(v13 + 24) = v12;
    selfCopy = self;

    v15 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(axis, sub_21EA58B68, v13, var0, var1, var2);

    var2 = v15;
  }

  else
  {
    var2 = [(CCUIStretchApplier *)self addStretchSourceWithParameters:axis primaryAxis:var0, var1, var2];
  }

  return var2;
}

- (void)beginApplyingStretchToStretchable:(id)stretchable
{
  swift_unknownObjectRetain();
  selfCopy = self;
  stretchables = [(CCUIStretchApplier *)selfCopy stretchables];
  [stretchables addObject_];

  [(CCUIStretchApplier *)selfCopy applyStretchTo:stretchable applyScale:1 applyTranslation:1];
  swift_unknownObjectRelease();
}

- (void)endApplyingStretchToStretchable:(id)stretchable
{
  swift_unknownObjectRetain();
  selfCopy = self;
  stretchables = [(CCUIStretchApplier *)selfCopy stretchables];
  containsObject_ = [stretchables containsObject_];

  if (containsObject_)
  {
    stretchables2 = [(CCUIStretchApplier *)selfCopy stretchables];
    [stretchables2 removeObject_];

    [(CCUIStretchApplier *)selfCopy applyWithScale:stretchable to:1.0, 1.0];
    [(CCUIStretchApplier *)selfCopy applyWithTranslation:stretchable to:0.0, 0.0];
  }

  swift_unknownObjectRelease();
}

- (CCUIStretchParameters)parameters
{
  v2 = *(self + OBJC_IVAR___CCUIStretchApplier_parameters);
  v3 = *(self + OBJC_IVAR___CCUIStretchApplier_parameters + 8);
  v4 = *(self + OBJC_IVAR___CCUIStretchApplier_parameters + 16);
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (CGPoint)baseEffectiveScaleMagnitude
{
  v2 = *(self + OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleMagnitude);
  v3 = *(self + OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleMagnitude + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)baseEffectiveScaleScalarMagnitude
{
  v2 = *(self + OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleScalarMagnitude);
  v3 = *(self + OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleScalarMagnitude + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGVector)baseEffectiveTranslation
{
  v2 = *(self + OBJC_IVAR___CCUIStretchApplier_baseEffectiveTranslation);
  v3 = *(self + OBJC_IVAR___CCUIStretchApplier_baseEffectiveTranslation + 8);
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (NSSet)stretchSources
{
  _s14_StretchSourceCMa();
  sub_21EA58A64();

  v2 = sub_21EAA8F50();

  return v2;
}

- (void)setStretchSources:(id)sources
{
  _s14_StretchSourceCMa();
  sub_21EA58A64();
  *(self + OBJC_IVAR___CCUIStretchApplier_stretchSources) = sub_21EAA8F60();
}

- (void)setTransformersByStretchSource:(id)source
{
  v4 = *(self + OBJC_IVAR___CCUIStretchApplier_transformersByStretchSource);
  *(self + OBJC_IVAR___CCUIStretchApplier_transformersByStretchSource) = source;
  sourceCopy = source;
}

- (void)setStretchables:(id)stretchables
{
  v4 = *(self + OBJC_IVAR___CCUIStretchApplier_stretchables);
  *(self + OBJC_IVAR___CCUIStretchApplier_stretchables) = stretchables;
  stretchablesCopy = stretchables;
}

- (void)updateStretchForChangedSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [(CCUIStretchApplier *)selfCopy evaluateBaseStretch];
  [(CCUIStretchApplier *)selfCopy applyStretchForChangedSource:source];
  swift_unknownObjectRelease();
}

- (void)evaluateBaseStretch
{
  selfCopy = self;
  sub_21EA5492C();
}

- (void)applyStretchForChangedSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21EA54C9C(source);
  swift_unknownObjectRelease();
}

- (void)applyStretchTo:(id)to applyScale:(BOOL)scale applyTranslation:(BOOL)translation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21EA54ED4(to, scale, translation);
  swift_unknownObjectRelease();
}

- (void)removeStretchSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_21EA55400(sourceCopy);
}

- (CCUIStretchApplier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end