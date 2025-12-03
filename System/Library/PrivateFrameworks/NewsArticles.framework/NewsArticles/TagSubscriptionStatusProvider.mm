@interface TagSubscriptionStatusProvider
- (_TtC12NewsArticles29TagSubscriptionStatusProvider)init;
- (void)setTagSubscriptionStatus:(id)status;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation TagSubscriptionStatusProvider

- (void)setTagSubscriptionStatus:(id)status
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus);
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus) = status;
  statusCopy = status;
}

- (_TtC12NewsArticles29TagSubscriptionStatusProvider)init
{
  v2 = OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_observers;
  *(&self->super.isa + v2) = [objc_opt_self() weakObjectsHashTable];
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (tags)
  {
    sub_1D7D309AC();
    if (!changeTags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (changeTags)
  {
LABEL_3:
    sub_1D7D309AC();
  }

LABEL_4:
  if (moveTags)
  {
    sub_1D7D309AC();
  }

  controllerCopy = controller;
  removeTagsCopy = removeTags;
  selfCopy = self;
  if (removeTagsCopy)
  {
    sub_1D7D309AC();
  }

  sub_1D7A9BF6C(controllerCopy);
}

@end