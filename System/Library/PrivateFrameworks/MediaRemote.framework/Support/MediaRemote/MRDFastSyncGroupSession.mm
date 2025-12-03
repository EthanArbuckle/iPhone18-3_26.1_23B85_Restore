@interface MRDFastSyncGroupSession
+ (id)createSessionWithNearbyGroup:(id)group asUser:(id)user delegate:(id)delegate;
+ (id)joinSessionWithNearbyGroup:(id)group asUser:(id)user hostSigningKey:(id)key delegate:(id)delegate;
+ (id)stateToString:(int64_t)string;
- (BOOL)shouldAutomaticallyApproveWithIdentity:(id)identity;
- (MRDFastSyncGroupSession)init;
- (MRDFastSyncGroupSessionParticipant)leaderParticipant;
- (MRDFastSyncGroupSessionParticipant)localParticipant;
- (NSString)identifier;
- (id)prewarmForIdentity:(id)identity;
- (int64_t)state;
- (void)cancelPrewarmedIdentifier:(id)identifier forIdentity:(id)identity;
- (void)end;
- (void)prepareForAddedMember;
- (void)remoteRemoveAllParticipants;
- (void)sendRemoteControlMessage:(id)message to:(id)to completion:(id)completion;
- (void)setLeaderParticipant:(id)participant;
- (void)start;
@end

@implementation MRDFastSyncGroupSession

- (int64_t)state
{
  selfCopy = self;
  v3 = MRDFastSyncGroupSession.state.getter();

  return v3;
}

- (MRDFastSyncGroupSessionParticipant)localParticipant
{
  selfCopy = self;
  v3 = MRDFastSyncGroupSession.localParticipant.getter();

  return v3;
}

- (MRDFastSyncGroupSessionParticipant)leaderParticipant
{
  v3 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLeaderParticipant:(id)participant
{
  v5 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = participant;
  participantCopy = participant;
}

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v3 = *(self + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)createSessionWithNearbyGroup:(id)group asUser:(id)user delegate:(id)delegate
{
  v7 = *(group + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  v8 = *((swift_isaMask & *group) + 0x68);
  groupCopy = group;
  userCopy = user;
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
  v21 = sub_1001E7E74(1, userCopy, v19, delegate);

  return v21;
}

+ (id)joinSessionWithNearbyGroup:(id)group asUser:(id)user hostSigningKey:(id)key delegate:(id)delegate
{
  groupCopy = group;
  userCopy = user;
  keyCopy = key;
  swift_unknownObjectRetain();
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001C4034(v12, v13);

  v14 = *(groupCopy + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  v15 = *((swift_isaMask & *groupCopy) + 0x68);

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
  v26 = sub_1001E7E74(0, userCopy, v24, delegate);

  return v26;
}

+ (id)stateToString:(int64_t)string
{
  if (string > 1)
  {
    if (string == 2 || string == 3 || string == 4)
    {
      goto LABEL_11;
    }

LABEL_14:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (string && string != 1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)start
{
  selfCopy = self;
  MRDFastSyncGroupSession.start()();
}

- (void)end
{
  selfCopy = self;
  MRDFastSyncGroupSession.end()();
}

- (id)prewarmForIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  MRDFastSyncGroupSession.prewarm(for:)(identityCopy);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)cancelPrewarmedIdentifier:(id)identifier forIdentity:(id)identity
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  identityCopy = identity;
  selfCopy = self;
  MRDFastSyncGroupSession.cancel(prewarmedIdentifier:for:)(v6, v8, identityCopy);
}

- (void)prepareForAddedMember
{
  selfCopy = self;
  MRDFastSyncGroupSession.prepareForAddedMember()();
}

- (BOOL)shouldAutomaticallyApproveWithIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  LOBYTE(self) = MRDFastSyncGroupSession.shouldAutomaticallyApprove(identity:)(identityCopy);

  return self & 1;
}

- (void)remoteRemoveAllParticipants
{
  selfCopy = self;
  MRDFastSyncGroupSession.remoteRemoveAllParticipants()();
}

- (void)sendRemoteControlMessage:(id)message to:(id)to completion:(id)completion
{
  v8 = _Block_copy(completion);
  messageCopy = message;
  toCopy = to;
  selfCopy = self;
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