@interface Conversation
- (NSArray)turns;
- (_TtC26DeepThoughtBiomeFoundation12Conversation)init;
- (_TtC26DeepThoughtBiomeFoundation12Conversation)initWithTurns:(id)a3;
@end

@implementation Conversation

- (NSArray)turns
{
  v2 = *(self + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns);
  type metadata accessor for ConversationTurn(0);

  v3 = sub_248731230();

  return v3;
}

- (_TtC26DeepThoughtBiomeFoundation12Conversation)initWithTurns:(id)a3
{
  type metadata accessor for ConversationTurn(0);
  *(self + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns) = sub_248731240();
  v5.receiver = self;
  v5.super_class = type metadata accessor for Conversation();
  return [(Conversation *)&v5 init];
}

- (_TtC26DeepThoughtBiomeFoundation12Conversation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end