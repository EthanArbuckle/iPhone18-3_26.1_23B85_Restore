@interface SubscriptionService
- (_TtC7NewsUI219SubscriptionService)init;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
- (void)subscriptionController:(id)a3 didFindTagsWithNotificationSupport:(id)a4;
@end

@implementation SubscriptionService

- (_TtC7NewsUI219SubscriptionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didFindTagsWithNotificationSupport:(id)a4
{
  if (a4)
  {
    v6 = sub_219BF5D44();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_219AE1028(v6);
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  v11 = a5;
  if (a4)
  {
    v14 = sub_219BF5D44();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    v11 = sub_219BF5D44();
  }

LABEL_4:
  if (a6)
  {
    a6 = sub_219BF5D44();
  }

  v15 = a3;
  v16 = a7;
  v17 = self;
  if (v16)
  {
    v18 = sub_219BF5D44();
  }

  else
  {
    v18 = 0;
  }

  sub_219ADEFE8(v15, v14, v11, a6, v18, a8);
}

@end