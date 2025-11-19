@interface GameCenterObjcHelper
+ (void)sendFriendInvitationViaPushWithContactID:(id)a3 contactAssociationID:(id)a4 completionHandler:(id)a5;
@end

@implementation GameCenterObjcHelper

+ (void)sendFriendInvitationViaPushWithContactID:(id)a3 contactAssociationID:(id)a4 completionHandler:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_24E347CF8();
  v8 = v7;
  v9 = sub_24E347CF8();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  static GameCenterObjcHelper.sendFriendInvitationViaPush(contactID:contactAssociationID:completionHandler:)(v6, v8, v9, v11, sub_24E2F9D74, v12);
}

@end