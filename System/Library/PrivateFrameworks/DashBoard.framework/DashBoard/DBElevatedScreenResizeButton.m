@interface DBElevatedScreenResizeButton
- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithCoder:(id)a3;
- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithFrame:(CGRect)a3;
- (unint64_t)transitionControlType;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setTransitionControlType:(unint64_t)a3;
- (void)updateConfiguration;
@end

@implementation DBElevatedScreenResizeButton

- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithCoder:(id)a3
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

- (void)setTransitionControlType:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard28DBElevatedScreenResizeButton_transitionControlType;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  [(DBElevatedScreenResizeButton *)self setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  v2 = self;
  DBElevatedScreenResizeButton.updateConfiguration()();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DBElevatedScreenResizeButton.didUpdateFocus(in:with:)(v6, v7);
}

- (_TtC9DashBoard28DBElevatedScreenResizeButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end