@interface CCUIGameModeControlsView
- (BOOL)performPrimaryActionForControlTemplateView:(id)view;
- (CCUIGameModeControlsView)initWithCoder:(id)coder;
- (CCUIGameModeControlsView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider)gameModeActivityDataProvider;
- (void)setGameModeActivityDataProvider:(id)provider;
@end

@implementation CCUIGameModeControlsView

- (CCUIGameModeControlsView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider) = 0;
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___CCUIGameModeControlsView_preferredFrame);
  v3 = *(&self->super._cachedTraitCollection + OBJC_IVAR___CCUIGameModeControlsView_preferredFrame);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider)gameModeActivityDataProvider
{
  v3 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setGameModeActivityDataProvider:(id)provider
{
  v5 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = provider;
  providerCopy = provider;
}

- (CCUIGameModeControlsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)performPrimaryActionForControlTemplateView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = GameModeControlsView.performPrimaryAction(for:)();

  return self & 1;
}

@end