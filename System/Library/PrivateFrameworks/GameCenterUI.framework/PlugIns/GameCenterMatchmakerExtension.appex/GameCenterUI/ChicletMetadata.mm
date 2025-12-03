@interface ChicletMetadata
- (NSLayoutConstraint)subtitleToBadgeTrailingConstraint;
- (UILabel)accessibilityChicletCaption;
- (UILabel)accessibilityChicletRank;
- (UILabel)accessibilityChicletSubtitle;
- (UILabel)badge;
- (UILabel)caption;
- (UILabel)rank;
- (UILabel)subtitle;
- (UIStackView)stackView;
- (UIView)badgeContainer;
- (UIVisualEffectView)vibrancyView;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setBadge:(id)badge;
- (void)setBadgeContainer:(id)container;
- (void)setCaption:(id)caption;
- (void)setRank:(id)rank;
- (void)setStackView:(id)view;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleToBadgeTrailingConstraint:(id)constraint;
- (void)setVibrancyView:(id)view;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ChicletMetadata

- (NSLayoutConstraint)subtitleToBadgeTrailingConstraint
{
  v2 = sub_1000068A8();

  return v2;
}

- (void)setSubtitleToBadgeTrailingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_100006934(constraint);
}

- (UILabel)rank
{
  v2 = sub_100006974();

  return v2;
}

- (void)setRank:(id)rank
{
  rankCopy = rank;
  selfCopy = self;
  sub_1000069DC();
}

- (UILabel)caption
{
  v2 = sub_100006A54();

  return v2;
}

- (void)setCaption:(id)caption
{
  captionCopy = caption;
  selfCopy = self;
  sub_100006ABC();
}

- (UILabel)subtitle
{
  v2 = sub_100006B34();

  return v2;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  selfCopy = self;
  sub_100006B9C();
}

- (UILabel)badge
{
  v2 = sub_100006C14();

  return v2;
}

- (void)setBadge:(id)badge
{
  badgeCopy = badge;
  selfCopy = self;
  sub_100006C7C();
}

- (UIView)badgeContainer
{
  v2 = sub_100006CF4();

  return v2;
}

- (void)setBadgeContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_100006D5C();
}

- (UIStackView)stackView
{
  v2 = sub_100006DD4();

  return v2;
}

- (void)setStackView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100006E3C();
}

- (UIVisualEffectView)vibrancyView
{
  v2 = sub_100006EB4();

  return v2;
}

- (void)setVibrancyView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100006F40(view);
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_100006F4C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000071D8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000073A0(change);
}

- (UILabel)accessibilityChicletRank
{
  v2 = sub_100008340();

  return v2;
}

- (UILabel)accessibilityChicletCaption
{
  v2 = sub_100008380();

  return v2;
}

- (UILabel)accessibilityChicletSubtitle
{
  v2 = sub_1000083C0();

  return v2;
}

@end