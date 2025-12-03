@interface ConversationPublishers
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationsChangedForConversationManager:(id)manager;
@end

@implementation ConversationPublishers

- (void)conversationsChangedForConversationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1000DF6C0(managerCopy);
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  sub_1000E03C4(conversationCopy, oldConversationCopy);
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1000E08A4(conversationCopy);
}

@end