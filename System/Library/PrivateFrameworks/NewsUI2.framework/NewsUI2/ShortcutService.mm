@interface ShortcutService
- (_TtC7NewsUI215ShortcutService)init;
- (void)dealloc;
- (void)shortcutList:(id)a3 didAddShortcuts:(id)a4 changedShortcuts:(id)a5 removedShortcuts:(id)a6;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation ShortcutService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
  v5 = self;
  [v4 removeObserver_];
  [*(&v5->super.isa + OBJC_IVAR____TtC7NewsUI215ShortcutService_subscriptionController) removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ShortcutService *)&v6 dealloc];
}

- (_TtC7NewsUI215ShortcutService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a4)
  {
    sub_219BF5D44();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    sub_219BF5D44();
  }

LABEL_4:
  if (a6)
  {
    sub_219BF5D44();
  }

  v13 = a3;
  v14 = a7;
  v15 = self;
  if (v14)
  {
    v16 = sub_219BF5D44();
  }

  else
  {
    v16 = 0;
  }

  sub_218C568BC(v16);
}

- (void)shortcutList:(id)a3 didAddShortcuts:(id)a4 changedShortcuts:(id)a5 removedShortcuts:(id)a6
{
  sub_218C5679C();
  v8 = sub_219BF5924();
  v9 = sub_219BF5924();
  v10 = sub_219BF5924();
  v11 = a3;
  v12 = self;
  sub_218C560E8(v11, v8, v9, v10);
}

@end