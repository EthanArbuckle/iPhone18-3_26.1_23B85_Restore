@interface DBDashboardStartupScaleAnimator
- (_TtC9DashBoard31DBDashboardStartupScaleAnimator)init;
- (_TtC9DashBoard31DBDashboardStartupScaleAnimator)initWithWindows:(id)windows;
- (void)performAnimationWithCompletion:(id)completion;
- (void)prepareForAnimation;
@end

@implementation DBDashboardStartupScaleAnimator

- (_TtC9DashBoard31DBDashboardStartupScaleAnimator)initWithWindows:(id)windows
{
  sub_248271824();
  sub_248271870();
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBDashboardStartupScaleAnimator__windows) = sub_248383C80();
  v5.receiver = self;
  v5.super_class = type metadata accessor for DBDashboardStartupScaleAnimator();
  return [(DBDashboardStartupScaleAnimator *)&v5 init];
}

- (void)prepareForAnimation
{
  selfCopy = self;
  DBDashboardStartupScaleAnimator.prepareForAnimation()();
}

- (void)performAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_24827368C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  DBDashboardStartupScaleAnimator.performAnimation(completion:)(v7, v6);
  sub_248167864(v7);
}

- (_TtC9DashBoard31DBDashboardStartupScaleAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end