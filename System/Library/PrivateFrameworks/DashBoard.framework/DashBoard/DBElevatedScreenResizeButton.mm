@interface DBElevatedScreenResizeButton
- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithCoder:(id)coder;
- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithFrame:(CGRect)frame;
- (unint64_t)transitionControlType;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setTransitionControlType:(unint64_t)type;
- (void)updateConfiguration;
@end

@implementation DBElevatedScreenResizeButton

- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithCoder:(id)coder
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (unint64_t)transitionControlType
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBElevatedScreenResizeButton_transitionControlType;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setTransitionControlType:(unint64_t)type
{
  v5 = OBJC_IVAR____TtC9DashBoard28DBElevatedScreenResizeButton_transitionControlType;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = type;
  [(DBElevatedScreenResizeButton *)self setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  selfCopy = self;
  DBElevatedScreenResizeButton.updateConfiguration()();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  DBElevatedScreenResizeButton.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end