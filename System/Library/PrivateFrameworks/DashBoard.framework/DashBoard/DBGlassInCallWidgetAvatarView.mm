@interface DBGlassInCallWidgetAvatarView
- (TUCall)currentCall;
- (void)homeScreenStyleDidChange;
- (void)layoutSubviews;
- (void)setCurrentCall:(id)call;
- (void)updateEffectsWithIsFocused:(BOOL)focused isTapped:(BOOL)tapped isPressed:(BOOL)pressed;
- (void)userInterfaceIdiomDidChange;
@end

@implementation DBGlassInCallWidgetAvatarView

- (TUCall)currentCall
{
  v3 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setCurrentCall:(id)call
{
  v5 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = call;
  callCopy = call;
  selfCopy = self;

  sub_248337CC8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  DBGlassInCallWidgetAvatarView.layoutSubviews()();
}

- (void)updateEffectsWithIsFocused:(BOOL)focused isTapped:(BOOL)tapped isPressed:(BOOL)pressed
{
  selfCopy = self;
  DBDashboardEffectCoordinatingButton.updateEffects(isFocused:isTapped:isPressed:)(focused, tapped, pressed);
  v8 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView);
  v9 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.super.isa) + 0x88))();
  if (v9)
  {
    v10 = v9;
    isHidden = [v9 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  [v8 setHidden_];
}

- (void)userInterfaceIdiomDidChange
{
  selfCopy = self;
  DBGlassInCallWidgetAvatarView.userInterfaceIdiomDidChange()();
}

- (void)homeScreenStyleDidChange
{
  selfCopy = self;
  DBGlassInCallWidgetAvatarView.homeScreenStyleDidChange()();
}

@end