@interface ProfileAvatarView
- (UIView)accessibilityRoundedEditButton;
- (UIVisualEffectView)accessibilityProfileEditButtonBackground;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityProfileEditLabel;
- (void)didTap;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProfileAvatarView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E014600();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E014A68(change);
}

- (void)didTap
{
  selfCopy = self;
  sub_24E014B2C();
}

- (UIVisualEffectView)accessibilityProfileEditButtonBackground
{
  v2 = sub_24E014DE0();

  return v2;
}

- (UIView)accessibilityRoundedEditButton
{
  v2 = sub_24E014E20();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityProfileEditLabel
{
  v2 = sub_24E014E60();

  return v2;
}

@end