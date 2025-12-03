@interface TDMServer
- (BOOL)verifyTokenWithOutput:(id)output TID:(id)d FSR:(id)r;
- (id)evaluateWithBlindedElement:(id)element error:(id *)error;
- (id)info;
- (id)publicKey;
@end

@implementation TDMServer

- (id)publicKey
{
  selfCopy = self;
  v3 = sub_1C0D40BA0();
  v5 = v4;

  v6 = sub_1C0D7830C();
  sub_1C0CF448C(v3, v5);

  return v6;
}

- (id)info
{
  v2 = sub_1C0D42BF0();
  v4 = v3;
  v5 = sub_1C0D7830C();
  sub_1C0CF448C(v2, v4);

  return v5;
}

- (id)evaluateWithBlindedElement:(id)element error:(id *)error
{
  elementCopy = element;
  selfCopy = self;
  v7 = sub_1C0D7832C();
  v9 = v8;

  v10 = sub_1C0D40E0C(v7, v9);
  sub_1C0CF448C(v7, v9);

  return v10;
}

- (BOOL)verifyTokenWithOutput:(id)output TID:(id)d FSR:(id)r
{
  outputCopy = output;
  dCopy = d;
  rCopy = r;
  selfCopy = self;
  v12 = sub_1C0D7832C();
  v14 = v13;

  v15 = sub_1C0D7832C();
  v17 = v16;

  v18 = sub_1C0D7832C();
  v20 = v19;

  LOBYTE(rCopy) = sub_1C0D3DDA4(v15, v17, v12, v14, v18, v20, *(&selfCopy->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer), *&selfCopy->oprfServer[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer], *&selfCopy->oprfServer[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 8], selfCopy->oprfServer[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 16]);
  sub_1C0CF448C(v18, v20);
  sub_1C0CF448C(v15, v17);
  sub_1C0CF448C(v12, v14);

  return rCopy & 1;
}

@end