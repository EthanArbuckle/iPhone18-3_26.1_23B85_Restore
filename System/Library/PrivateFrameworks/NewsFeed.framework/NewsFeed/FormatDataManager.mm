@interface FormatDataManager
- (_TtC8NewsFeed17FormatDataManager)init;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation FormatDataManager

- (_TtC8NewsFeed17FormatDataManager)init
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
    v14 = sub_1D7262B0C();
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
    changeTagsCopy = sub_1D7262B0C();
  }

LABEL_4:
  if (moveTags)
  {
    moveTags = sub_1D7262B0C();
  }

  controllerCopy = controller;
  removeTagsCopy = removeTags;
  selfCopy = self;
  if (removeTagsCopy)
  {
    v18 = sub_1D7262B0C();
  }

  else
  {
    v18 = 0;
  }

  sub_1D5F42068(v14, changeTagsCopy, moveTags, v18, type);
}

@end