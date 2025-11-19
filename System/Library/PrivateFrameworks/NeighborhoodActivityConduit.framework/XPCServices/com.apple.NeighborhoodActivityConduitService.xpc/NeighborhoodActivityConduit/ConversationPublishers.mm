@interface ConversationPublishers
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)conversationsChangedForConversationManager:(id)a3;
@end

@implementation ConversationPublishers

- (void)conversationsChangedForConversationManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000DF6C0(v4);
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000E03C4(v9, v10);
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000E08A4(v7);
}

@end