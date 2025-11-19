@interface MRDFastSyncGroupSession
+ (id)createSessionWithNearbyGroup:(id)a3 asUser:(id)a4 delegate:(id)a5;
+ (id)joinSessionWithNearbyGroup:(id)a3 asUser:(id)a4 hostSigningKey:(id)a5 delegate:(id)a6;
+ (id)stateToString:(int64_t)a3;
- (BOOL)shouldAutomaticallyApproveWithIdentity:(id)a3;
- (MRDFastSyncGroupSession)init;
- (MRDFastSyncGroupSessionParticipant)leaderParticipant;
- (MRDFastSyncGroupSessionParticipant)localParticipant;
- (NSString)identifier;
- (id)prewarmForIdentity:(id)a3;
- (int64_t)state;
- (void)cancelPrewarmedIdentifier:(id)a3 forIdentity:(id)a4;
- (void)end;
- (void)prepareForAddedMember;
- (void)remoteRemoveAllParticipants;
- (void)sendRemoteControlMessage:(id)a3 to:(id)a4 completion:(id)a5;
- (void)setLeaderParticipant:(id)a3;
- (void)start;
@end

@implementation MRDFastSyncGroupSession

- (int64_t)state
{
  v2 = self;
  v3 = MRDFastSyncGroupSession.state.getter();

  return v3;
}

- (MRDFastSyncGroupSessionParticipant)localParticipant
{
  v2 = self;
  v3 = MRDFastSyncGroupSession.localParticipant.getter();

  return v3;
}

- (MRDFastSyncGroupSessionParticipant)leaderParticipant
{
  v3 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLeaderParticipant:(id)a3
{
  v5 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v3 = *(self + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)createSessionWithNearbyGroup:(id)a3 asUser:(id)a4 delegate:(id)a5
{
  v7 = *(a3 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  v8 = *((swift_isaMask & *a3) + 0x68);
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();

  v12 = v8(v11);
  v14 = v13;
  type metadata accessor for RemoteControlActivity();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v16 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = NearbyGroupSessionProvider.init(nearbyGroup:activity:)();
  v20 = objc_allocWithZone(type metadata accessor for MRDFastSyncGroupSession());
  v21 = sub_1001E7E74(1, v10, v19, a5);

  return v21;
}

+ (id)joinSessionWithNearbyGroup:(id)a3 asUser:(id)a4 hostSigningKey:(id)a5 delegate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001C4034(v12, v13);

  v14 = *(v9 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  v15 = *((swift_isaMask & *v9) + 0x68);

  v17 = v15(v16);
  v19 = v18;
  type metadata accessor for RemoteControlActivity();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  v21 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = NearbyGroupSessionProvider.init(nearbyGroup:activity:)();
  v25 = objc_allocWithZone(type metadata accessor for MRDFastSyncGroupSession());
  v26 = sub_1001E7E74(0, v10, v24, a6);

  return v26;
}

+ (id)stateToString:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 3 || a3 == 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a3 && a3 != 1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)start
{
  v2 = self;
  MRDFastSyncGroupSession.start()();
}

- (void)end
{
  v2 = self;
  MRDFastSyncGroupSession.end()();
}

- (id)prewarmForIdentity:(id)a3
{
  v4 = a3;
  v5 = self;
  MRDFastSyncGroupSession.prewarm(for:)(v4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)cancelPrewarmedIdentifier:(id)a3 forIdentity:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  MRDFastSyncGroupSession.cancel(prewarmedIdentifier:for:)(v6, v8, v9);
}

- (void)prepareForAddedMember
{
  v2 = self;
  MRDFastSyncGroupSession.prepareForAddedMember()();
}

- (BOOL)shouldAutomaticallyApproveWithIdentity:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MRDFastSyncGroupSession.shouldAutomaticallyApprove(identity:)(v4);

  return self & 1;
}

- (void)remoteRemoveAllParticipants
{
  v2 = self;
  MRDFastSyncGroupSession.remoteRemoveAllParticipants()();
}

- (void)sendRemoteControlMessage:(id)a3 to:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v16 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  MRDFastSyncGroupSession.sendRemoteControlMessage(_:to:completion:)(v11, v13, v14, sub_100224B80, v15);

  sub_1001C4034(v11, v13);
}

- (MRDFastSyncGroupSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end