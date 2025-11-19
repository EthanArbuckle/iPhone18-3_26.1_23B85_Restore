@interface MRDGroupSessionDiscoverySession
- (MRDGroupSession)session;
- (NSArray)availableOutputDevices;
- (NSString)description;
- (id)addOutputDevicesChangedCallback:(id)a3;
- (void)handleGroupSessionServerStart:(id)a3;
- (void)handleGroupSessionServerStop:(id)a3;
- (void)handleSystemGroupSessionStart:(id)a3;
- (void)handleSystemGroupSessionStop:(id)a3;
- (void)removeOutputDevicesChangedCallback:(id)a3;
- (void)session:(id)a3 didChangeState:(int64_t)a4;
- (void)session:(id)a3 didUpdateParticipants:(id)a4;
@end

@implementation MRDGroupSessionDiscoverySession

- (NSArray)availableOutputDevices
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  v3 = self;
  sub_1001BC5A8(&qword_1005216D8, &unk_10044EBD0);
  sub_100013378(sub_10001340C);

  sub_100013424();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (MRDGroupSession)session
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  v3 = self;
  sub_1001BC5A8(&qword_100521740, &qword_10044EBE0);
  sub_100013378(sub_1001C9600);

  return v5;
}

- (id)addOutputDevicesChangedCallback:(id)a3
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v20[-v11];
  v13 = _Block_copy(a3);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self;
  _Block_copy(v13);
  UUID.init()();
  v16 = *(&v15->super.isa + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  v21 = v15;
  v22 = v12;
  v23 = sub_1001C9334;
  v24 = v14;
  sub_100013378(sub_1001C95E8);
  (*((swift_isaMask & v15->super.isa) + 0x88))();
  sub_100013424();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v13 + 2))(v13, isa);

  _Block_release(v13);
  (*(v6 + 16))(v10, v12, v5);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  (*(v6 + 8))(v12, v5);

  return v18;
}

- (void)removeOutputDevicesChangedCallback:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001C49B0(v5);

  sub_100026A44(v5);
}

- (NSString)description
{
  v2 = self;
  sub_1001C4CC4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)session:(id)a3 didChangeState:(int64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1001C4FBC(a3, a4);
  swift_unknownObjectRelease();
}

- (void)session:(id)a3 didUpdateParticipants:(id)a4
{
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1001C5290(a3);
  swift_unknownObjectRelease();
}

- (void)handleGroupSessionServerStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C8694();
}

- (void)handleGroupSessionServerStop:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C883C();
}

- (void)handleSystemGroupSessionStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C8A1C();
}

- (void)handleSystemGroupSessionStop:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C8BC4();
}

@end