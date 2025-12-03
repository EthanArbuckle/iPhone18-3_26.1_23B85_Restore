@interface ConversationTimer
- (_TtC10DropInCore17ConversationTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler;
@end

@implementation ConversationTimer

- (_TtC10DropInCore17ConversationTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler
{
  v9 = sub_249E7A628();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  _Block_copy(handler);
  sub_249E7A608();
  sub_249E7AAA8();
  swift_allocObject();
  queueCopy = queue;
  sub_249E3CA4C();
}

@end