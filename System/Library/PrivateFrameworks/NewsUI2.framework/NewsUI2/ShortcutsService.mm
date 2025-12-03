@interface ShortcutsService
- (_TtC7NewsUI216ShortcutsService)init;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation ShortcutsService

- (_TtC7NewsUI216ShortcutsService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (tags)
  {
    v14 = sub_219BF5D44();
    if (!changeTags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
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
    sub_219BF5D44();
  }

  sub_218B69E70(v14, type);
}

@end