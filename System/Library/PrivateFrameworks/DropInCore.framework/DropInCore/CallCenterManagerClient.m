@interface CallCenterManagerClient
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
@end

@implementation CallCenterManagerClient

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E073D4(v6, v7);
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E078D4(v6, v7);
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E08530(v6, v7);
}

@end