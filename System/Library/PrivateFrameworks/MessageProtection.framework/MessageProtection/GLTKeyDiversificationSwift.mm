@interface GLTKeyDiversificationSwift
+ (__SecKey)diversifyWithPrivateKey:(__SecKey *)a3 docId:(id)a4 trackingPreventionSalt:(id)a5 error:(id *)a6;
+ (id)diversifyWithPublicKey:(__SecKey *)a3 trackingPreventionSalt:(id)a4 docId:(id)a5 error:(id *)a6;
- (_TtC17MessageProtection26GLTKeyDiversificationSwift)init;
@end

@implementation GLTKeyDiversificationSwift

+ (id)diversifyWithPublicKey:(__SecKey *)a3 trackingPreventionSalt:(id)a4 docId:(id)a5 error:(id *)a6
{
  v7 = a4;
  if (a4)
  {
    v9 = a3;
    v10 = a5;
    v11 = v7;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v14 = a3;
    v15 = a5;
    v13 = 0xF000000000000000;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  specialized static GLTKeyDiversificationSwift.diversify(publicKey:trackingPreventionSalt:docId:)(a3, v7, v13, v16, v18);
  v20 = v19;

  outlined consume of Data?(v7, v13);

  return v20;
}

+ (__SecKey)diversifyWithPrivateKey:(__SecKey *)a3 docId:(id)a4 trackingPreventionSalt:(id)a5 error:(id *)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  specialized static GLTKeyDiversificationSwift.diversify(privateKey:docId:trackingPreventionSalt:)(v11, v8, v10, v13, v15);
  v17 = v16;

  outlined consume of Data._Representation(v13, v15);

  return v17;
}

- (_TtC17MessageProtection26GLTKeyDiversificationSwift)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GLTKeyDiversificationSwift();
  return [(GLTKeyDiversificationSwift *)&v3 init];
}

@end