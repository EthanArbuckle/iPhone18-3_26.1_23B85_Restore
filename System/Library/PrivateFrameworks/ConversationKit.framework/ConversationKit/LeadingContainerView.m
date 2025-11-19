@interface LeadingContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIView)viewForLastBaselineLayout;
@end

@implementation LeadingContainerView

- (UIView)viewForLastBaselineLayout
{
  Baseline = LeadingContainerView.forLastBaselineLayout.getter();

  return Baseline;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v8 = LeadingContainerView.sizeThatFits(_:)(width, height, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end