@interface TagSubscriptionStatusProvider
- (_TtC12NewsArticles29TagSubscriptionStatusProvider)init;
- (void)setTagSubscriptionStatus:(id)a3;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation TagSubscriptionStatusProvider

- (void)setTagSubscriptionStatus:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus);
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus) = a3;
  v3 = a3;
}

- (_TtC12NewsArticles29TagSubscriptionStatusProvider)init
{
  v2 = OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_observers;
  *(&self->super.isa + v2) = [objc_opt_self() weakObjectsHashTable];
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a4)
  {
    sub_1D7D309AC();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    sub_1D7D309AC();
  }

LABEL_4:
  if (a6)
  {
    sub_1D7D309AC();
  }

  v13 = a3;
  v14 = a7;
  v15 = self;
  if (v14)
  {
    sub_1D7D309AC();
  }

  sub_1D7A9BF6C(v13);
}

@end