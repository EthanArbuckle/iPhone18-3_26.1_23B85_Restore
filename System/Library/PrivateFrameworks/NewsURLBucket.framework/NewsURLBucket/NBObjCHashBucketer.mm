@interface NBObjCHashBucketer
- (int64_t)bucketForHash:(id)hash bucketCount:(int64_t)count;
@end

@implementation NBObjCHashBucketer

- (int64_t)bucketForHash:(id)hash bucketCount:(int64_t)count
{
  hashCopy = hash;
  selfCopy = self;
  v8 = sub_25C339CC0();
  v10 = v9;

  v11 = _s13NewsURLBucket12HashBucketerC6bucket3for0E5CountSi10Foundation4DataV_SitF_0(v8, v10, count);
  sub_25C335C20(v8, v10);

  return v11;
}

@end