@interface NDOUIActionHandler
- (_TtC8ndoagent18NDOUIActionHandler)init;
- (void)ackPendingAcks;
- (void)removeAndAckDismissedPromoFor:(int64_t)a3 actionData:(id)a4;
@end

@implementation NDOUIActionHandler

- (void)ackPendingAcks
{
  v3 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_100041174(0, 0, v6, &unk_100081738, v8);
}

- (void)removeAndAckDismissedPromoFor:(int64_t)a3 actionData:(id)a4
{
  v6 = a4;
  v10 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100067590(a3, v7, v9);
  sub_100003EBC(v7, v9);
}

- (_TtC8ndoagent18NDOUIActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end