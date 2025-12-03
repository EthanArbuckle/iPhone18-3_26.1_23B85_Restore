@interface GKFriendingViewControllers
+ (id)inviteFriendsWithContainerViewController:(id)controller;
@end

@implementation GKFriendingViewControllers

+ (id)inviteFriendsWithContainerViewController:(id)controller
{
  swift_getObjCClassMetadata();
  controllerCopy = controller;
  v5 = static FriendingViewControllers.inviteFriends(containedIn:)(controllerCopy);

  return v5;
}

@end