@interface NearbySessionsPendingParticipant
- (BOOL)connected;
- (BOOL)guest;
- (BOOL)hidden;
- (MRUserIdentity)identity;
- (NSString)identifier;
- (_TtC12mediaremoted32NearbySessionsPendingParticipant)init;
- (void)setConnected:(BOOL)connected;
- (void)setGuest:(BOOL)guest;
- (void)setHidden:(BOOL)hidden;
- (void)setIdentifier:(id)identifier;
- (void)setIdentity:(id)identity;
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

- (void)setIdentifier:(id)identifier
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

- (void)setIdentity:(id)identity
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = identity;
  identityCopy = identity;
}

- (BOOL)connected
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConnected:(BOOL)connected
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  *(self + v5) = connected;
}

- (BOOL)guest
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGuest:(BOOL)guest
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  *(self + v5) = guest;
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHidden:(BOOL)hidden
{
  v5 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  *(self + v5) = hidden;
}

- (_TtC12mediaremoted32NearbySessionsPendingParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end