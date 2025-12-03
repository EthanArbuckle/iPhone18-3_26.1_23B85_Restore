@interface FMNHttpClient
- (_TtC12FMNetworking13FMNHttpClient)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation FMNHttpClient

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_24A88CEF0(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock);
  selfCopy = self;

  sub_24A8BB0C4();

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for FMNHttpClient();
  [(FMNHttpClient *)&v4 dealloc];
}

- (_TtC12FMNetworking13FMNHttpClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end