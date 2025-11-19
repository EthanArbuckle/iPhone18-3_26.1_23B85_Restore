@interface ConversationTimer
- (_TtC10DropInCore17ConversationTimer)initWithInterval:(double)a3 queue:(id)a4 identifier:(id)a5 label:(id)a6 handler:(id)a7;
@end

@implementation ConversationTimer

- (_TtC10DropInCore17ConversationTimer)initWithInterval:(double)a3 queue:(id)a4 identifier:(id)a5 label:(id)a6 handler:(id)a7
{
  v9 = sub_249E7A628();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  _Block_copy(a7);
  sub_249E7A608();
  sub_249E7AAA8();
  swift_allocObject();
  v11 = a4;
  sub_249E3CA4C();
}

@end