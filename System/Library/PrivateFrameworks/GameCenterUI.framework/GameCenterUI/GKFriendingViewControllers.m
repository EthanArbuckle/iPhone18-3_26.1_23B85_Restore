@interface GKFriendingViewControllers
+ (id)inviteFriendsWithContainerViewController:(id)a3;
@end

@implementation GKFriendingViewControllers

+ (id)inviteFriendsWithContainerViewController:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static FriendingViewControllers.inviteFriends(containedIn:)(v4);

  return v5;
}

@end