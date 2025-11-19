@interface MRDCryptoUtils
+ (id)signature:(id)a3 isValidFor:(id)a4 withPublicKey:(id)a5 error:(id *)a6;
+ (id)signatureForData:(id)a3 withPrivateKey:(id)a4 error:(id *)a5;
- (MRDCryptoUtils)init;
@end

@implementation MRDCryptoUtils

+ (id)signatureForData:(id)a3 withPrivateKey:(id)a4 error:(id *)a5
{
  v7 = type metadata accessor for Curve25519.Signing.PrivateKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = a4;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v26 = v17;
  v27 = v19;
  sub_1001C3FE0(v17, v19);
  Curve25519.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v26 = v14;
  v27 = v16;
  sub_1001D9A44();
  v20 = Curve25519.Signing.PrivateKey.signature<A>(for:)();
  v22 = v21;
  sub_1001C4034(v17, v19);
  (*(v8 + 8))(v11, v7);
  sub_1001C4034(v14, v16);
  v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v20, v22);

  return v23.super.isa;
}

+ (id)signature:(id)a3 isValidFor:(id)a4 withPublicKey:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_1001D9A98(v11, v13, v14, v16, v17, v19);
  sub_1001C4034(v17, v19);
  sub_1001C4034(v14, v16);
  sub_1001C4034(v11, v13);

  return v20;
}

- (MRDCryptoUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CryptoUtils();
  return [(MRDCryptoUtils *)&v3 init];
}

@end