@interface SubscriptionService
- (_TtC7NewsUI219SubscriptionService)init;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
- (void)subscriptionController:(id)controller didFindTagsWithNotificationSupport:(id)support;
@end

@implementation SubscriptionService

- (_TtC7NewsUI219SubscriptionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didFindTagsWithNotificationSupport:(id)support
{
  if (support)
  {
    v6 = sub_219BF5D44();
  }

  else
  {
    v6 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_219AE1028(v6);
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  changeTagsCopy = changeTags;
  if (tags)
  {
    v14 = sub_219BF5D44();
    if (!changeTagsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (changeTags)
  {
LABEL_3:
    changeTagsCopy = sub_219BF5D44();
  }

LABEL_4:
  if (moveTags)
  {
    moveTags = sub_219BF5D44();
  }

  controllerCopy = controller;
  removeTagsCopy = removeTags;
  selfCopy = self;
  if (removeTagsCopy)
  {
    v18 = sub_219BF5D44();
  }

  else
  {
    v18 = 0;
  }

  sub_219ADEFE8(controllerCopy, v14, changeTagsCopy, moveTags, v18, type);
}

@end