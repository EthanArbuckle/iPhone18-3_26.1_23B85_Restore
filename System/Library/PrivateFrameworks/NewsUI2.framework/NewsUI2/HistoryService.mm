@interface HistoryService
- (_TtC7NewsUI214HistoryService)init;
- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
@end

@implementation HistoryService

- (_TtC7NewsUI214HistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  if (articles)
  {
    sub_2186C6148(0, &qword_280E8DA20);
    sub_219BF5214();
    selfCopy = self;

    v7 = sub_219319BD8(v6);
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService), *&selfCopy->issueReadingHistory[OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService]);
    v8 = *MEMORY[0x277D30B68];
    v9 = swift_allocObject();
    *(v9 + 16) = selfCopy;
    v10 = selfCopy;
    sub_218B6434C(v7, v8, sub_2193EE71C, v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds
{
  if (ds)
  {
    v6 = sub_219BF5924();
  }

  else
  {
    v6 = 0;
  }

  historyCopy = history;
  selfCopy = self;
  sub_2193ECD90(history, v6);
}

@end