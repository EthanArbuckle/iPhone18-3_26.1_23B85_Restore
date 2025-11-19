@interface CloseButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation CloseButton

- (CGSize)intrinsicContentSize
{
  v2 = 29.0;
  v3 = 29.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24E0ACC08();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end