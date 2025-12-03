@interface DBAnimationSettings
- (UIColor)rootContainerBackgroundColor;
- (UIView)fromTransitionContainerView;
- (UIView)fromView;
- (UIView)rootContainerView;
- (UIView)toTransitionContainerView;
- (UIView)toView;
- (_TtC9DashBoard19DBAnimationSettings)init;
- (double)dbCornerRadius;
- (void)setDbCornerRadius:(double)radius;
@end

@implementation DBAnimationSettings

- (UIView)rootContainerView
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIColor)rootContainerBackgroundColor
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerBackgroundColor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)toView
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)toTransitionContainerView
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toTransitionContainerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)fromView
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (UIView)fromTransitionContainerView
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromTransitionContainerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (double)dbCornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_dbCornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDbCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_dbCornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (_TtC9DashBoard19DBAnimationSettings)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerView) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerBackgroundColor) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toView) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toTransitionContainerView) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromView) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromTransitionContainerView) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_dbCornerRadius) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBAnimationSettings();
  return [(DBAnimationSettings *)&v3 init];
}

@end