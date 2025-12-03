@interface GKGameCenterFriendPlayerView
+ (id)newWithHandle:(id)handle player:(id)player;
+ (id)newWithRelationshipResult:(id)result;
@end

@implementation GKGameCenterFriendPlayerView

+ (id)newWithHandle:(id)handle player:(id)player
{
  playerCopy = player;
  handleCopy = handle;
  v7 = [[_TtC12GameCenterUI26GameCenterFriendPlayerView alloc] initWithHandle:handleCopy player:playerCopy];

  return v7;
}

+ (id)newWithRelationshipResult:(id)result
{
  resultCopy = result;
  v4 = [[_TtC12GameCenterUI26GameCenterFriendPlayerView alloc] initWithRelationshipResult:resultCopy];

  return v4;
}

@end