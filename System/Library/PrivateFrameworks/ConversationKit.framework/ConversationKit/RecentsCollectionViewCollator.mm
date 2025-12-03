@interface RecentsCollectionViewCollator
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager didChangeActivatedLinks:(id)links;
- (void)conversationManager:(id)manager linkChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
@end

@implementation RecentsCollectionViewCollator

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  RecentsCollectionViewCollator.conversationManager(_:addedActiveConversation:)();
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  RecentsCollectionViewCollator.conversationManager(_:stateChangedFor:)();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  RecentsCollectionViewCollator.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)manager didChangeActivatedLinks:(id)links
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  RecentsCollectionViewCollator.conversationManager(_:didChangeActivatedLinks:)(selfCopy, v6);
}

- (void)conversationManager:(id)manager linkChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  RecentsCollectionViewCollator.conversationManager(_:linkChangedFor:)();
}

@end