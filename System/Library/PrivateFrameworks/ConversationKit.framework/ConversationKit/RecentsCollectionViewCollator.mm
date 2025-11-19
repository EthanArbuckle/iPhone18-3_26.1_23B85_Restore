@interface RecentsCollectionViewCollator
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 didChangeActivatedLinks:(id)a4;
- (void)conversationManager:(id)a3 linkChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
@end

@implementation RecentsCollectionViewCollator

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RecentsCollectionViewCollator.conversationManager(_:addedActiveConversation:)();
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RecentsCollectionViewCollator.conversationManager(_:stateChangedFor:)();
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RecentsCollectionViewCollator.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)a3 didChangeActivatedLinks:(id)a4
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  RecentsCollectionViewCollator.conversationManager(_:didChangeActivatedLinks:)(v8, v6);
}

- (void)conversationManager:(id)a3 linkChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RecentsCollectionViewCollator.conversationManager(_:linkChangedFor:)();
}

@end