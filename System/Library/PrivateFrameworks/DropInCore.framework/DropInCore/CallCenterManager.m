@interface CallCenterManager
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 updatedIncomingPendingConversations:(id)a4;
- (void)serverDisconnectedForConversationManager:(id)a3;
@end

@implementation CallCenterManager

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E74D84(v8, v7);
}

- (void)conversationManager:(id)a3 updatedIncomingPendingConversations:(id)a4
{
  sub_249DF691C(0, &qword_27EF238C0, 0x277D6EE60);
  v6 = sub_249E7ABE8();
  v7 = a3;
  v8 = self;
  sub_249E750C8(v8, v6);
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E75284();
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E7595C();
}

- (void)serverDisconnectedForConversationManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249E75D1C(v4);
}

@end