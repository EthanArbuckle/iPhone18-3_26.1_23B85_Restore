@interface ATHMClient
- (_TtC16CryptoKitPrivate10ATHMClient)init;
- (_TtC16CryptoKitPrivate10ATHMClient)initWithKeyCommitmentsData:(id)a3 numBuckets:(int64_t)a4 deploymentID:(id)a5 error:(id *)a6;
- (id)deploymentID;
- (id)finalizeWithResponseData:(id)a3 nbuckets:(int64_t)a4 error:(id *)a5;
- (id)request;
@end

@implementation ATHMClient

- (_TtC16CryptoKitPrivate10ATHMClient)initWithKeyCommitmentsData:(id)a3 numBuckets:(int64_t)a4 deploymentID:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = sub_1C0D7832C();
  v12 = v11;

  v13 = sub_1C0D78A9C();
  v15 = v14;

  return ATHMClient.init(keyCommitmentsData:numBuckets:deploymentID:)(v10, v12, a4, v13, v15);
}

- (id)deploymentID
{
  v2 = *&self->client[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 88];
  v3 = *&self->client[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 96];
  sub_1C0D78BFC();
  v4 = sub_1C0D78A8C();

  return v4;
}

- (id)request
{
  v2 = *&self->client[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 72];
  v3 = self;
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

- (id)finalizeWithResponseData:(id)a3 nbuckets:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = sub_1C0D7832C();
  v11 = v10;

  v12 = sub_1C0D25DF0(v9, v11, a4);
  v14 = v13;

  sub_1C0CF448C(v9, v11);
  v15 = sub_1C0D7830C();
  sub_1C0CF448C(v12, v14);

  return v15;
}

- (_TtC16CryptoKitPrivate10ATHMClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end