@interface HUBaseIconView
- (CGSize)intrinsicContentSize;
- (HUBaseIconViewConfiguration)configuration;
- (HUBaseIconViewDelegate)delegate;
- (void)prepareForTransitionToTargetViewState:(int64_t)a3;
- (void)setConfiguration:(id)a3;
- (void)startTransitionToTargetViewState:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation HUBaseIconView

- (HUBaseIconViewConfiguration)configuration
{
  v2 = self;
  v3 = BaseIconView.__configuration.getter();

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  v6 = self;
  BaseIconView.__configuration.setter(a3);
}

- (HUBaseIconViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v2 = self;
  sub_20D078E54();
}

- (void)startTransitionToTargetViewState:(int64_t)a3
{
  v4 = self;
  BaseIconView.startTransition(targetAppearance:)(a3);
}

- (void)prepareForTransitionToTargetViewState:(int64_t)a3
{
  v4 = self;
  BaseIconView.prepareForTransition(targetAppearance:)(a3);
}

@end