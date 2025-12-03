@interface TDMClient
- (_TtC16CryptoKitPrivate9TDMClient)init;
- (_TtC16CryptoKitPrivate9TDMClient)initWithTID:(id)d;
- (id)blindedElement;
- (id)finalizeWithFSR:(id)r evaluatedElement:(id)element proof:(id)proof publicKey:(id)key error:(id *)error;
@end

@implementation TDMClient

- (_TtC16CryptoKitPrivate9TDMClient)initWithTID:(id)d
{
  dCopy = d;
  v4 = sub_1C0D7832C();
  v6 = v5;

  v7 = sub_1C0D42990(v4, v6);
  sub_1C0CF448C(v4, v6);
  return v7;
}

- (id)blindedElement
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_be);
  selfCopy = self;
  result = [v2 serializedPublicKey_];
  if (result)
  {
    v5 = result;
    v6 = sub_1C0D7832C();
    v8 = v7;

    v9 = sub_1C0D7830C();
    sub_1C0CF448C(v6, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)finalizeWithFSR:(id)r evaluatedElement:(id)element proof:(id)proof publicKey:(id)key error:(id *)error
{
  rCopy = r;
  elementCopy = element;
  proofCopy = proof;
  keyCopy = key;
  selfCopy = self;
  v15 = sub_1C0D7832C();
  v17 = v16;

  v31 = sub_1C0D7832C();
  v19 = v18;

  v20 = sub_1C0D7832C();
  v22 = v21;

  v23 = sub_1C0D7832C();
  v25 = v24;

  v26 = sub_1C0D3FB88(v15, v17, v31, v19, v20, v22, v23, v25);
  v28 = v27;

  sub_1C0CF448C(v23, v25);
  sub_1C0CF448C(v20, v22);
  sub_1C0CF448C(v31, v19);
  sub_1C0CF448C(v15, v17);
  v29 = sub_1C0D7830C();
  sub_1C0CF448C(v26, v28);

  return v29;
}

- (_TtC16CryptoKitPrivate9TDMClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end