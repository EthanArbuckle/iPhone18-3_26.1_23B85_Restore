@interface ConversationObserver
- (_TtC20CommunicationsUICore20ConversationObserver)init;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
@end

@implementation ConversationObserver

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C2F0A2D8(v7);
}

- (_TtC20CommunicationsUICore20ConversationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end