@interface RestrictedConversationChecker
- (void)conversationManager:(id)manager migratingFromConversation:(id)conversation toConversation:(id)toConversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
@end

@implementation RestrictedConversationChecker

- (void)conversationManager:(id)manager migratingFromConversation:(id)conversation toConversation:(id)toConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  toConversationCopy = toConversation;
  selfCopy = self;
  RestrictedConversationChecker.conversationManager(_:migratingFrom:to:)();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  RestrictedConversationChecker.conversationManager(_:removedActiveConversation:)(selfCopy, conversationCopy);
}

@end