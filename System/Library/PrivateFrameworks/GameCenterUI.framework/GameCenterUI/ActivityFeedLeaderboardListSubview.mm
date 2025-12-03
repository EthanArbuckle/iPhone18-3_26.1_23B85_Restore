@interface ActivityFeedLeaderboardListSubview
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation ActivityFeedLeaderboardListSubview

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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
  selfCopy = self;
  sub_24E21DD08();
}

- (void)didTap
{
  selfCopy = self;
  sub_24E21EE18();
}

@end