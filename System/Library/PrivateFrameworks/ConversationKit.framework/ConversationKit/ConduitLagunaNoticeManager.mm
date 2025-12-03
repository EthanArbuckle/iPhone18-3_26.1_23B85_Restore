@interface ConduitLagunaNoticeManager
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)neighborhoodActivityConduit:(id)conduit splitSessionEnded:(id)ended;
- (void)neighborhoodActivityConduit:(id)conduit splitSessionStarted:(id)started;
- (void)neighborhoodActivityConduit:(id)conduit suggestionUpdated:(id)updated;
@end

@implementation ConduitLagunaNoticeManager

- (void)neighborhoodActivityConduit:(id)conduit splitSessionStarted:(id)started
{
  conduitCopy = conduit;
  startedCopy = started;
  selfCopy = self;
  ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:splitSessionStarted:)();
}

- (void)neighborhoodActivityConduit:(id)conduit splitSessionEnded:(id)ended
{
  conduitCopy = conduit;
  endedCopy = ended;
  selfCopy = self;
  ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:splitSessionEnded:)();
}

- (void)neighborhoodActivityConduit:(id)conduit suggestionUpdated:(id)updated
{
  conduitCopy = conduit;
  updatedCopy = updated;
  selfCopy = self;
  ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:suggestionUpdated:)();
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  ConduitLagunaNoticeManager.conversationManager(_:stateChangedFor:fromOldConversation:)();
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  ConduitLagunaNoticeManager.conversationManager(_:remoteMembersChangedFor:)();
}

@end