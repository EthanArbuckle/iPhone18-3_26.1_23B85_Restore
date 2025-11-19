@interface CCUIStretchApplier
- (CCUIStretchApplier)init;
- (CCUIStretchParameters)parameters;
- (CGPoint)baseEffectiveScaleMagnitude;
- (CGPoint)baseEffectiveScaleScalarMagnitude;
- (CGVector)baseEffectiveTranslation;
- (NSSet)stretchSources;
- (id)addStretchSourceWithParameters:(CCUIStretchParameters)a3 primaryAxis:(int64_t)a4;
- (id)addStretchSourceWithParameters:(CCUIStretchParameters)a3 primaryAxis:(int64_t)a4 stretchTransformer:(id)a5;
- (void)applyStretchForChangedSource:(id)a3;
- (void)applyStretchTo:(id)a3 applyScale:(BOOL)a4 applyTranslation:(BOOL)a5;
- (void)beginApplyingStretchToStretchable:(id)a3;
- (void)endApplyingStretchToStretchable:(id)a3;
- (void)evaluateBaseStretch;
- (void)removeStretchSource:(id)a3;
- (void)setStretchSources:(id)a3;
- (void)setStretchables:(id)a3;
- (void)setTransformersByStretchSource:(id)a3;
- (void)updateStretchForChangedSource:(id)a3;
@end

@implementation CCUIStretchApplier

- (id)addStretchSourceWithParameters:(CCUIStretchParameters)a3 primaryAxis:(int64_t)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = self;
  v9 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(a4, 0, 0, var0, var1, var2);

  return v9;
}

- (id)addStretchSourceWithParameters:(CCUIStretchParameters)a3 primaryAxis:(int64_t)a4 stretchTransformer:(id)a5
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = _Block_copy(a5);
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_21EA58B04;
    *(v13 + 24) = v12;
    v14 = self;

    v15 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(a4, sub_21EA58B68, v13, var0, var1, var2);

    v16 = v15;
  }

  else
  {
    v16 = [(CCUIStretchApplier *)self addStretchSourceWithParameters:a4 primaryAxis:var0, var1, var2];
  }

  return v16;
}

- (void)beginApplyingStretchToStretchable:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  v5 = [(CCUIStretchApplier *)v6 stretchables];
  [v5 addObject_];

  [(CCUIStretchApplier *)v6 applyStretchTo:a3 applyScale:1 applyTranslation:1];
  swift_unknownObjectRelease();
}

- (void)endApplyingStretchToStretchable:(id)a3
{
  swift_unknownObjectRetain();
  v8 = self;
  v5 = [(CCUIStretchApplier *)v8 stretchables];
  v6 = [v5 containsObject_];

  if (v6)
  {
    v7 = [(CCUIStretchApplier *)v8 stretchables];
    [v7 removeObject_];

    [(CCUIStretchApplier *)v8 applyWithScale:a3 to:1.0, 1.0];
    [(CCUIStretchApplier *)v8 applyWithTranslation:a3 to:0.0, 0.0];
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

- (void)setStretchSources:(id)a3
{
  _s14_StretchSourceCMa();
  sub_21EA58A64();
  *(self + OBJC_IVAR___CCUIStretchApplier_stretchSources) = sub_21EAA8F60();
}

- (void)setTransformersByStretchSource:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIStretchApplier_transformersByStretchSource);
  *(self + OBJC_IVAR___CCUIStretchApplier_transformersByStretchSource) = a3;
  v3 = a3;
}

- (void)setStretchables:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIStretchApplier_stretchables);
  *(self + OBJC_IVAR___CCUIStretchApplier_stretchables) = a3;
  v3 = a3;
}

- (void)updateStretchForChangedSource:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  [(CCUIStretchApplier *)v5 evaluateBaseStretch];
  [(CCUIStretchApplier *)v5 applyStretchForChangedSource:a3];
  swift_unknownObjectRelease();
}

- (void)evaluateBaseStretch
{
  v2 = self;
  sub_21EA5492C();
}

- (void)applyStretchForChangedSource:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_21EA54C9C(a3);
  swift_unknownObjectRelease();
}

- (void)applyStretchTo:(id)a3 applyScale:(BOOL)a4 applyTranslation:(BOOL)a5
{
  swift_unknownObjectRetain();
  v9 = self;
  sub_21EA54ED4(a3, a4, a5);
  swift_unknownObjectRelease();
}

- (void)removeStretchSource:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA55400(v4);
}

- (CCUIStretchApplier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end