@interface FARequestEphemeralSigner
- (ACAccount)account;
- (FARequestEphemeralSigner)init;
- (FARequestEphemeralSigner)initWithEphemeralAuthResults:(id)results;
- (NSDictionary)ephemeralAuthResults;
- (id)accountInfoPayload;
- (void)setEphemeralAuthResults:(id)results;
- (void)signURLRequest:(id)request;
@end

@implementation FARequestEphemeralSigner

- (NSDictionary)ephemeralAuthResults
{
  v2 = *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults);

  v3 = sub_1B715DFD0();

  return v3;
}

- (void)setEphemeralAuthResults:(id)results
{
  v4 = sub_1B715DFE0();
  v5 = *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults);
  *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults) = v4;
}

- (FARequestEphemeralSigner)initWithEphemeralAuthResults:(id)results
{
  *(self + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults) = sub_1B715DFE0();
  v5.receiver = self;
  v5.super_class = FARequestEphemeralSigner;
  return [(FARequestEphemeralSigner *)&v5 init];
}

- (void)signURLRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1B71596E4(requestCopy);
}

- (FARequestEphemeralSigner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ACAccount)account
{
  selfCopy = self;
  ephemeralAuthResults = [(FARequestEphemeralSigner *)selfCopy ephemeralAuthResults];
  v4 = sub_1B715DFE0();

  v5 = _sSo9ACAccountC12FamilyCircleE10fa_account4withABSgSDySSypG_tFZ_0(v4);

  return v5;
}

- (id)accountInfoPayload
{
  selfCopy = self;
  FARequestEphemeralSigner.accountInfoPayload()();

  v3 = sub_1B715DFD0();

  return v3;
}

@end