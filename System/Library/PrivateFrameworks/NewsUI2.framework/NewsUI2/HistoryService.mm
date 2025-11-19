@interface HistoryService
- (_TtC7NewsUI214HistoryService)init;
- (void)readingHistory:(id)a3 didAddArticlesWithIDs:(id)a4;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
@end

@implementation HistoryService

- (_TtC7NewsUI214HistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  if (a4)
  {
    sub_2186C6148(0, &qword_280E8DA20);
    sub_219BF5214();
    v5 = self;

    v7 = sub_219319BD8(v6);
    __swift_project_boxed_opaque_existential_1((&v5->super.isa + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService), *&v5->issueReadingHistory[OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService]);
    v8 = *MEMORY[0x277D30B68];
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v10 = v5;
    sub_218B6434C(v7, v8, sub_2193EE71C, v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)readingHistory:(id)a3 didAddArticlesWithIDs:(id)a4
{
  if (a4)
  {
    v6 = sub_219BF5924();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_2193ECD90(a3, v6);
}

@end