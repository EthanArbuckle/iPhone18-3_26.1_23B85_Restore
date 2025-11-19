@interface FMConnectionManager
- (_TtC11FMFindingUI19FMConnectionManager)init;
- (void)dealloc;
@end

@implementation FMConnectionManager

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x98);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for FMConnectionManager();
  [(FMConnectionManager *)&v4 dealloc];
}

- (_TtC11FMFindingUI19FMConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end