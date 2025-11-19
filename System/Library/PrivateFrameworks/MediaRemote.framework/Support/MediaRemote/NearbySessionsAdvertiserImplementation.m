@interface NearbySessionsAdvertiserImplementation
- (MRDGroupSessionAdvertiserDelegate)delegate;
- (_TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation)init;
- (id)assertPublicAdvertisement;
- (void)beginAdvertising;
- (void)beginProxyAdvertisingWithToken:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)endAdvertising;
- (void)endProxyAdvertising;
- (void)setActiveSession:(id)a3 identity:(id)a4;
@end

@implementation NearbySessionsAdvertiserImplementation

- (MRDGroupSessionAdvertiserDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActiveSession:(id)a3 identity:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_10036ADD8(a3);
  swift_unknownObjectRelease();
}

- (void)beginAdvertising
{
  v2 = self;
  sub_10035C5B4();
}

- (void)beginProxyAdvertisingWithToken:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10035E900(v4);
}

- (id)assertPublicAdvertisement
{
  v2 = self;
  sub_10035F944();
  v4 = v3;

  return v4;
}

- (void)endAdvertising
{
  v2 = self;
  sub_1003605F4();
}

- (void)endProxyAdvertising
{
  v2 = self;
  sub_100360664();
}

- (void)collectDiagnostic:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100366858(a3);
}

- (_TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end