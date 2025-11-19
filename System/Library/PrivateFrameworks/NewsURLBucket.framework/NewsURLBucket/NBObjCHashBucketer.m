@interface NBObjCHashBucketer
- (int64_t)bucketForHash:(id)a3 bucketCount:(int64_t)a4;
@end

@implementation NBObjCHashBucketer

- (int64_t)bucketForHash:(id)a3 bucketCount:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_25C339CC0();
  v10 = v9;

  v11 = _s13NewsURLBucket12HashBucketerC6bucket3for0E5CountSi10Foundation4DataV_SitF_0(v8, v10, a4);
  sub_25C335C20(v8, v10);

  return v11;
}

@end