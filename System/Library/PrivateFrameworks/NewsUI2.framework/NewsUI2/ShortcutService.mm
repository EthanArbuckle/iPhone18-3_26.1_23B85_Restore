@interface ShortcutService
- (_TtC7NewsUI215ShortcutService)init;
- (void)dealloc;
- (void)shortcutList:(id)list didAddShortcuts:(id)shortcuts changedShortcuts:(id)changedShortcuts removedShortcuts:(id)removedShortcuts;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation ShortcutService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
  selfCopy = self;
  [v4 removeObserver_];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC7NewsUI215ShortcutService_subscriptionController) removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ShortcutService *)&v6 dealloc];
}

- (_TtC7NewsUI215ShortcutService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (tags)
  {
    sub_219BF5D44();
    if (!changeTags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (changeTags)
  {
LABEL_3:
    sub_219BF5D44();
  }

LABEL_4:
  if (moveTags)
  {
    sub_219BF5D44();
  }

  controllerCopy = controller;
  removeTagsCopy = removeTags;
  selfCopy = self;
  if (removeTagsCopy)
  {
    v16 = sub_219BF5D44();
  }

  else
  {
    v16 = 0;
  }

  sub_218C568BC(v16);
}

- (void)shortcutList:(id)list didAddShortcuts:(id)shortcuts changedShortcuts:(id)changedShortcuts removedShortcuts:(id)removedShortcuts
{
  sub_218C5679C();
  v8 = sub_219BF5924();
  v9 = sub_219BF5924();
  v10 = sub_219BF5924();
  listCopy = list;
  selfCopy = self;
  sub_218C560E8(listCopy, v8, v9, v10);
}

@end