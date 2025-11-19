@interface XPCModelRunnerConnectionManager
- (_TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager)init;
@end

@implementation XPCModelRunnerConnectionManager

- (_TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection;
  sub_2480078E4(&qword_27EE83C68, &qword_24803DFA8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(XPCModelRunnerConnectionManager *)&v7 init];
}

@end