@interface MyMagazinesStore
- (_TtC7NewsUI216MyMagazinesStore)init;
- (void)issueReadingHistoryDidChange:(id)a3 forIssueIDs:(id)a4;
- (void)offlineIssueList:(id)a3 didAddIssues:(id)a4 removeIssues:(id)a5;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation MyMagazinesStore

- (_TtC7NewsUI216MyMagazinesStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)issueReadingHistoryDidChange:(id)a3 forIssueIDs:(id)a4
{
  v6 = sub_219BF5924();
  v7 = a3;
  v8 = self;
  sub_2195FBA60(v6);
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a4)
  {
    v13 = sub_219BF5D44();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
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

  v14 = a3;
  v15 = a7;
  v16 = self;
  if (v15)
  {
    v17 = sub_219BF5D44();
  }

  else
  {
    v17 = 0;
  }

  sub_2195FBF18(v13, v17);
}

- (void)offlineIssueList:(id)a3 didAddIssues:(id)a4 removeIssues:(id)a5
{
  v7 = sub_2194B2E44(&unk_282A28590);
  v8 = a3;
  v9 = self;
  sub_219BE3204();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2195FC778;
  *(v11 + 24) = v10;
  v12 = v9;
  v13 = sub_219BE2E54();
  sub_219BE2F64();
}

@end