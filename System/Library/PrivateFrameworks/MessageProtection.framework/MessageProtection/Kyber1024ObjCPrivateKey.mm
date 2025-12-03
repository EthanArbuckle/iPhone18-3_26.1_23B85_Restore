@interface Kyber1024ObjCPrivateKey
- (NSData)protobufData;
- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)publicKey;
- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)init;
- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)initWithProtoBufData:(id)data error:(id *)error;
@end

@implementation Kyber1024ObjCPrivateKey

- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)publicKey
{
  v3 = type metadata accessor for Kyber1024.PublicKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TetraKEM1024Key(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TetraKEM1024Key(self + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey, v11);
  selfCopy = self;
  TetraKEM1024Key.publicKey.getter(v7);
  outlined destroy of TetraKEM1024Key(v11);
  v13 = type metadata accessor for Kyber1024ObjCPublicKey(0);
  v14 = objc_allocWithZone(v13);
  (*(v4 + 16))(v14 + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v7, v3);
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = [(Kyber1024ObjCPrivateKey *)&v17 init];

  (*(v4 + 8))(v7, v3);

  return v15;
}

- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)init
{
  v3 = type metadata accessor for TetraKEM1024Key(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TetraKEM1024Key.init()(v6);
  outlined init with take of SecureEnclave.Kyber1024.PrivateKey(v6, self + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey, type metadata accessor for TetraKEM1024Key);
  v7 = type metadata accessor for Kyber1024ObjCPrivateKey(0);
  v10.receiver = self;
  v10.super_class = v7;
  return [(Kyber1024ObjCPrivateKey *)&v10 init];
}

- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)initWithProtoBufData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  return Kyber1024ObjCPrivateKey.init(protoBufData:)(v5, v7);
}

- (NSData)protobufData
{
  selfCopy = self;
  v3 = Kyber1024ObjCPrivateKey.protobufData.getter();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v3, v5);

  return v6.super.isa;
}

@end