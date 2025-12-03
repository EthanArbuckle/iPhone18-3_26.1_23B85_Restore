@interface Kyber1024ObjCPublicKey
- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)init;
- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)initWithPublicKeyBytes:(id)bytes error:(id *)error;
- (id)dataRepresentation;
@end

@implementation Kyber1024ObjCPublicKey

- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)initWithPublicKeyBytes:(id)bytes error:(id *)error
{
  v6 = type metadata accessor for Kyber1024.PublicKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bytesCopy = bytes;
  v18 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(bytesCopy);
  v19 = v12;
  Kyber1024.PublicKey.init<A>(dataRepresentation:)();
  (*(v7 + 32))(self + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v10, v6);
  v13 = type metadata accessor for Kyber1024ObjCPublicKey(0);
  v17.receiver = self;
  v17.super_class = v13;
  v14 = [(Kyber1024ObjCPublicKey *)&v17 init];

  return v14;
}

- (id)dataRepresentation
{
  v3 = type metadata accessor for Kyber1024.PublicKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v3);
  selfCopy = self;
  v9 = Kyber1024.PublicKey.dataRepresentation.getter();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;

  outlined consume of Data._Representation(v9, v11);

  return v12.super.isa;
}

- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end