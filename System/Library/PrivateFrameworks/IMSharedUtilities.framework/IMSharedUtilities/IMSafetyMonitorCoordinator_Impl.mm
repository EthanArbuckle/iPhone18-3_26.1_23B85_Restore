@interface IMSafetyMonitorCoordinator_Impl
+ (IMSafetyMonitorCoordinator_Impl)sharedCoordinator;
- (BOOL)shouldDisallowBasedOnRegulatoryDomain;
- (BOOL)shouldDropIncomingCheckInMessageWithURL:(id)l senderHandle:(id)handle isFromMe:(BOOL)me;
- (IMSafetyMonitorCoordinator_Impl)init;
- (NSDictionary)appPayload;
- (NSString)appPayloadID;
- (void)checkPreferredHandlesCacheForInitiatorHandleID:(id)d andReceiver:(id)receiver completion:(id)completion;
- (void)checkPreferredHandlesCacheForReceiverWith:(id)with completion:(id)completion;
- (void)informKnownSenderSentMessageWithMessage:(void *)message;
- (void)informOfCancelledScheduledMessageSendWithMessageGUID:(id)d sentSuccessfully:(BOOL)successfully error:(id)error;
- (void)informOfDeletedConversationWithReceiverHandles:(id)handles;
- (void)informOfDeletedMessagesWithMessages:(id)messages;
- (void)informOfOutgoingMessageWithMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error;
- (void)informOfScheduledMessageSendWithMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error;
- (void)informOfTriggeredScheduledMessageSendWithMessage:(id)message;
- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier completion:(id)completion;
@end

@implementation IMSafetyMonitorCoordinator_Impl

- (void)informKnownSenderSentMessageWithMessage:(void *)message
{
  messageCopy = message;
  selfCopy = self;
  sub_1A87BFACC(messageCopy);
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
  selfCopy = self;
  v3 = sub_1A87BE768();

  return v3 & 1;
}

- (void)checkPreferredHandlesCacheForReceiverWith:(id)with completion:(id)completion
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1A873A5E4(0, 0, v8, &unk_1A88EB420, v15);
}

- (void)checkPreferredHandlesCacheForInitiatorHandleID:(id)d andReceiver:(id)receiver completion:(id)completion
{
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1A873A5E4(0, 0, v9, &unk_1A88EB418, v19);
}

- (BOOL)shouldDropIncomingCheckInMessageWithURL:(id)l senderHandle:(id)handle isFromMe:(BOOL)me
{
  meCopy = me;
  v7 = sub_1A88C72E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  handleCopy = handle;
  v12 = sub_1A88C7238();
  LOBYTE(meCopy) = IMShouldDropIncomingCheckInMessage(v12, handleCopy, meCopy);

  (*(v8 + 8))(v10, v7);
  return meCopy;
}

- (void)informOfOutgoingMessageWithMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  selfCopy = self;
  sub_1A87BFA28(messageCopy, successfully, error);
}

- (void)informOfDeletedMessagesWithMessages:(id)messages
{
  sub_1A85E9718(0, &qword_1ED8C9380);
  v4 = sub_1A88C85F8();
  selfCopy = self;
  sub_1A87BFE4C(v4);
}

- (void)informOfDeletedConversationWithReceiverHandles:(id)handles
{
  v4 = *(sub_1A88C85F8() + 16);
  handlesCopy = handles;

  if (v4)
  {
    IMInformSafetyMonitorManagerOfDeletedConversation(handlesCopy);
  }
}

- (void)informOfScheduledMessageSendWithMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  selfCopy = self;
  sub_1A87C0584(messageCopy, successfully, error);
}

- (void)informOfCancelledScheduledMessageSendWithMessageGUID:(id)d sentSuccessfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  dCopy = d;
  if (error)
  {
    errorCopy = error;
    v8 = sub_1A88C7158();
  }

  else
  {
    v8 = 0;
  }

  IMInformSafetyMonitorManagerOfScheduledSendCancelledFor(dCopy, successfullyCopy, v8);
}

- (void)informOfTriggeredScheduledMessageSendWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  balloonBundleID = [messageCopy balloonBundleID];
  if (!balloonBundleID)
  {

    v10 = selfCopy;
LABEL_6:

    return;
  }

  v6 = balloonBundleID;
  v7 = sub_1A88C82E8();
  v9 = v8;

  if (sub_1A87C4280(v7, v9))
  {
    guid = [messageCopy guid];
    if (!guid)
    {
      __break(1u);
      return;
    }

    IMInformSafetyMonitorManagerOfScheduledSendTriggeredFor(guid);

    v10 = guid;
    goto LABEL_6;
  }
}

- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v15[4] = sub_1A87C4868;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A87C1170;
  v15[3] = &unk_1F1BAFCA8;
  v11 = _Block_copy(v15);
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  actionIdentifierCopy = actionIdentifier;

  IMRespondToNotificationWithIdentifier(identifierCopy, sessionIdentifierCopy, actionIdentifierCopy, v11);

  _Block_release(v11);
}

@end