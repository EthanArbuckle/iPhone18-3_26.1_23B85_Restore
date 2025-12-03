@interface ATHMKeyCommitments
+ (BOOL)verifyWithKeyCommitmentsData:(id)data numBuckets:(int64_t)buckets deploymentID:(id)d;
+ (id)getKeyIDWithKeyCommitmentsData:(id)data;
- (_TtC16CryptoKitPrivate18ATHMKeyCommitments)init;
@end

@implementation ATHMKeyCommitments

+ (BOOL)verifyWithKeyCommitmentsData:(id)data numBuckets:(int64_t)buckets deploymentID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v9 = sub_1C0D7832C();
  v11 = v10;

  v12 = sub_1C0D78A9C();
  v14 = v13;

  LOBYTE(dCopy) = _s16CryptoKitPrivate18ATHMKeyCommitmentsC6verify03keyE4Data10numBuckets12deploymentIDSb10Foundation0H0V_SiSStFZ_0(v9, v11, buckets, v12, v14);

  sub_1C0CF448C(v9, v11);
  return dCopy & 1;
}

+ (id)getKeyIDWithKeyCommitmentsData:(id)data
{
  dataCopy = data;
  v4 = sub_1C0D7832C();
  v6 = v5;

  v7 = sub_1C0D24E1C(v4, v6);
  v9 = v8;
  sub_1C0CF448C(v4, v6);
  v10 = sub_1C0D7830C();
  sub_1C0CF448C(v7, v9);

  return v10;
}

- (_TtC16CryptoKitPrivate18ATHMKeyCommitments)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ATHMKeyCommitments();
  return [(ATHMKeyCommitments *)&v3 init];
}

@end