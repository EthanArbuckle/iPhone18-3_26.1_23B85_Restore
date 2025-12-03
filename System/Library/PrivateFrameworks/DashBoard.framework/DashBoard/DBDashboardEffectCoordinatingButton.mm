@interface DBDashboardEffectCoordinatingButton
- (BOOL)isTapped;
- (CPUIFocusEffectView)focusEffectView;
- (UIView)dimmingEffectView;
- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)init;
- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithCoder:(id)coder;
- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithFrame:(CGRect)frame;
- (unint64_t)focusEffectStyle;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setFocusEffectStyle:(unint64_t)style;
- (void)setIsTapped:(BOOL)tapped;
- (void)updateEffectsWithIsFocused:(BOOL)focused isTapped:(BOOL)tapped isPressed:(BOOL)pressed;
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

- (void)setFocusEffectStyle:(unint64_t)style
{
  v5 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = style;
  selfCopy = self;
  v7 = ([(DBDashboardEffectCoordinatingButton *)selfCopy state]>> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(v5) = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0xB8))();
  (*((*v8 & selfCopy->super.super.super.super.super.isa) + 0xD0))(v7, v5 & 1, [(DBDashboardEffectCoordinatingButton *)selfCopy state]& 1);
}

- (BOOL)isTapped
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsTapped:(BOOL)tapped
{
  v5 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = tapped;
  selfCopy = self;
  v7 = ([(DBDashboardEffectCoordinatingButton *)selfCopy state]>> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(v5) = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0xB8))();
  (*((*v8 & selfCopy->super.super.super.super.super.isa) + 0xD0))(v7, v5 & 1, [(DBDashboardEffectCoordinatingButton *)selfCopy state]& 1);
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

- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)updateEffectsWithIsFocused:(BOOL)focused isTapped:(BOOL)tapped isPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  tappedCopy = tapped;
  focusedCopy = focused;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70);
  selfCopy = self;
  v10 = v9();
  if (v10)
  {
    v11 = v10;
    [v10 setHidden_];
    [v11 setPressed_];
  }

  v12 = (*((*v8 & selfCopy->super.super.super.super.super.isa) + 0x88))();
  if (v12)
  {
    v13 = !tappedCopy;
    v14 = v12;
    [(DBDashboardEffectCoordinatingButton *)v12 setHidden:v13];

    v15 = v14;
  }

  else
  {
    v15 = selfCopy;
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  DBDashboardEffectCoordinatingButton.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (_TtC9DashBoard35DBDashboardEffectCoordinatingButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end