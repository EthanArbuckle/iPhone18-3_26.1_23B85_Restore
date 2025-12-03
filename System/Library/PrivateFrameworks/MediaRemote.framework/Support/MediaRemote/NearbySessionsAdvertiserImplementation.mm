@interface NearbySessionsAdvertiserImplementation
- (MRDGroupSessionAdvertiserDelegate)delegate;
- (_TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation)init;
- (id)assertPublicAdvertisement;
- (void)beginAdvertising;
- (void)beginProxyAdvertisingWithToken:(id)token;
- (void)collectDiagnostic:(id)diagnostic;
- (void)endAdvertising;
- (void)endProxyAdvertising;
- (void)setActiveSession:(id)session identity:(id)identity;
@end

@implementation NearbySessionsAdvertiserImplementation

- (MRDGroupSessionAdvertiserDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActiveSession:(id)session identity:(id)identity
{
  swift_unknownObjectRetain();
  identityCopy = identity;
  selfCopy = self;
  sub_10036ADD8(session);
  swift_unknownObjectRelease();
}

- (void)beginAdvertising
{
  selfCopy = self;
  sub_10035C5B4();
}

- (void)beginProxyAdvertisingWithToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_10035E900(tokenCopy);
}

- (id)assertPublicAdvertisement
{
  selfCopy = self;
  sub_10035F944();
  v4 = v3;

  return v4;
}

- (void)endAdvertising
{
  selfCopy = self;
  sub_1003605F4();
}

- (void)endProxyAdvertising
{
  selfCopy = self;
  sub_100360664();
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  selfCopy = self;
  sub_100366858(diagnostic);
}

- (_TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end