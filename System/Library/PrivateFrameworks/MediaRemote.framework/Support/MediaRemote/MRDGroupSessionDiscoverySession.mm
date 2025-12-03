@interface MRDGroupSessionDiscoverySession
- (MRDGroupSession)session;
- (NSArray)availableOutputDevices;
- (NSString)description;
- (id)addOutputDevicesChangedCallback:(id)callback;
- (void)handleGroupSessionServerStart:(id)start;
- (void)handleGroupSessionServerStop:(id)stop;
- (void)handleSystemGroupSessionStart:(id)start;
- (void)handleSystemGroupSessionStop:(id)stop;
- (void)removeOutputDevicesChangedCallback:(id)callback;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)session:(id)session didUpdateParticipants:(id)participants;
@end

@implementation MRDGroupSessionDiscoverySession

- (NSArray)availableOutputDevices
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  selfCopy = self;
  sub_1001BC5A8(&qword_1005216D8, &unk_10044EBD0);
  sub_100013378(sub_10001340C);

  sub_100013424();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (MRDGroupSession)session
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  selfCopy = self;
  sub_1001BC5A8(&qword_100521740, &qword_10044EBE0);
  sub_100013378(sub_1001C9600);

  return v5;
}

- (id)addOutputDevicesChangedCallback:(id)callback
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v20[-v11];
  v13 = _Block_copy(callback);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  _Block_copy(v13);
  UUID.init()();
  v16 = *(&selfCopy->super.isa + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  v21 = selfCopy;
  v22 = v12;
  v23 = sub_1001C9334;
  v24 = v14;
  sub_100013378(sub_1001C95E8);
  (*((swift_isaMask & selfCopy->super.isa) + 0x88))();
  sub_100013424();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v13 + 2))(v13, isa);

  _Block_release(v13);
  (*(v6 + 16))(v10, v12, v5);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  (*(v6 + 8))(v12, v5);

  return v18;
}

- (void)removeOutputDevicesChangedCallback:(id)callback
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001C49B0(v5);

  sub_100026A44(v5);
}

- (NSString)description
{
  selfCopy = self;
  sub_1001C4CC4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C4FBC(session, state);
  swift_unknownObjectRelease();
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C5290(session);
  swift_unknownObjectRelease();
}

- (void)handleGroupSessionServerStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_1001C8694();
}

- (void)handleGroupSessionServerStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_1001C883C();
}

- (void)handleSystemGroupSessionStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_1001C8A1C();
}

- (void)handleSystemGroupSessionStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_1001C8BC4();
}

@end