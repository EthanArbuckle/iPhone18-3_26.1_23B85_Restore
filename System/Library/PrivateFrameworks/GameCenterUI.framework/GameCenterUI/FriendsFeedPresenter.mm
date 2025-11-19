@interface FriendsFeedPresenter
- (_TtC12GameCenterUI20FriendsFeedPresenter)initWithPlayerId:(id)a3;
- (void)loadMoreActivityFeedWithContinuationToken:(id)a3;
- (void)updateSnapshot;
@end

@implementation FriendsFeedPresenter

- (void)updateSnapshot
{
  v2 = self;
  sub_24E063D54();
}

- (void)loadMoreActivityFeedWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E064158();
}

- (_TtC12GameCenterUI20FriendsFeedPresenter)initWithPlayerId:(id)a3
{
  if (a3)
  {
    sub_24E347CF8();
  }

  sub_24E064234();
}

@end