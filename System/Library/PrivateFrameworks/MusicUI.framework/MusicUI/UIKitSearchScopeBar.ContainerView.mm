@interface UIKitSearchScopeBar.ContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation UIKitSearchScopeBar.ContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21694E900();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_21694E280();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_21694E298(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end