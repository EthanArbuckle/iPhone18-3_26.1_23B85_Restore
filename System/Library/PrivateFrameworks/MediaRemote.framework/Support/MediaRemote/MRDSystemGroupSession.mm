@interface MRDSystemGroupSession
- (MRDSystemGroupSession)init;
- (NSString)identifier;
- (void)dealloc;
- (void)sendMessageData:(id)data toParticipants:(id)participants;
@end

@implementation MRDSystemGroupSession

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  if (qword_100537DF8 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_1005385E8 object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for SystemGroupSession();
  [(MRDSystemGroupSession *)&v6 dealloc];
}

- (MRDSystemGroupSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendMessageData:(id)data toParticipants:(id)participants
{
  dataCopy = data;
  participantsCopy = participants;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      sub_1003A1F64(v9, v11, v15, v16, MRDFastSyncGroupSessionState.rawValue.getter, 0);

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  sub_1001C4034(v9, v11);
}

- (NSString)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___MRDSystemGroupSession_session);
  selfCopy = self;
  GroupSession.id.getter();
  UUID.uuidString.getter();

  (*(v4 + 8))(v7, v3);
  v10 = String._bridgeToObjectiveC()();

  return v10;
}

@end