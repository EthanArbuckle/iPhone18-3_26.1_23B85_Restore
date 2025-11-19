@interface MicaAnimationView
- (CGSize)intrinsicContentSize;
- (_TtC18HealthExperienceUI17MicaAnimationView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI17MicaAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)stepAnimationForLayer:(id)a3;
@end

@implementation MicaAnimationView

- (_TtC18HealthExperienceUI17MicaAnimationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_transitionSpeed) = 1065353216;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer);
  v3 = self;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  sub_1BA220EC8(&v13);
  v12 = v13;
  v14.width = v5;
  v14.height = v7;
  v8 = CGSizeApplyAffineTransform(v14, &v12);
  v9 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_insetSize);

  v10 = v8.width + v9;
  v11 = v8.height + v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BA220D4C();
}

- (void)stepAnimationForLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA221280(v4);
}

- (_TtC18HealthExperienceUI17MicaAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end