@interface CallsSearchManager
- (_TtC16CallsAppServices18CallsSearchManager)init;
- (uint64_t)recentsController:(void *)a3 didChangeUnreadCallCount:;
@end

@implementation CallsSearchManager

- (_TtC16CallsAppServices18CallsSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)recentsController:(void *)a3 didChangeUnreadCallCount:
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 recentCalls];
  if (v6)
  {
    v7 = v6;
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