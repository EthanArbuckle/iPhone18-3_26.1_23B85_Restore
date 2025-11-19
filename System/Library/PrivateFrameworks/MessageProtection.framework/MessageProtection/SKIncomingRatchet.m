@interface SKIncomingRatchet
- (_TtC17MessageProtection17SKIncomingRatchet)init;
- (id)openStatusWithIndex:(unint64_t)a3 encryptedMessage:(id)a4 authenticating:(id)a5 signature:(id)a6 error:(id *)a7;
@end

@implementation SKIncomingRatchet

- (id)openStatusWithIndex:(unint64_t)a3 encryptedMessage:(id)a4 authenticating:(id)a5 signature:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  SKIncomingRatchet.openStatus(index:encryptedMessage:authenticating:signature:)(a3, v15, v17, v18, v20, v21, v23);
  v25 = v24;
  v27 = v26;

  outlined consume of Data._Representation(v21, v23);
  outlined consume of Data._Representation(v18, v20);
  outlined consume of Data._Representation(v15, v17);
  v28.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v25, v27);

  return v28.super.isa;
}

- (_TtC17MessageProtection17SKIncomingRatchet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end