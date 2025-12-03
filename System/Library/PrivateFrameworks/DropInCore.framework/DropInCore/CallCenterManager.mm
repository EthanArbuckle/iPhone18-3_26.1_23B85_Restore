@interface CallCenterManager
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager updatedIncomingPendingConversations:(id)conversations;
- (void)serverDisconnectedForConversationManager:(id)manager;
@end

@implementation CallCenterManager

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_249E74D84(selfCopy, conversationCopy);
}

- (void)conversationManager:(id)manager updatedIncomingPendingConversations:(id)conversations
{
  sub_249DF691C(0, &qword_27EF238C0, 0x277D6EE60);
  v6 = sub_249E7ABE8();
  managerCopy = manager;
  selfCopy = self;
  sub_249E750C8(selfCopy, v6);
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_249E75284();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_249E7595C();
}

- (void)serverDisconnectedForConversationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_249E75D1C(managerCopy);
}

@end