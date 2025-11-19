@interface NearbySessionsPendingParticipant
- (BOOL)connected;
- (BOOL)guest;
- (BOOL)hidden;
- (MRUserIdentity)identity;
- (NSString)identifier;
- (_TtC12mediaremoted32NearbySessionsPendingParticipant)init;
- (void)setConnected:(BOOL)a3;
- (void)setGuest:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setIdentity:(id)a3;
@end

@implementation NearbySessionsPendingParticipant

- (NSString)identifier
{
  v2 = (self + OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (MRUserIdentity)identity
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIdentity:(id)a3
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)connected
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConnected:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)guest
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGuest:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHidden:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC12mediaremoted32NearbySessionsPendingParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end