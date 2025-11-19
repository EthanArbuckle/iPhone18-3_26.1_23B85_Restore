@interface FollowingCommandHandler
- (_TtC8NewsFeed23FollowingCommandHandler)init;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation FollowingCommandHandler

- (_TtC8NewsFeed23FollowingCommandHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v9 = qword_1EDF3AB00;
    v10 = self;
    if (v9 != -1)
    {
      swift_once();
    }

    sub_1D725D93C();
    swift_unknownObjectRelease();
  }
}

@end