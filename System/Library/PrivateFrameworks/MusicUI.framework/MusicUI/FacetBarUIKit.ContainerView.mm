@interface FacetBarUIKit.ContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation FacetBarUIKit.ContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_216C0587C();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_216C0507C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_216C05094();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end