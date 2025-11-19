@interface SavedFeedDataManager
- (_TtC7NewsUI220SavedFeedDataManager)init;
- (void)dealloc;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
@end

@implementation SavedFeedDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(SavedFeedDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI220SavedFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  v8 = sub_219BF5924();
  v9 = sub_219BF5924();
  v10 = a3;
  v11 = self;
  sub_218A2F4E8(v8, v9);
}

@end