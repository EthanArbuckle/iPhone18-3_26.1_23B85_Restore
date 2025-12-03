@interface SessionAccessoryView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation SessionAccessoryView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 40.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(SessionAccessoryView *)selfCopy sizeThatFits:sub_1A2252E94()];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end