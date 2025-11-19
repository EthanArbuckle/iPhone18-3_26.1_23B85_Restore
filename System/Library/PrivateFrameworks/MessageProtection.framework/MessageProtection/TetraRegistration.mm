@interface TetraRegistration
- (NSData)registrationData;
- (NSData)serializedECDHPublicKey;
- (NSData)signature;
- (_TtC17MessageProtection17TetraRegistration)init;
@end

@implementation TetraRegistration

- (NSData)serializedECDHPublicKey
{
  v2 = self;
  result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = v4;
    v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v6);

    return v7.super.isa;
  }

  return result;
}

- (NSData)signature
{
  v2 = *(self + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v3 = *(self + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8);
  outlined copy of Data._Representation(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v3);

  return v4.super.isa;
}

- (NSData)registrationData
{
  v2 = self;
  v3 = TetraRegistration.registrationData.getter();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v3, v5);

  return v6.super.isa;
}

- (_TtC17MessageProtection17TetraRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end