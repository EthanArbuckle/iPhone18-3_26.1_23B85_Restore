@interface ShortcutsService
- (_TtC7NewsUI216ShortcutsService)init;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation ShortcutsService

- (_TtC7NewsUI216ShortcutsService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a4)
  {
    v14 = sub_219BF5D44();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
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

  v15 = a3;
  v16 = a7;
  v17 = self;
  if (v16)
  {
    sub_219BF5D44();
  }

  sub_218B69E70(v14, a8);
}

@end