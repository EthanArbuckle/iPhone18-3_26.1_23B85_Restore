@interface ClearSavedCommandHandler
- (_TtC8NewsFeed24ClearSavedCommandHandler)init;
- (void)dealloc;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
@end

@implementation ClearSavedCommandHandler

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed24ClearSavedCommandHandler_readingList);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ClearSavedCommandHandler *)&v6 dealloc];
}

- (_TtC8NewsFeed24ClearSavedCommandHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = qword_1EDF3AE18;
    v8 = self;
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