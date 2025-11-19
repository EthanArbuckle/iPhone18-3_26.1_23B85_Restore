@interface TetraAPI
+ (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 theirURI:(id)a5 theirPushToken:(id)a6 theirRegistration:(id)a7 signedByOur:(id)a8;
+ (id)sealNoRatchetWithMessage:(id)a3 authenticatedData:(id)a4 sendingURI:(id)a5 sendingPushToken:(id)a6 receivingURI:(id)a7 receivingPushToken:(id)a8 encryptedAttributes:(id)a9 receiverIdentity:(id)a10 senderIdentity:(id)a11 error:(id *)a12;
+ (id)sealWithMessage:(id)a3 authenticatedData:(id)a4 guid:(id)a5 sendingURI:(id)a6 sendingPushToken:(id)a7 receivingURI:(id)a8 receivingPushToken:(id)a9 receiverRegistration:(id)a10 encryptedAttributes:(id)a11 resetState:(BOOL)a12 signedBy:(id)a13 error:(id *)a14;
+ (void)openWithMessage:(id)a3 authenticatedData:(id)a4 guid:(id)a5 sendingURI:(id)a6 sendingPushToken:(id)a7 receivingURI:(id)a8 receivingPushToken:(id)a9 theirIdentity:(id)a10 signedBy:(id)a11 tetraVersion:(unsigned int)a12 ourPrekeys:(id)a13 ourSigningPublicKeyCompactRepresentation:(id)a14 decryptionBlock:(id)aBlock;
- (_TtC17MessageProtection8TetraAPI)init;
@end

@implementation TetraAPI

+ (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 theirURI:(id)a5 theirPushToken:(id)a6 theirRegistration:(id)a7 signedByOur:(id)a8
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  LOBYTE(v15) = specialized static TetraAPI.markForStateReset(ourURI:ourPushToken:theirURI:theirPushToken:theirRegistration:signedByOur:)(v12, v14, v18, v15, v17, v19, v20, v21);

  return v15 & 1;
}

+ (id)sealWithMessage:(id)a3 authenticatedData:(id)a4 guid:(id)a5 sendingURI:(id)a6 sendingPushToken:(id)a7 receivingURI:(id)a8 receivingPushToken:(id)a9 receiverRegistration:(id)a10 encryptedAttributes:(id)a11 resetState:(BOOL)a12 signedBy:(id)a13 error:(id *)a14
{
  v38 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v42 = a7;
  v22 = a8;
  v41 = a9;
  v35 = a10;
  v23 = a11;
  v24 = a13;
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v25;

  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = specialized static TetraAPI.seal(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:receiverRegistration:encryptedAttributes:resetState:signedBy:)(v37, v40, v39, v27, v36, v29, v42, v30, v32, v41, v35, v33, a12, v24);

  outlined consume of Data._Representation(v39, v27);
  outlined consume of Data._Representation(v37, v40);

  return v43;
}

+ (void)openWithMessage:(id)a3 authenticatedData:(id)a4 guid:(id)a5 sendingURI:(id)a6 sendingPushToken:(id)a7 receivingURI:(id)a8 receivingPushToken:(id)a9 theirIdentity:(id)a10 signedBy:(id)a11 tetraVersion:(unsigned int)a12 ourPrekeys:(id)a13 ourSigningPublicKeyCompactRepresentation:(id)a14 decryptionBlock:(id)aBlock
{
  v21 = _Block_copy(aBlock);
  v45 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v48 = a7;
  v25 = a8;
  v26 = a9;
  v49 = a10;
  v40 = a11;
  v27 = a13;
  v50 = a14;
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
  specialized static TetraAPI.open(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:theirIdentity:signedBy:tetraVersion:ourPrekeys:ourSigningPublicKeyCompactRepresentation:decryptionBlock:)(v28, v47, v46, v44, v43, v42, v41, v39, v48, v34, v36, v26, a10, v40, a12, v38, v50, ObjCClassMetadata, v21);
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

+ (id)sealNoRatchetWithMessage:(id)a3 authenticatedData:(id)a4 sendingURI:(id)a5 sendingPushToken:(id)a6 receivingURI:(id)a7 receivingPushToken:(id)a8 encryptedAttributes:(id)a9 receiverIdentity:(id)a10 senderIdentity:(id)a11 error:(id *)a12
{
  v38 = a3;
  v17 = a4;
  v18 = a5;
  v41 = a6;
  v19 = a7;
  v40 = a8;
  v20 = a9;
  v35 = a10;
  v21 = a11;
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
  v34 = specialized static TetraAPI.sealNoRatchet(message:authenticatedData:sendingURI:sendingPushToken:receivingURI:receivingPushToken:encryptedAttributes:receiverIdentity:senderIdentity:)(v36, v23, v39, v37, v26, v28, v41, v33, v30, v40, v31, v35, v21);

  outlined consume of Data._Representation(v39, v37);
  outlined consume of Data._Representation(v36, v23);

  return v34;
}

@end