@interface TetraAPI
+ (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token theirURI:(id)rI theirPushToken:(id)pushToken theirRegistration:(id)registration signedByOur:(id)our;
+ (id)sealNoRatchetWithMessage:(id)message authenticatedData:(id)data sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken encryptedAttributes:(id)attributes receiverIdentity:(id)self0 senderIdentity:(id)self1 error:(id *)self2;
+ (id)sealWithMessage:(id)message authenticatedData:(id)data guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken receiverRegistration:(id)self0 encryptedAttributes:(id)self1 resetState:(BOOL)self2 signedBy:(id)self3 error:(id *)self4;
+ (void)openWithMessage:(id)message authenticatedData:(id)data guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken theirIdentity:(id)self0 signedBy:(id)self1 tetraVersion:(unsigned int)self2 ourPrekeys:(id)self3 ourSigningPublicKeyCompactRepresentation:(id)self4 decryptionBlock:(id)aBlock;
- (_TtC17MessageProtection8TetraAPI)init;
@end

@implementation TetraAPI

+ (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token theirURI:(id)rI theirPushToken:(id)pushToken theirRegistration:(id)registration signedByOur:(id)our
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  tokenCopy = token;
  pushTokenCopy = pushToken;
  registrationCopy = registration;
  ourCopy = our;
  LOBYTE(v15) = specialized static TetraAPI.markForStateReset(ourURI:ourPushToken:theirURI:theirPushToken:theirRegistration:signedByOur:)(v12, v14, tokenCopy, v15, v17, pushTokenCopy, registrationCopy, ourCopy);

  return v15 & 1;
}

+ (id)sealWithMessage:(id)message authenticatedData:(id)data guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken receiverRegistration:(id)self0 encryptedAttributes:(id)self1 resetState:(BOOL)self2 signedBy:(id)self3 error:(id *)self4
{
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  registrationCopy = registration;
  attributesCopy = attributes;
  byCopy = by;
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v25;

  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = specialized static TetraAPI.seal(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:receiverRegistration:encryptedAttributes:resetState:signedBy:)(v37, v40, v39, v27, v36, v29, tokenCopy, v30, v32, pushTokenCopy, registrationCopy, v33, state, byCopy);

  outlined consume of Data._Representation(v39, v27);
  outlined consume of Data._Representation(v37, v40);

  return v43;
}

+ (void)openWithMessage:(id)message authenticatedData:(id)data guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken theirIdentity:(id)self0 signedBy:(id)self1 tetraVersion:(unsigned int)self2 ourPrekeys:(id)self3 ourSigningPublicKeyCompactRepresentation:(id)self4 decryptionBlock:(id)aBlock
{
  v21 = _Block_copy(aBlock);
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  identityCopy = identity;
  byCopy = by;
  prekeysCopy = prekeys;
  representationCopy = representation;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v29;

  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v30;

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v32;
  v43 = v31;

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v33;

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NGMFullPrekey, off_2786FD610);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v21);
  specialized static TetraAPI.open(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:theirIdentity:signedBy:tetraVersion:ourPrekeys:ourSigningPublicKeyCompactRepresentation:decryptionBlock:)(v28, v47, v46, v44, v43, v42, v41, v39, tokenCopy, v34, v36, pushTokenCopy, identity, byCopy, version, v38, representationCopy, ObjCClassMetadata, v21);
  _Block_release(v21);
  _Block_release(v21);

  outlined consume of Data._Representation(v46, v44);
  outlined consume of Data._Representation(v28, v47);
}

- (_TtC17MessageProtection8TetraAPI)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TetraAPI();
  return [(TetraAPI *)&v3 init];
}

+ (id)sealNoRatchetWithMessage:(id)message authenticatedData:(id)data sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken encryptedAttributes:(id)attributes receiverIdentity:(id)self0 senderIdentity:(id)self1 error:(id *)self2
{
  messageCopy = message;
  dataCopy = data;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  attributesCopy = attributes;
  identityCopy = identity;
  senderIdentityCopy = senderIdentity;
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v25;
  v39 = v24;

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = specialized static TetraAPI.sealNoRatchet(message:authenticatedData:sendingURI:sendingPushToken:receivingURI:receivingPushToken:encryptedAttributes:receiverIdentity:senderIdentity:)(v36, v23, v39, v37, v26, v28, tokenCopy, v33, v30, pushTokenCopy, v31, identityCopy, senderIdentityCopy);

  outlined consume of Data._Representation(v39, v37);
  outlined consume of Data._Representation(v36, v23);

  return v34;
}

@end