@interface WelcomeInteractor
- (_TtC7NewsUI217WelcomeInteractor)init;
- (void)dataManager:(id)manager error:(int64_t)error;
- (void)dataManager:(id)manager userType:(int64_t)type;
- (void)dataManagerFeedPrepared:(id)prepared;
- (void)networkReachabilityDidChange:(id)change;
@end

@implementation WelcomeInteractor

- (_TtC7NewsUI217WelcomeInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataManager:(id)manager error:(int64_t)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_218CCC1B0();
  swift_unknownObjectRelease();
}

- (void)dataManagerFeedPrepared:(id)prepared
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_218CCC264();
  swift_unknownObjectRelease();
}

- (void)dataManager:(id)manager userType:(int64_t)type
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_218CCC350(type);
  swift_unknownObjectRelease();
}

- (void)networkReachabilityDidChange:(id)change
{
  selfCopy = self;
  swift_unknownObjectRetain();
  sub_218CCB970();
  if (change)
  {
    if ([change isNetworkReachable])
    {
      [*(&selfCopy->super.isa + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager) beginFetchingUserType];

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