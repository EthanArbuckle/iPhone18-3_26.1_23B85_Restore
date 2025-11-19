@interface FARequestEphemeralSigner
- (ACAccount)account;
- (FARequestEphemeralSigner)init;
- (FARequestEphemeralSigner)initWithEphemeralAuthResults:(id)a3;
- (NSDictionary)ephemeralAuthResults;
- (id)accountInfoPayload;
- (void)setEphemeralAuthResults:(id)a3;
- (void)signURLRequest:(id)a3;
@end

@implementation FARequestEphemeralSigner

- (NSDictionary)ephemeralAuthResults
{
  v2 = *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults);

  v3 = sub_1B715DFD0();

  return v3;
}

- (void)setEphemeralAuthResults:(id)a3
{
  v4 = sub_1B715DFE0();
  v5 = *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults);
  *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults) = v4;
}

- (FARequestEphemeralSigner)initWithEphemeralAuthResults:(id)a3
{
  *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults) = sub_1B715DFE0();
  v5.receiver = self;
  v5.super_class = FARequestEphemeralSigner;
  return [(FARequestEphemeralSigner *)&v5 init];
}

- (void)signURLRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B71596E4(v4);
}

- (FARequestEphemeralSigner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ACAccount)account
{
  v2 = self;
  v3 = [(FARequestEphemeralSigner *)v2 ephemeralAuthResults];
  v4 = sub_1B715DFE0();

  v5 = _sSo9ACAccountC12FamilyCircleE10fa_account4withABSgSDySSypG_tFZ_0(v4);

  return v5;
}

- (id)accountInfoPayload
{
  v2 = self;
  FARequestEphemeralSigner.accountInfoPayload()();

  v3 = sub_1B715DFD0();

  return v3;
}

@end