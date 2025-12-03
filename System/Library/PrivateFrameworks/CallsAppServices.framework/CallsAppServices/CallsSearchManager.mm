@interface CallsSearchManager
- (_TtC16CallsAppServices18CallsSearchManager)init;
- (uint64_t)recentsController:(void *)controller didChangeUnreadCallCount:;
@end

@implementation CallsSearchManager

- (_TtC16CallsAppServices18CallsSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)recentsController:(void *)controller didChangeUnreadCallCount:
{
  controllerCopy = controller;
  selfCopy = self;
  recentCalls = [controllerCopy recentCalls];
  if (recentCalls)
  {
    v7 = recentCalls;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v8 = sub_1D33DE8B4();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1D3374460(v8);
}

@end