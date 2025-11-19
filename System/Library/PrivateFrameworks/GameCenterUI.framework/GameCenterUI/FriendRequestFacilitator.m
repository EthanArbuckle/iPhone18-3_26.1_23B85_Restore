@interface FriendRequestFacilitator
+ (void)makeViewControllerForRemoteInviteWithRecipients:(id)a3 chatGUID:(id)a4 resultHandler:(id)a5;
+ (void)makeViewControllerWithRecipients:(NSArray *)a3 chatGUID:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation FriendRequestFacilitator

+ (void)makeViewControllerWithRecipients:(NSArray *)a3 chatGUID:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  sub_24E23D738(&unk_24E3870E8, v9);
}

+ (void)makeViewControllerForRemoteInviteWithRecipients:(id)a3 chatGUID:(id)a4 resultHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_24DF88A8C(0, &qword_27F1E2F40);
  v7 = sub_24E347F08();
  if (a4)
  {
    v8 = sub_24E347CF8();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  swift_getObjCClassMetadata();
  static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(v7, v8, a4, sub_24E241950, v10);
}

@end