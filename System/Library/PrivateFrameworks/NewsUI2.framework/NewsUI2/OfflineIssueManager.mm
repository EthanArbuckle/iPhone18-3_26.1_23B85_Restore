@interface OfflineIssueManager
- (_TtC7NewsUI219OfflineIssueManager)init;
- (void)dealloc;
@end

@implementation OfflineIssueManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshChangeObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = self;
    swift_unknownObjectRetain();
    v7 = [v5 defaultCenter];
    [v7 removeObserver_];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = self;
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  [(OfflineIssueManager *)&v9 dealloc];
}

- (_TtC7NewsUI219OfflineIssueManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end