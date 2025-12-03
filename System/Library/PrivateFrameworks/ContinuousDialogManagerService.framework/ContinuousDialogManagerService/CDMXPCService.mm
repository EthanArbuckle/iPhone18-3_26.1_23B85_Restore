@interface CDMXPCService
- (CDMClientInterface)client;
- (OS_dispatch_source_timer)idleTimer;
- (id)sandboxToken;
- (void)areAssetsAvailableWithLocale:(id)locale completionHandler:(id)handler;
- (void)setClient:(id)client;
- (void)setIdleTimer:(id)timer;
- (void)setupWithConfig:(id)config completionHandler:(id)handler;
- (void)waitForDataDispatcherCompletionWithCompletionHandler:(id)handler;
- (void)wake;
- (void)warmupWithCompletionHandler:(id)handler;
@end

@implementation CDMXPCService

- (void)wake
{
  selfCopy = self;
  sub_1000037F4();
}

- (void)setupWithConfig:(id)config completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  configCopy = config;
  selfCopy = self;
  sub_100003944(configCopy, selfCopy, v6);
  _Block_release(v6);
}

- (CDMClientInterface)client
{
  v2 = sub_100003EE4();

  return v2;
}

- (void)setClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_100005CF0(clientCopy);
}

- (OS_dispatch_source_timer)idleTimer
{
  v2 = sub_100005DBC();

  return v2;
}

- (void)setIdleTimer:(id)timer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100005E58(timer);
}

- (id)sandboxToken
{
  sub_1000062FC();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)warmupWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  sub_10000407C();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10000673C(sub_100004020, v5);
}

- (void)areAssetsAvailableWithLocale:(id)locale completionHandler:(id)handler
{
  v7 = type metadata accessor for Locale();
  v8 = sub_100003420(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100003330();
  sub_1000032F8();
  v13 = _Block_copy(handler);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  selfCopy = self;
  sub_100006E40(v4, selfCopy, v13);
  _Block_release(v13);

  (*(v10 + 8))(v4, v7);
}

- (void)waitForDataDispatcherCompletionWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_100007408(selfCopy, v4);
  _Block_release(v4);
}

@end