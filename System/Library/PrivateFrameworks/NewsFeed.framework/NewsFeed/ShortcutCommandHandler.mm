@interface ShortcutCommandHandler
- (_TtC8NewsFeed22ShortcutCommandHandler)init;
- (void)dealloc;
- (void)shortcutList:(id)a3 didAddShortcuts:(id)a4 changedShortcuts:(id)a5 removedShortcuts:(id)a6;
@end

@implementation ShortcutCommandHandler

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_shortcutList);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ShortcutCommandHandler *)&v6 dealloc];
}

- (_TtC8NewsFeed22ShortcutCommandHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)shortcutList:(id)a3 didAddShortcuts:(id)a4 changedShortcuts:(id)a5 removedShortcuts:(id)a6
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = qword_1EDF3AAF0;
    v8 = self;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1D725D93C();
    swift_unknownObjectRelease();
  }
}

@end