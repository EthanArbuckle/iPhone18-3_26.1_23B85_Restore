@interface CPSystemStateObserver
- (CPSystemStateObserver)init;
- (void)addObserver:(id)a3 withQueue:(id)a4;
- (void)audioPolicyManager:(id)a3 sharePlayAllowedStateChanged:(BOOL)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 screeningChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
@end

@implementation CPSystemStateObserver

- (void)audioPolicyManager:(id)a3 sharePlayAllowedStateChanged:(BOOL)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  specialized CPSystemStateObserver.audioPolicyManager(_:sharePlayAllowedStateChanged:)(a4);
  swift_unknownObjectRelease();
}

- (void)addObserver:(id)a3 withQueue:(id)a4
{
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xE0);
  swift_unknownObjectRetain();
  v8 = a4;
  v10 = self;
  v9 = v7();
  (*(*v9 + 160))(a3, v8);

  swift_unknownObjectRelease();
}

- (CPSystemStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)a3 screeningChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(v7, closure #1 in CPSystemStateObserver.conversationManager(_:screeningChangedFor:));
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(v7, closure #1 in CPSystemStateObserver.conversationManager(_:stateChangedFor:));
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CPSystemStateObserver.conversationManager(_:removedActiveConversation:)(v7);
}

@end