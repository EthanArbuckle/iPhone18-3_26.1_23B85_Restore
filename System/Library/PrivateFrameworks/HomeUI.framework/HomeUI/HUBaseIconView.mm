@interface HUBaseIconView
- (CGSize)intrinsicContentSize;
- (HUBaseIconViewConfiguration)configuration;
- (HUBaseIconViewDelegate)delegate;
- (void)prepareForTransitionToTargetViewState:(int64_t)state;
- (void)setConfiguration:(id)configuration;
- (void)startTransitionToTargetViewState:(int64_t)state;
- (void)updateConstraints;
@end

@implementation HUBaseIconView

- (HUBaseIconViewConfiguration)configuration
{
  selfCopy = self;
  v3 = BaseIconView.__configuration.getter();

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  BaseIconView.__configuration.setter(configuration);
}

- (HUBaseIconViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_20D0782B0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_20D078E54();
}

- (void)startTransitionToTargetViewState:(int64_t)state
{
  selfCopy = self;
  BaseIconView.startTransition(targetAppearance:)(state);
}

- (void)prepareForTransitionToTargetViewState:(int64_t)state
{
  selfCopy = self;
  BaseIconView.prepareForTransition(targetAppearance:)(state);
}

@end