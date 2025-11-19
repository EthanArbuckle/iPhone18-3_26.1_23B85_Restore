@interface CCUIStretchApplier._StretchSource
- (CCUIStretchParameters)parameters;
- (_TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource)init;
- (void)invalidate;
- (void)setStretchValue:(double)a3;
@end

@implementation CCUIStretchApplier._StretchSource

- (CCUIStretchParameters)parameters
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters);
  v3 = *(&self->parameters.var0 + OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters);
  v4 = *(&self->parameters.var1 + OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters);
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)setStretchValue:(double)a3
{
  v4 = self;
  sub_21EA555F4(a3);
}

- (void)invalidate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    [v4 removeStretchSource_];
    [v4 updateStretchForChangedSource_];
  }
}

- (_TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end