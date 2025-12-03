@interface FacetBarUIKit.ContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation FacetBarUIKit.ContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_216C0587C();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_216C0507C();
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
  selfCopy = self;
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