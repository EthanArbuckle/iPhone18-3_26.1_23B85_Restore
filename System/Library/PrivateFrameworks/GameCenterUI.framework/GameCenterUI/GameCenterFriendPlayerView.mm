@interface GameCenterFriendPlayerView
- (_TtC12GameCenterUI26GameCenterFriendPlayerView)initWithHandle:(id)handle player:(id)player;
@end

@implementation GameCenterFriendPlayerView

- (_TtC12GameCenterUI26GameCenterFriendPlayerView)initWithHandle:(id)handle player:(id)player
{
  if (handle)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  playerCopy = player;
  return GameCenterFriendPlayerView.init(handle:player:)(v5, v7, player);
}

@end