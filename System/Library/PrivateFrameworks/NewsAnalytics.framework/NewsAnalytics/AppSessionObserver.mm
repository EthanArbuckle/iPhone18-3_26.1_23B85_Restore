@interface AppSessionObserver
- (_TtC13NewsAnalytics18AppSessionObserver)init;
- (void)endAppSessionWithEndReason:(id)a3;
- (void)startAppSessionWithUserIDReset:(id)a3;
@end

@implementation AppSessionObserver

- (_TtC13NewsAnalytics18AppSessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)endAppSessionWithEndReason:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSessionObserver.endAppSession(withEndReason:)(v4);
}

- (void)startAppSessionWithUserIDReset:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSessionObserver.startAppSession(withUserIDReset:)(v4);
}

@end