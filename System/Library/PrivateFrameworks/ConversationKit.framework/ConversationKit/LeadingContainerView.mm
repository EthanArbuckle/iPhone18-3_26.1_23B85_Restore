@interface LeadingContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)viewForLastBaselineLayout;
@end

@implementation LeadingContainerView

- (UIView)viewForLastBaselineLayout
{
  Baseline = LeadingContainerView.forLastBaselineLayout.getter();

  return Baseline;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v8 = LeadingContainerView.sizeThatFits(_:)(width, height, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end