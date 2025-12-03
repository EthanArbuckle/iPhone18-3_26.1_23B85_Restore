@interface MyMagazinesStore
- (_TtC7NewsUI216MyMagazinesStore)init;
- (void)issueReadingHistoryDidChange:(id)change forIssueIDs:(id)ds;
- (void)offlineIssueList:(id)list didAddIssues:(id)issues removeIssues:(id)removeIssues;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation MyMagazinesStore

- (_TtC7NewsUI216MyMagazinesStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)issueReadingHistoryDidChange:(id)change forIssueIDs:(id)ds
{
  v6 = sub_219BF5924();
  changeCopy = change;
  selfCopy = self;
  sub_2195FBA60(v6);
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (tags)
  {
    v13 = sub_219BF5D44();
    if (!changeTags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
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
    v17 = sub_219BF5D44();
  }

  else
  {
    v17 = 0;
  }

  sub_2195FBF18(v13, v17);
}

- (void)offlineIssueList:(id)list didAddIssues:(id)issues removeIssues:(id)removeIssues
{
  v7 = sub_2194B2E44(&unk_282A28590);
  listCopy = list;
  selfCopy = self;
  sub_219BE3204();
  v10 = swift_allocObject();
  *(v10 + 16) = selfCopy;
  *(v10 + 24) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2195FC778;
  *(v11 + 24) = v10;
  v12 = selfCopy;
  v13 = sub_219BE2E54();
  sub_219BE2F64();
}

@end