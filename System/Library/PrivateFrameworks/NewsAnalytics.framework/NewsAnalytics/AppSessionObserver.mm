@interface AppSessionObserver
- (_TtC13NewsAnalytics18AppSessionObserver)init;
- (void)endAppSessionWithEndReason:(id)reason;
- (void)startAppSessionWithUserIDReset:(id)reset;
@end

@implementation AppSessionObserver

- (_TtC13NewsAnalytics18AppSessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)endAppSessionWithEndReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  AppSessionObserver.endAppSession(withEndReason:)(reasonCopy);
}

- (void)startAppSessionWithUserIDReset:(id)reset
{
  resetCopy = reset;
  selfCopy = self;
  AppSessionObserver.startAppSession(withUserIDReset:)(resetCopy);
}

@end