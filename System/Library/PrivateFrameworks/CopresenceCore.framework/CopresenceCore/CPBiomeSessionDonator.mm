@interface CPBiomeSessionDonator
- (CPBiomeSessionDonator)init;
- (void)conversationManager:(id)a3 conversationChanged:(id)a4;
- (void)conversationManager:(id)a3 removedConversationWithUUID:(id)a4;
@end

@implementation CPBiomeSessionDonator

- (void)conversationManager:(id)a3 conversationChanged:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  specialized BiomeSessionDonator.conversationManager(_:conversationChanged:)(v6);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)a3 removedConversationWithUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(v10, v12, v5);
  swift_beginAccess();
  v13 = self;
  specialized Dictionary.subscript.setter(0, 0, v10);
  swift_endAccess();

  (*(v6 + 8))(v12, v5);
}

- (CPBiomeSessionDonator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end