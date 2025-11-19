@interface GameCenterFriendPlayerView
- (_TtC12GameCenterUI26GameCenterFriendPlayerView)initWithHandle:(id)a3 player:(id)a4;
@end

@implementation GameCenterFriendPlayerView

- (_TtC12GameCenterUI26GameCenterFriendPlayerView)initWithHandle:(id)a3 player:(id)a4
{
  if (a3)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return GameCenterFriendPlayerView.init(handle:player:)(v5, v7, a4);
}

@end