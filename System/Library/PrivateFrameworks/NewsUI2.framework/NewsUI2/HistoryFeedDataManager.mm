@interface HistoryFeedDataManager
- (_TtC7NewsUI222HistoryFeedDataManager)init;
- (void)dealloc;
- (void)readingHistory:(id)a3 didChangeOffensiveStateForArticlesWithIDs:(id)a4;
- (void)readingHistoryDidClear:(id)a3;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
@end

@implementation HistoryFeedDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingList);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(HistoryFeedDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI222HistoryFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistoryDidClear:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21995D5EC();
}

- (void)readingHistory:(id)a3 didChangeOffensiveStateForArticlesWithIDs:(id)a4
{
  v6 = sub_219BF5924();
  v7 = a3;
  v12 = self;
  v8 = sub_218845F78(v6);
  v9 = v12 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v12, &off_282A92890, v8, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  v8 = sub_219BF5924();
  sub_219BF5924();
  v9 = a3;
  v10 = self;
  sub_21995D6E8(v8);
}

@end