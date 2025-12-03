@interface ActivityFeedLoadMoreView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ActivityFeedLoadMoreView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24E0A9D8C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E0A9E24();
}

@end