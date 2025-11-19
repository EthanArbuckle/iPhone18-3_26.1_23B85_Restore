@interface TDMServer
- (BOOL)verifyTokenWithOutput:(id)a3 TID:(id)a4 FSR:(id)a5;
- (id)evaluateWithBlindedElement:(id)a3 error:(id *)a4;
- (id)info;
- (id)publicKey;
@end

@implementation TDMServer

- (id)publicKey
{
  v2 = self;
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

- (id)evaluateWithBlindedElement:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1C0D7832C();
  v9 = v8;

  v10 = sub_1C0D40E0C(v7, v9);
  sub_1C0CF448C(v7, v9);

  return v10;
}

- (BOOL)verifyTokenWithOutput:(id)a3 TID:(id)a4 FSR:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1C0D7832C();
  v14 = v13;

  v15 = sub_1C0D7832C();
  v17 = v16;

  v18 = sub_1C0D7832C();
  v20 = v19;

  LOBYTE(v10) = sub_1C0D3DDA4(v15, v17, v12, v14, v18, v20, *(&v11->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer), *&v11->oprfServer[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer], *&v11->oprfServer[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 8], v11->oprfServer[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 16]);
  sub_1C0CF448C(v18, v20);
  sub_1C0CF448C(v15, v17);
  sub_1C0CF448C(v12, v14);

  return v10 & 1;
}

@end