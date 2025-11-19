@interface IMDScheduledMessageCoordinator
+ (void)notifyPeersWithScheduledMessageUpdate:(id)a3 scheduleState:(unint64_t)a4;
- (IMDScheduledMessageCoordinator)init;
- (IMDScheduledMessageCoordinator)initWithServiceSession:(id)a3;
- (id)description;
- (id)processMessageForSending:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 allowWatchdog:(BOOL)a6 account:(id)a7;
- (void)didSendMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 forceDate:(id)a7 itemIsComingFromStorage:(BOOL)a8;
- (void)didUpdateChatStatus:(int)a3 chat:(id)a4 style:(unsigned __int8)a5 displayName:(id)a6 groupID:(id)a7 lastAddressedHandle:(id)a8 lastAddressedSIMID:(id)a9 handleInfo:(id)a10 account:(id)a11 category:(int64_t)a12 spamExtensionName:(id)a13 isBlackholed:(BOOL)a14;
- (void)handleMessageDidReplace:(id)a3 newMessage:(id)a4;
- (void)informOfCancelledMessageWithMessageGUID:(id)a3 success:(BOOL)a4 cancelType:(unint64_t)a5 error:(id)a6;
- (void)removeFailedEditsFrom:(id)a3;
- (void)serviceSession:(id)a3 willMoveChatToRecentlyDeleted:(id)a4;
- (void)serviceSession:(id)a3 willRemoveChat:(id)a4;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)timerDidFire;
- (void)updateTimerForTimeInterval:(double)a3;
@end

@implementation IMDScheduledMessageCoordinator

- (IMDScheduledMessageCoordinator)initWithServiceSession:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [objc_opt_self() sharedInstance];
  v8 = [objc_opt_self() sharedInstance];
  v9 = objc_allocWithZone(IMDScheduledMessageCoordinator);
  v10 = sub_22B773558(v5, v6, v7, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)updateTimerForTimeInterval:(double)a3
{
  v4 = self;
  sub_22B773CF8(a3);
}

- (void)informOfCancelledMessageWithMessageGUID:(id)a3 success:(BOOL)a4 cancelType:(unint64_t)a5 error:(id)a6
{
  v10 = sub_22B7DB6A8();
  v12 = v11;
  v14 = a6;
  v13 = self;
  sub_22B77A808(v10, v12, a4, a5);
}

- (void)removeFailedEditsFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B77B67C(v4);
}

- (void)timerDidFire
{
  v2 = self;
  sub_22B775D70();
}

- (id)description
{
  v2 = self;
  sub_22B777350();

  v3 = sub_22B7DB678();

  return v3;
}

- (IMDScheduledMessageCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleMessageDidReplace:(id)a3 newMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B778F38(v6, v7);
}

+ (void)notifyPeersWithScheduledMessageUpdate:(id)a3 scheduleState:(unint64_t)a4
{
  v5 = sub_22B7DB6A8();
  sub_22B77BDB8(v5, v6, a4);
}

- (void)didSendMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 forceDate:(id)a7 itemIsComingFromStorage:(BOOL)a8
{
  v10 = a5;
  v13 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_22B7DB6A8();
  v19 = v18;
  if (a7)
  {
    sub_22B7DA928();
    v20 = sub_22B7DA968();
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
  }

  else
  {
    v21 = sub_22B7DA968();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  }

  v22 = a3;
  v23 = a6;
  v24 = self;
  sub_22B77C7AC(v22, v17, v19, v10);

  sub_22B4D0D64(v16, &unk_27D8CF790, &qword_22B7F9578);
}

- (void)didUpdateChatStatus:(int)a3 chat:(id)a4 style:(unsigned __int8)a5 displayName:(id)a6 groupID:(id)a7 lastAddressedHandle:(id)a8 lastAddressedSIMID:(id)a9 handleInfo:(id)a10 account:(id)a11 category:(int64_t)a12 spamExtensionName:(id)a13 isBlackholed:(BOOL)a14
{
  v17 = sub_22B7DB6A8();
  v19 = v18;
  v20 = a11;
  v21 = self;
  sub_22B77CCA4(a3, v17, v19, a5);
}

- (id)processMessageForSending:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 allowWatchdog:(BOOL)a6 account:(id)a7
{
  v8 = a5;
  v11 = sub_22B7DB6A8();
  v13 = v12;
  v14 = a3;
  v15 = a7;
  v16 = self;
  sub_22B77CF84(v14, v11, v13, v8);
  v18 = v17;

  return v18;
}

- (void)serviceSession:(id)a3 willRemoveChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B77E01C(v7, "%@ Handling chat %@ being removed.");
}

- (void)serviceSession:(id)a3 willMoveChatToRecentlyDeleted:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B77E01C(v7, "%@ Handling chat %@ being moved to recently deleted.");
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v2 = self;
  sub_22B779CC0();
}

@end