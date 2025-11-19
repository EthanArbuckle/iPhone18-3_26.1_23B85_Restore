@interface ConduitLagunaNoticeManager
- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)neighborhoodActivityConduit:(id)a3 splitSessionEnded:(id)a4;
- (void)neighborhoodActivityConduit:(id)a3 splitSessionStarted:(id)a4;
- (void)neighborhoodActivityConduit:(id)a3 suggestionUpdated:(id)a4;
@end

@implementation ConduitLagunaNoticeManager

- (void)neighborhoodActivityConduit:(id)a3 splitSessionStarted:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:splitSessionStarted:)();
}

- (void)neighborhoodActivityConduit:(id)a3 splitSessionEnded:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:splitSessionEnded:)();
}

- (void)neighborhoodActivityConduit:(id)a3 suggestionUpdated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:suggestionUpdated:)();
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  ConduitLagunaNoticeManager.conversationManager(_:stateChangedFor:fromOldConversation:)();
}

- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ConduitLagunaNoticeManager.conversationManager(_:remoteMembersChangedFor:)();
}

@end