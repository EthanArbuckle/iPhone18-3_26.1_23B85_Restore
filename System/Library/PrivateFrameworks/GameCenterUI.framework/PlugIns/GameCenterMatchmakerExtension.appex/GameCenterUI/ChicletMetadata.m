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
- (void)setBadge:(id)a3;
- (void)setBadgeContainer:(id)a3;
- (void)setCaption:(id)a3;
- (void)setRank:(id)a3;
- (void)setStackView:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleToBadgeTrailingConstraint:(id)a3;
- (void)setVibrancyView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ChicletMetadata

- (NSLayoutConstraint)subtitleToBadgeTrailingConstraint
{
  v2 = sub_1000068A8();

  return v2;
}

- (void)setSubtitleToBadgeTrailingConstraint:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100006934(a3);
}

- (UILabel)rank
{
  v2 = sub_100006974();

  return v2;
}

- (void)setRank:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000069DC();
}

- (UILabel)caption
{
  v2 = sub_100006A54();

  return v2;
}

- (void)setCaption:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006ABC();
}

- (UILabel)subtitle
{
  v2 = sub_100006B34();

  return v2;
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006B9C();
}

- (UILabel)badge
{
  v2 = sub_100006C14();

  return v2;
}

- (void)setBadge:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006C7C();
}

- (UIView)badgeContainer
{
  v2 = sub_100006CF4();

  return v2;
}

- (void)setBadgeContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006D5C();
}

- (UIStackView)stackView
{
  v2 = sub_100006DD4();

  return v2;
}

- (void)setStackView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006E3C();
}

- (UIVisualEffectView)vibrancyView
{
  v2 = sub_100006EB4();

  return v2;
}

- (void)setVibrancyView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100006F40(a3);
}

- (void)awakeFromNib
{
  v2 = self;
  sub_100006F4C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000071D8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000073A0(a3);
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