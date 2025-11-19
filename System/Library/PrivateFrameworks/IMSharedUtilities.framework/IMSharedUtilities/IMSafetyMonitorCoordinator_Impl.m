@interface IMSafetyMonitorCoordinator_Impl
+ (IMSafetyMonitorCoordinator_Impl)sharedCoordinator;
- (BOOL)shouldDisallowBasedOnRegulatoryDomain;
- (BOOL)shouldDropIncomingCheckInMessageWithURL:(id)a3 senderHandle:(id)a4 isFromMe:(BOOL)a5;
- (IMSafetyMonitorCoordinator_Impl)init;
- (NSDictionary)appPayload;
- (NSString)appPayloadID;
- (void)checkPreferredHandlesCacheForInitiatorHandleID:(id)a3 andReceiver:(id)a4 completion:(id)a5;
- (void)checkPreferredHandlesCacheForReceiverWith:(id)a3 completion:(id)a4;
- (void)informKnownSenderSentMessageWithMessage:(void *)a3;
- (void)informOfCancelledScheduledMessageSendWithMessageGUID:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5;
- (void)informOfDeletedConversationWithReceiverHandles:(id)a3;
- (void)informOfDeletedMessagesWithMessages:(id)a3;
- (void)informOfOutgoingMessageWithMessage:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5;
- (void)informOfScheduledMessageSendWithMessage:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5;
- (void)informOfTriggeredScheduledMessageSendWithMessage:(id)a3;
- (void)respondToNotificationWithIdentifier:(id)a3 sessionIdentifier:(id)a4 actionIdentifier:(id)a5 completion:(id)a6;
@end

@implementation IMSafetyMonitorCoordinator_Impl

- (void)informKnownSenderSentMessageWithMessage:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_1A87BFACC(v4);
}

+ (IMSafetyMonitorCoordinator_Impl)sharedCoordinator
{
  if (qword_1ED8C8910 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8C8918;

  return v3;
}

- (IMSafetyMonitorCoordinator_Impl)init
{
  *(&self->super.isa + OBJC_IVAR___IMSafetyMonitorCoordinator_Impl_currentBestEstimates) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SafetyMonitorCoordinator();
  v2 = [(IMSafetyMonitorCoordinator_Impl *)&v4 init];
  sub_1A87BEABC();

  return v2;
}

- (NSString)appPayloadID
{
  sub_1A88C82E8();

  MEMORY[0x1AC56ECB0](0x7373654D77654E2ELL, 0xEB00000000656761);

  v2 = sub_1A88C82A8();

  return v2;
}

- (NSDictionary)appPayload
{
  sub_1A8739288(&unk_1F1BA97F8);
  sub_1A85EF638(&unk_1F1BA9818, &qword_1EB305C88);
  v2 = sub_1A88C8188();

  return v2;
}

- (BOOL)shouldDisallowBasedOnRegulatoryDomain
{
  v2 = self;
  v3 = sub_1A87BE768();

  return v3 & 1;
}

- (void)checkPreferredHandlesCacheForReceiverWith:(id)a3 completion:(id)a4
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(a4);
  v10 = sub_1A88C82E8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = sub_1A88C87A8();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = sub_1A87C4AAC;
  v15[8] = v13;
  v16 = self;
  sub_1A873A5E4(0, 0, v8, &unk_1A88EB420, v15);
}

- (void)checkPreferredHandlesCacheForInitiatorHandleID:(id)a3 andReceiver:(id)a4 completion:(id)a5
{
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(a5);
  v11 = sub_1A88C82E8();
  v13 = v12;
  v14 = sub_1A88C82E8();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v18 = sub_1A88C87A8();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = v11;
  v19[6] = v13;
  v19[7] = v14;
  v19[8] = v16;
  v19[9] = sub_1A87C4AAC;
  v19[10] = v17;
  v20 = self;
  sub_1A873A5E4(0, 0, v9, &unk_1A88EB418, v19);
}

- (BOOL)shouldDropIncomingCheckInMessageWithURL:(id)a3 senderHandle:(id)a4 isFromMe:(BOOL)a5
{
  v5 = a5;
  v7 = sub_1A88C72E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  v11 = a4;
  v12 = sub_1A88C7238();
  LOBYTE(v5) = IMShouldDropIncomingCheckInMessage(v12, v11, v5);

  (*(v8 + 8))(v10, v7);
  return v5;
}

- (void)informOfOutgoingMessageWithMessage:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_1A87BFA28(v8, a4, a5);
}

- (void)informOfDeletedMessagesWithMessages:(id)a3
{
  sub_1A85E9718(0, &qword_1ED8C9380);
  v4 = sub_1A88C85F8();
  v5 = self;
  sub_1A87BFE4C(v4);
}

- (void)informOfDeletedConversationWithReceiverHandles:(id)a3
{
  v4 = *(sub_1A88C85F8() + 16);
  v5 = a3;

  if (v4)
  {
    IMInformSafetyMonitorManagerOfDeletedConversation(v5);
  }
}

- (void)informOfScheduledMessageSendWithMessage:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_1A87C0584(v8, a4, a5);
}

- (void)informOfCancelledScheduledMessageSendWithMessageGUID:(id)a3 sentSuccessfully:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v6 = a3;
  if (a5)
  {
    v7 = a5;
    v8 = sub_1A88C7158();
  }

  else
  {
    v8 = 0;
  }

  IMInformSafetyMonitorManagerOfScheduledSendCancelledFor(v6, v5, v8);
}

- (void)informOfTriggeredScheduledMessageSendWithMessage:(id)a3
{
  v4 = a3;
  v12 = self;
  v5 = [v4 balloonBundleID];
  if (!v5)
  {

    v10 = v12;
LABEL_6:

    return;
  }

  v6 = v5;
  v7 = sub_1A88C82E8();
  v9 = v8;

  if (sub_1A87C4280(v7, v9))
  {
    v11 = [v4 guid];
    if (!v11)
    {
      __break(1u);
      return;
    }

    IMInformSafetyMonitorManagerOfScheduledSendTriggeredFor(v11);

    v10 = v11;
    goto LABEL_6;
  }
}

- (void)respondToNotificationWithIdentifier:(id)a3 sessionIdentifier:(id)a4 actionIdentifier:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v15[4] = sub_1A87C4868;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A87C1170;
  v15[3] = &unk_1F1BAFCA8;
  v11 = _Block_copy(v15);
  v12 = a3;
  v13 = a4;
  v14 = a5;

  IMRespondToNotificationWithIdentifier(v12, v13, v14, v11);

  _Block_release(v11);
}

@end