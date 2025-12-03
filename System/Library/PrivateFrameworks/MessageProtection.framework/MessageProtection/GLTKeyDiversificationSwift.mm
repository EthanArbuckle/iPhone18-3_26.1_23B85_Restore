@interface GLTKeyDiversificationSwift
+ (__SecKey)diversifyWithPrivateKey:(__SecKey *)key docId:(id)id trackingPreventionSalt:(id)salt error:(id *)error;
+ (id)diversifyWithPublicKey:(__SecKey *)key trackingPreventionSalt:(id)salt docId:(id)id error:(id *)error;
- (_TtC17MessageProtection26GLTKeyDiversificationSwift)init;
@end

@implementation GLTKeyDiversificationSwift

+ (id)diversifyWithPublicKey:(__SecKey *)key trackingPreventionSalt:(id)salt docId:(id)id error:(id *)error
{
  saltCopy = salt;
  if (salt)
  {
    keyCopy = key;
    idCopy = id;
    v11 = saltCopy;
    saltCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    keyCopy2 = key;
    idCopy2 = id;
    v13 = 0xF000000000000000;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  specialized static GLTKeyDiversificationSwift.diversify(publicKey:trackingPreventionSalt:docId:)(key, saltCopy, v13, v16, v18);
  v20 = v19;

  outlined consume of Data?(saltCopy, v13);

  return v20;
}

+ (__SecKey)diversifyWithPrivateKey:(__SecKey *)key docId:(id)id trackingPreventionSalt:(id)salt error:(id *)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  keyCopy = key;
  saltCopy = salt;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  specialized static GLTKeyDiversificationSwift.diversify(privateKey:docId:trackingPreventionSalt:)(keyCopy, v8, v10, v13, v15);
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