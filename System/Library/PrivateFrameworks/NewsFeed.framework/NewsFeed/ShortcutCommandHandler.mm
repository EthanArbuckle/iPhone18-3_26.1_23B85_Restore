@interface ShortcutCommandHandler
- (_TtC8NewsFeed22ShortcutCommandHandler)init;
- (void)dealloc;
- (void)shortcutList:(id)list didAddShortcuts:(id)shortcuts changedShortcuts:(id)changedShortcuts removedShortcuts:(id)removedShortcuts;
@end

@implementation ShortcutCommandHandler

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_shortcutList);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ShortcutCommandHandler *)&v6 dealloc];
}

- (_TtC8NewsFeed22ShortcutCommandHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)shortcutList:(id)list didAddShortcuts:(id)shortcuts changedShortcuts:(id)changedShortcuts removedShortcuts:(id)removedShortcuts
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = qword_1EDF3AAF0;
    selfCopy = self;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1D725D93C();
    swift_unknownObjectRelease();
  }
}

@end