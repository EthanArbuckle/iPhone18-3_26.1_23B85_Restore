@interface ATHMServer
- (_TtC16CryptoKitPrivate10ATHMServer)init;
- (id)deploymentID;
- (id)exportKeyCommitmentsAndReturnError:(id *)a3;
- (id)respondWithRequestData:(id)a3 metadata:(int64_t)a4 nbuckets:(int64_t)a5 error:(id *)a6;
- (int64_t)readMetadataWithPresentationData:(id)a3 nbuckets:(int64_t)a4;
@end

@implementation ATHMServer

- (id)deploymentID
{
  v2 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 104];
  v3 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 112];
  sub_1C0D78BFC();
  v4 = sub_1C0D78A8C();

  return v4;
}

- (id)exportKeyCommitmentsAndReturnError:(id *)a3
{
  v9 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 32];
  v10 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 48];
  v11 = *&self->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 64];
  v3 = self;
  v4 = sub_1C0D3A04C();
  v6 = v5;

  v7 = sub_1C0D7830C();
  sub_1C0CF448C(v4, v6);

  return v7;
}

- (id)respondWithRequestData:(id)a3 metadata:(int64_t)a4 nbuckets:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = self;
  v11 = sub_1C0D7832C();
  v13 = v12;

  v14 = sub_1C0D282F4(v11, v13, a4, a5);
  v16 = v15;

  sub_1C0CF448C(v11, v13);
  v17 = sub_1C0D7830C();
  sub_1C0CF448C(v14, v16);

  return v17;
}

- (int64_t)readMetadataWithPresentationData:(id)a3 nbuckets:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1C0D7832C();
  v10 = v9;

  sub_1C0D2B420(v8, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1C0D2F670(*(&v7->super.isa + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server), *&v7->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server], *&v7->server[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 8], a4, v11, v13, v15);
  v18 = v17;
  sub_1C0CF448C(v8, v10);

  return v18;
}

- (_TtC16CryptoKitPrivate10ATHMServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end