@interface FLDPGBatchFactory
+ (BOOL)allowDPGBundleID:(id)d;
+ (BOOL)allowSubmissionForBundleID:(id)d isDPG:(BOOL)g;
+ (BOOL)isDPGBundleID:(id)d;
+ (id)makeBatchWithPayload:(id)payload bundleID:(id)d schema:(id)schema;
@end

@implementation FLDPGBatchFactory

+ (id)makeBatchWithPayload:(id)payload bundleID:(id)d schema:(id)schema
{
  payloadCopy = payload;
  dCopy = d;
  schemaCopy = schema;
  v10 = sub_24AB5FDCC();
  v12 = v11;

  v13 = sub_24AB6016C();
  v15 = v14;

  v16 = sub_24AB6016C();
  v18 = v17;

  v19 = sub_24AB46A04(v10, v12, v13, v15, v16, v18);

  sub_24AB4611C(v10, v12);

  return v19;
}

+ (BOOL)isDPGBundleID:(id)d
{
  sub_24AB6016C();
  v3 = sub_24AB47068();

  return v3 & 1;
}

+ (BOOL)allowDPGBundleID:(id)d
{
  v3 = sub_24AB6016C();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_24AB470D0(v3, v5);

  return v6 & 1;
}

+ (BOOL)allowSubmissionForBundleID:(id)d isDPG:(BOOL)g
{
  v5 = sub_24AB6016C();
  v7 = sub_24AB47250(v5, v6, g);

  return v7 & 1;
}

@end