@interface AchievementHighlightCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (UILabel)accessibilitySubtitleLabel;
- (UILabel)accessibilityTitleLabel;
- (void)layoutSubviews;
@end

@implementation AchievementHighlightCollectionViewCell

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = AchievementHighlightCollectionViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  AchievementHighlightCollectionViewCell.layoutSubviews()();
}

- (UILabel)accessibilityTitleLabel
{
  v2 = sub_24E193AE0();

  return v2;
}

- (UILabel)accessibilitySubtitleLabel
{
  v2 = sub_24E193B20();

  return v2;
}

@end