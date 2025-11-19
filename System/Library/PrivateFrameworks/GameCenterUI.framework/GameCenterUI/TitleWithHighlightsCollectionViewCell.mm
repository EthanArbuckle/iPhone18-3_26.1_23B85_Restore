@interface TitleWithHighlightsCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation TitleWithHighlightsCollectionViewCell

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = TitleWithHighlightsCollectionViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  TitleWithHighlightsCollectionViewCell.layoutSubviews()();
}

@end