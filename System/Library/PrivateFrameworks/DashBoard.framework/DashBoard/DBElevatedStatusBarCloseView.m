@interface DBElevatedStatusBarCloseView
- (BOOL)isPressed;
- (BOOL)showFocusedState;
- (_TtC9DashBoard28DBElevatedStatusBarCloseView)initWithCoder:(id)a3;
- (_TtC9DashBoard28DBElevatedStatusBarCloseView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateAppearance;
@end

@implementation DBElevatedStatusBarCloseView

- (BOOL)isPressed
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_isPressed;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showFocusedState
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_showFocusedState;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (_TtC9DashBoard28DBElevatedStatusBarCloseView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_isPressed) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_showFocusedState) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DBElevatedStatusBarCloseView();
  v2 = v4.receiver;
  [(DBElevatedStatusBarCloseView *)&v4 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC9DashBoard28DBElevatedStatusBarCloseView_backgroundView] layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (void)updateAppearance
{
  v2 = self;
  sub_2482AF458();
}

- (_TtC9DashBoard28DBElevatedStatusBarCloseView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end