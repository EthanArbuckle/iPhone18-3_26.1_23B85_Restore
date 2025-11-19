@interface ActivityFeedLeaderboardAvatarsSubview
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation ActivityFeedLeaderboardAvatarsSubview

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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
  v2 = self;
  sub_24E1A697C();
}

- (void)didTap
{
  v2 = self;
  sub_24E1A7C24();
}

@end