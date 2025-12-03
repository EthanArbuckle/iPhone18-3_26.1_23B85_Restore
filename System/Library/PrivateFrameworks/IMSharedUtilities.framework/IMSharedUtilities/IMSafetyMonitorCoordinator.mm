@interface IMSafetyMonitorCoordinator
+ (id)sharedCoordinator;
- (BOOL)shouldDisallowBasedOnRegulatoryDomain;
- (BOOL)shouldDropIncomingCheckInMessageWithURL:(id)l senderHandle:(id)handle isFromMe:(BOOL)me;
- (NSDictionary)appPayload;
- (NSString)appPayloadID;
- (int64_t)notificationContentForInitiator:(id)initiator messageURL:(id)l content:(id)content;
- (void)checkPreferredHandlesCacheForInitiatorHandleID:(id)d andReceiver:(id)receiver completion:(id)completion;
- (void)checkPreferredHandlesCacheForReceiverWith:(id)with completion:(id)completion;
- (void)informKnownSenderSentMessage:(id)message;
- (void)informOfCancelledScheduledMessageSendWithMessageGUID:(id)d sentSuccessfully:(BOOL)successfully error:(id)error;
- (void)informOfChangedGroupDisplayName:(id)name;
- (void)informOfChangedGroupMembership:(id)membership;
- (void)informOfChangedGroupPhoto:(id)photo;
- (void)informOfDeletedConversationWithReceiverHandles:(id)handles;
- (void)informOfDeletedMessagesWithMessages:(id)messages;
- (void)informOfIncomingMessageWithMessage:(id)message;
- (void)informOfKickFromGroup:(id)group;
- (void)informOfOutgoingMessageWithMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error;
- (void)informOfScheduledMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error;
- (void)informOfSentScheduledMessage:(id)message;
- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier completion:(id)completion;
- (void)shouldShowKeyboardSuggestionForInitiator:(id)initiator andReceiver:(id)receiver completion:(id)completion;
- (void)shouldShowTipKitSuggestionForInitiator:(id)initiator andReceiver:(id)receiver completion:(id)completion;
@end

@implementation IMSafetyMonitorCoordinator

+ (id)sharedCoordinator
{
  if (qword_1ED8C97B8 != -1)
  {
    sub_1A88C3600();
  }

  v3 = qword_1ED8C97B0;

  return v3;
}

- (NSString)appPayloadID
{
  v2 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  appPayloadID = [v2 appPayloadID];

  return appPayloadID;
}

- (NSDictionary)appPayload
{
  v2 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  appPayload = [v2 appPayload];

  return appPayload;
}

- (BOOL)shouldDropIncomingCheckInMessageWithURL:(id)l senderHandle:(id)handle isFromMe:(BOOL)me
{
  meCopy = me;
  handleCopy = handle;
  lCopy = l;
  v9 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  LOBYTE(meCopy) = [v9 shouldDropIncomingCheckInMessageWithURL:lCopy senderHandle:handleCopy isFromMe:meCopy];

  return meCopy;
}

- (void)informOfOutgoingMessageWithMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  errorCopy = error;
  messageCopy = message;
  v9 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v9 informOfOutgoingMessageWithMessage:messageCopy sentSuccessfully:successfullyCopy error:errorCopy];
}

- (void)informOfIncomingMessageWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfIncomingMessageWithMessage:messageCopy];
}

- (void)informOfDeletedMessagesWithMessages:(id)messages
{
  messagesCopy = messages;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfDeletedMessagesWithMessages:messagesCopy];
}

- (void)informOfDeletedConversationWithReceiverHandles:(id)handles
{
  handlesCopy = handles;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfDeletedConversationWithReceiverHandles:handlesCopy];
}

- (void)informOfScheduledMessage:(id)message sentSuccessfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  errorCopy = error;
  messageCopy = message;
  v9 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v9 informOfScheduledMessageSendWithMessage:messageCopy sentSuccessfully:successfullyCopy error:errorCopy];
}

