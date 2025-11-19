@interface SavedService
- (_TtC7NewsUI212SavedService)init;
- (void)dealloc;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
@end

@implementation SavedService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI212SavedService_readingList);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(SavedService *)&v6 dealloc];
}

- (_TtC7NewsUI212SavedService)init
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
  sub_218E4EDF0(v8, v9);
}

@end