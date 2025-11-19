@interface GKGameCenterFriendPlayerView
+ (id)newWithHandle:(id)a3 player:(id)a4;
+ (id)newWithRelationshipResult:(id)a3;
@end

@implementation GKGameCenterFriendPlayerView

+ (id)newWithHandle:(id)a3 player:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_TtC12GameCenterUI26GameCenterFriendPlayerView alloc] initWithHandle:v6 player:v5];

  return v7;
}

+ (id)newWithRelationshipResult:(id)a3
{
  v3 = a3;
  v4 = [[_TtC12GameCenterUI26GameCenterFriendPlayerView alloc] initWithRelationshipResult:v3];

  return v4;
}

@end