- (void)informOfCancelledScheduledMessageSendWithMessageGUID:(id)d sentSuccessfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  errorCopy = error;
  dCopy = d;
  v9 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v9 informOfCancelledScheduledMessageSendWithMessageGUID:dCopy sentSuccessfully:successfullyCopy error:errorCopy];
}

- (void)informOfSentScheduledMessage:(id)message
{
  messageCopy = message;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfTriggeredScheduledMessageSendWithMessage:messageCopy];
}

- (void)informOfChangedGroupMembership:(id)membership
{
  membershipCopy = membership;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfChangedGroupMembershipWithGroupID:membershipCopy];
}

- (void)informOfKickFromGroup:(id)group
{
  groupCopy = group;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfKickFromGroupWithGroupID:groupCopy];
}

- (void)informOfChangedGroupDisplayName:(id)name
{
  nameCopy = name;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfChangedGroupDisplayNameWithGroupID:nameCopy];
}

- (void)informOfChangedGroupPhoto:(id)photo
{
  photoCopy = photo;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informOfChangedGroupPhotoWithGroupID:photoCopy];
}

- (void)informKnownSenderSentMessage:(id)message
{
  messageCopy = message;
  v4 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v4 informKnownSenderSentMessageWithMessage:messageCopy];
}

- (void)checkPreferredHandlesCacheForReceiverWith:(id)with completion:(id)completion
{
  completionCopy = completion;
  withCopy = with;
  v7 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v7 checkPreferredHandlesCacheForReceiverWith:withCopy completion:completionCopy];
}

- (void)checkPreferredHandlesCacheForInitiatorHandleID:(id)d andReceiver:(id)receiver completion:(id)completion
{
  completionCopy = completion;
  receiverCopy = receiver;
  dCopy = d;
  v10 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v10 checkPreferredHandlesCacheForInitiatorHandleID:dCopy andReceiver:receiverCopy completion:completionCopy];
}

- (void)shouldShowKeyboardSuggestionForInitiator:(id)initiator andReceiver:(id)receiver completion:(id)completion
{
  completionCopy = completion;
  receiverCopy = receiver;
  initiatorCopy = initiator;
  v10 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v10 shouldShowKeyboardSuggestionForInitiator:initiatorCopy andReceiver:receiverCopy completion:completionCopy];
}

- (void)shouldShowTipKitSuggestionForInitiator:(id)initiator andReceiver:(id)receiver completion:(id)completion
{
  completionCopy = completion;
  receiverCopy = receiver;
  initiatorCopy = initiator;
  v10 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v10 shouldShowTipKitSuggestionForInitiator:initiatorCopy andReceiver:receiverCopy completion:completionCopy];
}

- (int64_t)notificationContentForInitiator:(id)initiator messageURL:(id)l content:(id)content
{
  contentCopy = content;
  lCopy = l;
  initiatorCopy = initiator;
  v10 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  v11 = [v10 notificationContentForInitiator:initiatorCopy messageURL:lCopy content:contentCopy];

  return v11;
}

- (BOOL)shouldDisallowBasedOnRegulatoryDomain
{
  v2 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  shouldDisallowBasedOnRegulatoryDomain = [v2 shouldDisallowBasedOnRegulatoryDomain];

  return shouldDisallowBasedOnRegulatoryDomain;
}

- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier completion:(id)completion
{
  completionCopy = completion;
  actionIdentifierCopy = actionIdentifier;
  sessionIdentifierCopy = sessionIdentifier;
  identifierCopy = identifier;
  v13 = +[IMSafetyMonitorCoordinator_Impl sharedCoordinator];
  [v13 respondToNotificationWithIdentifier:identifierCopy sessionIdentifier:sessionIdentifierCopy actionIdentifier:actionIdentifierCopy completion:completionCopy];
}

@end