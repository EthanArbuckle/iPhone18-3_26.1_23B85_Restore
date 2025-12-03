@interface FollowingCommandHandler
- (_TtC8NewsFeed23FollowingCommandHandler)init;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation FollowingCommandHandler

- (_TtC8NewsFeed23FollowingCommandHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v9 = qword_1EDF3AB00;
    selfCopy = self;
    if (v9 != -1)
    {
      swift_once();
    }

    sub_1D725D93C();
    swift_unknownObjectRelease();
  }
}

@end