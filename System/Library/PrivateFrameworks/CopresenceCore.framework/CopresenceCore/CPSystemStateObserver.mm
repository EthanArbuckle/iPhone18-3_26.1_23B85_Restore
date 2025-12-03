@interface CPSystemStateObserver
- (CPSystemStateObserver)init;
- (void)addObserver:(id)observer withQueue:(id)queue;
- (void)audioPolicyManager:(id)manager sharePlayAllowedStateChanged:(BOOL)changed;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager screeningChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
@end

@implementation CPSystemStateObserver

- (void)audioPolicyManager:(id)manager sharePlayAllowedStateChanged:(BOOL)changed
{
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CPSystemStateObserver.audioPolicyManager(_:sharePlayAllowedStateChanged:)(changed);
  swift_unknownObjectRelease();
}

- (void)addObserver:(id)observer withQueue:(id)queue
{
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xE0);
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  v9 = v7();
  (*(*v9 + 160))(observer, queueCopy);

  swift_unknownObjectRelease();
}

- (CPSystemStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager screeningChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  specialized CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(conversationCopy, closure #1 in CPSystemStateObserver.conversationManager(_:screeningChangedFor:));
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  specialized CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(conversationCopy, closure #1 in CPSystemStateObserver.conversationManager(_:stateChangedFor:));
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  specialized CPSystemStateObserver.conversationManager(_:removedActiveConversation:)(conversationCopy);
}

@end