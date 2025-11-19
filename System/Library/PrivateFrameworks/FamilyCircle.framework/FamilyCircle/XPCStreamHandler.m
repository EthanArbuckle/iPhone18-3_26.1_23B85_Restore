@interface XPCStreamHandler
- (_TtC13familycircled16XPCStreamHandler)init;
- (void)setEventHandlerForStream:(id)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation XPCStreamHandler

- (void)setEventHandlerForStream:(id)a3 queue:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100069108;
  *(v8 + 24) = v7;
  v12[4] = sub_10006911C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10006913C;
  v12[3] = &unk_1000A9280;
  v9 = _Block_copy(v12);
  v10 = a4;

  v11 = String.utf8CString.getter();

  xpc_set_event_stream_handler((v11 + 32), v10, v9);

  _Block_release(v9);
}

- (_TtC13familycircled16XPCStreamHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for XPCStreamHandler();
  return [(XPCStreamHandler *)&v3 init];
}

@end