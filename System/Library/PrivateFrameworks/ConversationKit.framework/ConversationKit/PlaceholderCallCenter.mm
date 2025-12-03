@interface PlaceholderCallCenter
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
@end

@implementation PlaceholderCallCenter

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  PlaceholderCallCenter.conversationManager(_:stateChangedFor:)();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  PlaceholderCallCenter.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  PlaceholderCallCenter.conversationManager(_:avModeChangedFor:)();
}

@end