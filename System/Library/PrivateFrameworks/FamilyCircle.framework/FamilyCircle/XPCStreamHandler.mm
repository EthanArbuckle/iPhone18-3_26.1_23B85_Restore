@interface XPCStreamHandler
- (_TtC13familycircled16XPCStreamHandler)init;
- (void)setEventHandlerForStream:(id)stream queue:(id)queue handler:(id)handler;
@end

@implementation XPCStreamHandler

- (void)setEventHandlerForStream:(id)stream queue:(id)queue handler:(id)handler
{
  v6 = _Block_copy(handler);
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
  queueCopy = queue;

  v11 = String.utf8CString.getter();

  xpc_set_event_stream_handler((v11 + 32), queueCopy, v9);

  _Block_release(v9);
}

- (_TtC13familycircled16XPCStreamHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for XPCStreamHandler();
  return [(XPCStreamHandler *)&v3 init];
}

@end