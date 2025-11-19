@interface BannerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation BannerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_21697A93C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_21697A9EC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end