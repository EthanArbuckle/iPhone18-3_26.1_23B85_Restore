@interface SavedFeedDataManager
- (_TtC7NewsUI220SavedFeedDataManager)init;
- (void)dealloc;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation SavedFeedDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(SavedFeedDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI220SavedFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  v8 = sub_219BF5924();
  v9 = sub_219BF5924();
  listCopy = list;
  selfCopy = self;
  sub_218A2F4E8(v8, v9);
}

@end