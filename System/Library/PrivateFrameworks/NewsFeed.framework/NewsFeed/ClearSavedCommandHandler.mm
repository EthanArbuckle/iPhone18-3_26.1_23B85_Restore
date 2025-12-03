@interface ClearSavedCommandHandler
- (_TtC8NewsFeed24ClearSavedCommandHandler)init;
- (void)dealloc;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation ClearSavedCommandHandler

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed24ClearSavedCommandHandler_readingList);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ClearSavedCommandHandler *)&v6 dealloc];
}

- (_TtC8NewsFeed24ClearSavedCommandHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = qword_1EDF3AE18;
    selfCopy = self;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1D60336F0();
    sub_1D725D93C();
    swift_unknownObjectRelease();
  }
}

@end