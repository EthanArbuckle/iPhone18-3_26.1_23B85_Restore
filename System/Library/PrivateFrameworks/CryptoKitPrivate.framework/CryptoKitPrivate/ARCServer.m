@interface ARCServer
- (BOOL)verifyWithPresentationData:(id)a3 nonce:(int64_t)a4 requestContext:(id)a5 presentationContext:(id)a6 presentationLimit:(int64_t)a7;
- (id)getServerPublicKey;
- (id)respondWithRequestData:(id)a3 error:(id *)a4;
@end

@implementation ARCServer

- (id)respondWithRequestData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1C0D7832C();
  v9 = v8;

  v10 = sub_1C0D0D43C(v7, v9);
  v12 = v11;

  sub_1C0CF448C(v7, v9);
  v13 = sub_1C0D7830C();
  sub_1C0CF448C(v10, v12);

  return v13;
}

- (BOOL)verifyWithPresentationData:(id)a3 nonce:(int64_t)a4 requestContext:(id)a5 presentationContext:(id)a6 presentationLimit:(int64_t)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = sub_1C0D7832C();
  v16 = v15;

  v17 = sub_1C0D7832C();
  v19 = v18;

  v20 = sub_1C0D7832C();
  v22 = v21;

  v23 = (v13 + OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server);
  sub_1C0D11CE4(v14, v16, *&v13->server[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server + 72], *&v13->server[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server + 80], v31);
  v24 = v23[5];
  v42 = v23[4];
  v43 = v24;
  v44 = v23[6];
  v25 = v23[1];
  v38 = *v23;
  v39 = v25;
  v26 = v23[3];
  v40 = v23[2];
  v41 = v26;
  LOBYTE(v23) = sub_1C0D06CA0(v31, v17, v19, v20, v22, a7, a4);
  sub_1C0CF448C(v20, v22);
  sub_1C0CF448C(v17, v19);
  sub_1C0CF448C(v14, v16);

  v37 = v31[0];
  sub_1C0D13578(&v37, &qword_1EBE6D478, &unk_1C0D7C850);
  v36 = v31[1];
  sub_1C0D13578(&v36, &qword_1EBE6D478, &unk_1C0D7C850);
  v35 = v31[2];
  sub_1C0D13578(&v35, &qword_1EBE6D478, &unk_1C0D7C850);
  v34 = v31[3];
  sub_1C0D13578(&v34, &qword_1EBE6D478, &unk_1C0D7C850);
  v27 = v31[5];
  v33 = v31[4];
  sub_1C0D13578(&v33, &qword_1EBE6D480, &unk_1C0D7BF30);
  v32 = v27;
  sub_1C0D13578(&v32, &qword_1EBE6D488, &qword_1C0D7C860);
  return v23 & 1;
}

- (id)getServerPublicKey
{
  v2 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server + 24];
  v3 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server + 32];
  v4 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server + 40];
  v5 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server + 80];
  v6 = self;
  v7 = sub_1C0D12F84(v5, v2, v3, v4);
  v9 = v8;

  v10 = sub_1C0D7830C();
  sub_1C0CF448C(v7, v9);

  return v10;
}

@end