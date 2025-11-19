@interface MUPlaceActionDispatcher.CustomAction
- (_TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction)init;
- (void)addHandler:(id)a3;
@end

@implementation MUPlaceActionDispatcher.CustomAction

- (void)addHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  swift_beginAccess();
  v6 = self;
  MEMORY[0x1C6949DF0]();
  if (*((*(&self->super.super.isa + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.super.isa + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(&self->super.super.isa + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  swift_endAccess();
  _Block_release(v4);
}

- (_TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end