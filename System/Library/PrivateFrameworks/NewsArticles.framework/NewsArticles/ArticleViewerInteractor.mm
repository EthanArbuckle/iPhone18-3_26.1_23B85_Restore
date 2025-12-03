@interface ArticleViewerInteractor
- (_TtC12NewsArticles23ArticleViewerInteractor)init;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation ArticleViewerInteractor

- (_TtC12NewsArticles23ArticleViewerInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  changeTagsCopy = changeTags;
  if (tags)
  {
    sub_1D7D309AC();
    if (!changeTagsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (changeTags)
  {
LABEL_3:
    changeTagsCopy = sub_1D7D309AC();
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

  sub_1D7A6B9E4(changeTagsCopy, type);
}

@end