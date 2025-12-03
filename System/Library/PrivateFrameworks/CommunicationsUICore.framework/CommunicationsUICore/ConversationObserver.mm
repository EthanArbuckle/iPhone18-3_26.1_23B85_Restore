@interface ConversationObserver
- (_TtC20CommunicationsUICore20ConversationObserver)init;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
@end

@implementation ConversationObserver

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1C2F0A2D8(conversationCopy);
}

- (_TtC20CommunicationsUICore20ConversationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end