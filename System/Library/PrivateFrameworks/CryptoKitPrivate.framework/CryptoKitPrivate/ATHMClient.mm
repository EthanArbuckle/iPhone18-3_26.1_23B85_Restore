@interface ATHMClient
- (_TtC16CryptoKitPrivate10ATHMClient)init;
- (_TtC16CryptoKitPrivate10ATHMClient)initWithKeyCommitmentsData:(id)data numBuckets:(int64_t)buckets deploymentID:(id)d error:(id *)error;
- (id)deploymentID;
- (id)finalizeWithResponseData:(id)data nbuckets:(int64_t)nbuckets error:(id *)error;
- (id)request;
@end

@implementation ATHMClient

- (_TtC16CryptoKitPrivate10ATHMClient)initWithKeyCommitmentsData:(id)data numBuckets:(int64_t)buckets deploymentID:(id)d error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  v10 = sub_1C0D7832C();
  v12 = v11;

  v13 = sub_1C0D78A9C();
  v15 = v14;

  return ATHMClient.init(keyCommitmentsData:numBuckets:deploymentID:)(v10, v12, buckets, v13, v15);
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

- (id)finalizeWithResponseData:(id)data nbuckets:(int64_t)nbuckets error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v9 = sub_1C0D7832C();
  v11 = v10;

  v12 = sub_1C0D25DF0(v9, v11, nbuckets);
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