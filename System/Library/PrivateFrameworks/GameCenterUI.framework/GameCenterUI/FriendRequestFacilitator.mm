@interface FriendRequestFacilitator
+ (void)makeViewControllerForRemoteInviteWithRecipients:(id)recipients chatGUID:(id)d resultHandler:(id)handler;
+ (void)makeViewControllerWithRecipients:(NSArray *)recipients chatGUID:(NSString *)d completionHandler:(id)handler;
@end

@implementation FriendRequestFacilitator

+ (void)makeViewControllerWithRecipients:(NSArray *)recipients chatGUID:(NSString *)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = recipients;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  recipientsCopy = recipients;
  dCopy = d;

  sub_24E23D738(&unk_24E3870E8, v9);
}

+ (void)makeViewControllerForRemoteInviteWithRecipients:(id)recipients chatGUID:(id)d resultHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_24DF88A8C(0, &qword_27F1E2F40);
  v7 = sub_24E347F08();
  if (d)
  {
    v8 = sub_24E347CF8();
    d = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  swift_getObjCClassMetadata();
  static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(v7, v8, d, sub_24E241950, v10);
}

@end