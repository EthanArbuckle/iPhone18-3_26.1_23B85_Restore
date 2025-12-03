@interface ActivityFeedLeaderboardAvatarsSubview
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation ActivityFeedLeaderboardAvatarsSubview

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24E1A67C8();
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
  sub_24E1A697C();
}

- (void)didTap
{
  selfCopy = self;
  sub_24E1A7C24();
}

@end