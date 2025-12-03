@interface DBDashboardStartupFadeInAnimator
- (_TtC9DashBoard32DBDashboardStartupFadeInAnimator)init;
- (_TtC9DashBoard32DBDashboardStartupFadeInAnimator)initWithBlackoutWindow:(id)window windows:(id)windows;
- (void)performAnimationWithCompletion:(id)completion;
- (void)prepareForAnimation;
@end

@implementation DBDashboardStartupFadeInAnimator

- (_TtC9DashBoard32DBDashboardStartupFadeInAnimator)initWithBlackoutWindow:(id)window windows:(id)windows
{
  sub_248271824();
  sub_248271870();
  v6 = sub_248383C80();
  v7 = OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(&self->super.isa + v7) = v6;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_blackoutWindow) = window;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DBDashboardStartupFadeInAnimator();
  windowCopy = window;
  return [(DBDashboardStartupFadeInAnimator *)&v10 init];
}

- (void)prepareForAnimation
{
  selfCopy = self;
  DBDashboardStartupFadeInAnimator.prepareForAnimation()();
}

- (void)performAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_248272D08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  DBDashboardStartupFadeInAnimator.performAnimation(completion:)(v7, v6);
  sub_248167864(v7);
}

- (_TtC9DashBoard32DBDashboardStartupFadeInAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end