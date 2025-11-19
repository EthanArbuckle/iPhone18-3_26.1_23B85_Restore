@interface WelcomeInteractor
- (_TtC7NewsUI217WelcomeInteractor)init;
- (void)dataManager:(id)a3 error:(int64_t)a4;
- (void)dataManager:(id)a3 userType:(int64_t)a4;
- (void)dataManagerFeedPrepared:(id)a3;
- (void)networkReachabilityDidChange:(id)a3;
@end

@implementation WelcomeInteractor

- (_TtC7NewsUI217WelcomeInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataManager:(id)a3 error:(int64_t)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_218CCC1B0();
  swift_unknownObjectRelease();
}

- (void)dataManagerFeedPrepared:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_218CCC264();
  swift_unknownObjectRelease();
}

- (void)dataManager:(id)a3 userType:(int64_t)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_218CCC350(a4);
  swift_unknownObjectRelease();
}

- (void)networkReachabilityDidChange:(id)a3
{
  v4 = self;
  swift_unknownObjectRetain();
  sub_218CCB970();
  if (a3)
  {
    if ([a3 isNetworkReachable])
    {
      [*(&v4->super.isa + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager) beginFetchingUserType];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

@end