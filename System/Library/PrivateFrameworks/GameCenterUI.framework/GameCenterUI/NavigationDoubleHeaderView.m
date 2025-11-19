@interface NavigationDoubleHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)titleAlpha;
- (void)layoutSubviews;
- (void)setTitleAlpha:(double)a3;
@end

@implementation NavigationDoubleHeaderView

- (double)titleAlpha
{
  v2 = self;
  NavigationDoubleHeaderView.titleAlpha.getter();
  v4 = v3;

  return v4;
}

- (void)setTitleAlpha:(double)a3
{
  v4 = self;
  NavigationDoubleHeaderView.titleAlpha.setter(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = NavigationDoubleHeaderView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  NavigationDoubleHeaderView.layoutSubviews()();
}

@end