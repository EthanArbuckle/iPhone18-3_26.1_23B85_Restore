@interface HistoryFeedDataManager
- (_TtC7NewsUI222HistoryFeedDataManager)init;
- (void)dealloc;
- (void)readingHistory:(id)history didChangeOffensiveStateForArticlesWithIDs:(id)ds;
- (void)readingHistoryDidClear:(id)clear;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation HistoryFeedDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingList);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(HistoryFeedDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI222HistoryFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistoryDidClear:(id)clear
{
  clearCopy = clear;
  selfCopy = self;
  sub_21995D5EC();
}

- (void)readingHistory:(id)history didChangeOffensiveStateForArticlesWithIDs:(id)ds
{
  v6 = sub_219BF5924();
  historyCopy = history;
  selfCopy = self;
  v8 = sub_218845F78(v6);
  v9 = selfCopy + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(selfCopy, &off_282A92890, v8, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  v8 = sub_219BF5924();
  sub_219BF5924();
  listCopy = list;
  selfCopy = self;
  sub_21995D6E8(v8);
}

@end