@interface InlineBubbleTipView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation InlineBubbleTipView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_2167C7BF0();
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
  selfCopy = self;
  sub_2167C7CA0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end