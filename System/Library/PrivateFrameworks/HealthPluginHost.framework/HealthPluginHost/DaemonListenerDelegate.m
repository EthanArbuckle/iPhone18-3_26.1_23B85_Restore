@interface DaemonListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (_TtC10healthappd22DaemonListenerDelegate)init;
- (void)dealloc;
- (void)debuggingInfoRequestedWithNote:(id)a3;
@end

@implementation DaemonListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10002EB28(v7);

  return v9 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_10002DC60();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)dealloc
{
  v3 = type metadata accessor for DaemonListenerDelegate();
  v4 = self;
  DebuggingResponder.deregisterForDebuggingRequests()();
  v5.receiver = v4;
  v5.super_class = v3;
  [(DaemonListenerDelegate *)&v5 dealloc];
}

- (_TtC10healthappd22DaemonListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)debuggingInfoRequestedWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10002DFC0();

  (*(v5 + 8))(v8, v4);
}

@end