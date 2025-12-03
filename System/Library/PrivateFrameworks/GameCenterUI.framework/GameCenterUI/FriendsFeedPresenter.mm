@interface FriendsFeedPresenter
- (_TtC12GameCenterUI20FriendsFeedPresenter)initWithPlayerId:(id)id;
- (void)loadMoreActivityFeedWithContinuationToken:(id)token;
- (void)updateSnapshot;
@end

@implementation FriendsFeedPresenter

- (void)updateSnapshot
{
  selfCopy = self;
  sub_24E063D54();
}

- (void)loadMoreActivityFeedWithContinuationToken:(id)token
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24E064158();
}

- (_TtC12GameCenterUI20FriendsFeedPresenter)initWithPlayerId:(id)id
{
  if (id)
  {
    sub_24E347CF8();
  }

  sub_24E064234();
}

@end