@interface DBDashboardAnimation
- (UIColor)rootContainerBackgroundColor;
- (UIView)fromTransitionContainerView;
- (UIView)fromView;
- (UIView)rootContainerView;
- (UIView)toTransitionContainerView;
- (UIView)toView;
- (_TtC9DashBoard20DBDashboardAnimation)init;
- (_TtC9DashBoard20DBDashboardAnimation)initWithSettings:(id)settings;
- (double)dbCornerRadius;
- (void)setDbCornerRadius:(double)radius;
@end

@implementation DBDashboardAnimation

- (UIView)fromTransitionContainerView
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromTransitionContainerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)fromView
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (double)dbCornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_dbCornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDbCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_dbCornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (UIView)toView
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)toTransitionContainerView
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toTransitionContainerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)rootContainerView
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIColor)rootContainerBackgroundColor
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerBackgroundColor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC9DashBoard20DBDashboardAnimation)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v4 = sub_248288540(settingsCopy);

  return v4;
}

- (_TtC9DashBoard20DBDashboardAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end