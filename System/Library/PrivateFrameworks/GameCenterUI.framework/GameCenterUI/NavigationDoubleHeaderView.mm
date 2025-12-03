@interface NavigationDoubleHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)titleAlpha;
- (void)layoutSubviews;
- (void)setTitleAlpha:(double)alpha;
@end

@implementation NavigationDoubleHeaderView

- (double)titleAlpha
{
  selfCopy = self;
  NavigationDoubleHeaderView.titleAlpha.getter();
  v4 = v3;

  return v4;
}

- (void)setTitleAlpha:(double)alpha
{
  selfCopy = self;
  NavigationDoubleHeaderView.titleAlpha.setter(alpha);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = NavigationDoubleHeaderView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  NavigationDoubleHeaderView.layoutSubviews()();
}

@end