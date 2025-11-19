@interface DBDashboardEffectCoordinatingButton
- (BOOL)isTapped;
- (CPUIFocusEffectView)focusEffectView;
- (UIView)dimmingEffectView;
- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)init;
- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithCoder:(id)a3;
- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithFrame:(CGRect)a3;
- (unint64_t)focusEffectStyle;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setFocusEffectStyle:(unint64_t)a3;
- (void)setIsTapped:(BOOL)a3;
- (void)updateEffectsWithIsFocused:(BOOL)a3 isTapped:(BOOL)a4 isPressed:(BOOL)a5;
@end

@implementation DBDashboardEffectCoordinatingButton

- (CPUIFocusEffectView)focusEffectView
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (UIView)dimmingEffectView
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (unint64_t)focusEffectStyle
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setFocusEffectStyle:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  v6 = self;
  v7 = ([(DBDashboardEffectCoordinatingButton *)v6 state]>> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(v5) = (*((*MEMORY[0x277D85000] & v6->super.super.super.super.super.isa) + 0xB8))();
  (*((*v8 & v6->super.super.super.super.super.isa) + 0xD0))(v7, v5 & 1, [(DBDashboardEffectCoordinatingButton *)v6 state]& 1);
}

- (BOOL)isTapped
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsTapped:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  v6 = self;
  v7 = ([(DBDashboardEffectCoordinatingButton *)v6 state]>> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(v5) = (*((*MEMORY[0x277D85000] & v6->super.super.super.super.super.isa) + 0xB8))();
  (*((*v8 & v6->super.super.super.super.super.isa) + 0xD0))(v7, v5 & 1, [(DBDashboardEffectCoordinatingButton *)v6 state]& 1);
}

- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)init
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  return [(DBDashboardEffectCoordinatingButton *)&v3 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)updateEffectsWithIsFocused:(BOOL)a3 isTapped:(BOOL)a4 isPressed:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70);
  v16 = self;
  v10 = v9();
  if (v10)
  {
    v11 = v10;
    [v10 setHidden_];
    [v11 setPressed_];
  }

  v12 = (*((*v8 & v16->super.super.super.super.super.isa) + 0x88))();
  if (v12)
  {
    v13 = !v6;
    v14 = v12;
    [(DBDashboardEffectCoordinatingButton *)v12 setHidden:v13];

    v15 = v14;
  }

  else
  {
    v15 = v16;
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DBDashboardEffectCoordinatingButton.didUpdateFocus(in:with:)(v6, v7);
}

- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end