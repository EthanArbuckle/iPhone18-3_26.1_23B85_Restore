@interface PlaceholderCallCenter
- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
@end

@implementation PlaceholderCallCenter

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PlaceholderCallCenter.conversationManager(_:stateChangedFor:)();
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PlaceholderCallCenter.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PlaceholderCallCenter.conversationManager(_:avModeChangedFor:)();
}

@end