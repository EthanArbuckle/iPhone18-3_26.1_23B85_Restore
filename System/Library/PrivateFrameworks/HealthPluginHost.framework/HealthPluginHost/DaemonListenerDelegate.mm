@interface DaemonListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSString)description;
- (_TtC10healthappd22DaemonListenerDelegate)init;
- (void)dealloc;
- (void)debuggingInfoRequestedWithNote:(id)note;
@end

@implementation DaemonListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10002EB28(connectionCopy);

  return v9 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_10002DC60();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)dealloc
{
  v3 = type metadata accessor for DaemonListenerDelegate();
  selfCopy = self;
  DebuggingResponder.deregisterForDebuggingRequests()();
  v5.receiver = selfCopy;
  v5.super_class = v3;
  [(DaemonListenerDelegate *)&v5 dealloc];
}

- (_TtC10healthappd22DaemonListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)debuggingInfoRequestedWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002DFC0();

  (*(v5 + 8))(v8, v4);
}

@end