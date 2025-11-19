@interface CDMXPCService
- (CDMClientInterface)client;
- (OS_dispatch_source_timer)idleTimer;
- (id)sandboxToken;
- (void)areAssetsAvailableWithLocale:(id)a3 completionHandler:(id)a4;
- (void)setClient:(id)a3;
- (void)setIdleTimer:(id)a3;
- (void)setupWithConfig:(id)a3 completionHandler:(id)a4;
- (void)waitForDataDispatcherCompletionWithCompletionHandler:(id)a3;
- (void)wake;
- (void)warmupWithCompletionHandler:(id)a3;
@end

@implementation CDMXPCService

- (void)wake
{
  v2 = self;
  sub_1000037F4();
}

- (void)setupWithConfig:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100003944(v7, v8, v6);
  _Block_release(v6);
}

- (CDMClientInterface)client
{
  v2 = sub_100003EE4();

  return v2;
}

- (void)setClient:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005CF0(v4);
}

- (OS_dispatch_source_timer)idleTimer
{
  v2 = sub_100005DBC();

  return v2;
}

- (void)setIdleTimer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100005E58(a3);
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

- (void)warmupWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  sub_10000407C();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10000673C(sub_100004020, v5);
}

- (void)areAssetsAvailableWithLocale:(id)a3 completionHandler:(id)a4
{
  v7 = type metadata accessor for Locale();
  v8 = sub_100003420(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100003330();
  sub_1000032F8();
  v13 = _Block_copy(a4);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = self;
  sub_100006E40(v4, v14, v13);
  _Block_release(v13);

  (*(v10 + 8))(v4, v7);
}

- (void)waitForDataDispatcherCompletionWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100007408(v5, v4);
  _Block_release(v4);
}

@end