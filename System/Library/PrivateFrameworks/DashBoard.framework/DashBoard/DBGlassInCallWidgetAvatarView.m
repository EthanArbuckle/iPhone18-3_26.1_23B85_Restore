@interface DBGlassInCallWidgetAvatarView
- (TUCall)currentCall;
- (void)homeScreenStyleDidChange;
- (void)layoutSubviews;
- (void)setCurrentCall:(id)a3;
- (void)updateEffectsWithIsFocused:(BOOL)a3 isTapped:(BOOL)a4 isPressed:(BOOL)a5;
- (void)userInterfaceIdiomDidChange;
@end

@implementation DBGlassInCallWidgetAvatarView

- (TUCall)currentCall
{
  v3 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setCurrentCall:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_248337CC8();
}

- (void)layoutSubviews
{
  v2 = self;
  DBGlassInCallWidgetAvatarView.layoutSubviews()();
}

- (void)updateEffectsWithIsFocused:(BOOL)a3 isTapped:(BOOL)a4 isPressed:(BOOL)a5
{
  v12 = self;
  DBDashboardEffectCoordinatingButton.updateEffects(isFocused:isTapped:isPressed:)(a3, a4, a5);
  v8 = *(&v12->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView);
  v9 = (*((*MEMORY[0x277D85000] & v12->super.super.super.super.super.super.isa) + 0x88))();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isHidden];
  }

  else
  {
    v11 = 1;
  }

  [v8 setHidden_];
}

- (void)userInterfaceIdiomDidChange
{
  v2 = self;
  DBGlassInCallWidgetAvatarView.userInterfaceIdiomDidChange()();
}

- (void)homeScreenStyleDidChange
{
  v2 = self;
  DBGlassInCallWidgetAvatarView.homeScreenStyleDidChange()();
}

@end