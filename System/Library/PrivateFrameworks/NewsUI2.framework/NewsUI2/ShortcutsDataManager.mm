@interface ShortcutsDataManager
- (_TtC7NewsUI220ShortcutsDataManager)init;
- (void)dealloc;
@end

@implementation ShortcutsDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *__swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC7NewsUI220ShortcutsDataManager_shortcutsService), *&self->shortcutsService[OBJC_IVAR____TtC7NewsUI220ShortcutsDataManager_shortcutsService]);
  v5 = self;
  sub_219B2EBA8(v5, v4);

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ShortcutsDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI220ShortcutsDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end