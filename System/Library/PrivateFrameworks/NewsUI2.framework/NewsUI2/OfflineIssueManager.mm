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
    selfCopy = self;
    swift_unknownObjectRetain();
    defaultCenter = [v5 defaultCenter];
    [defaultCenter removeObserver_];
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
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