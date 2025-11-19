@interface RestrictedConversationChecker
- (void)conversationManager:(id)a3 migratingFromConversation:(id)a4 toConversation:(id)a5;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
@end

@implementation RestrictedConversationChecker

- (void)conversationManager:(id)a3 migratingFromConversation:(id)a4 toConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RestrictedConversationChecker.conversationManager(_:migratingFrom:to:)();
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RestrictedConversationChecker.conversationManager(_:removedActiveConversation:)(v8, v7);
}

@end