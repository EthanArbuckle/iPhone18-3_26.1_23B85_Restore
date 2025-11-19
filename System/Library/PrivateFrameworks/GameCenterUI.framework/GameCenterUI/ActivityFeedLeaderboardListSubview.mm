@interface ActivityFeedLeaderboardListSubview
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation ActivityFeedLeaderboardListSubview

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24E21DB90();
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
  sub_24E21DD08();
}

- (void)didTap
{
  v2 = self;
  sub_24E21EE18();
}

@end