@interface SavedService
- (_TtC7NewsUI212SavedService)init;
- (void)dealloc;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation SavedService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI212SavedService_readingList);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(SavedService *)&v6 dealloc];
}

- (_TtC7NewsUI212SavedService)init
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
  sub_218E4EDF0(v8, v9);
}

@end