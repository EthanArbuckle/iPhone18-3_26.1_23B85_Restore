@interface NBHashBucketer
- (NBHashBucketer)init;
- (unint64_t)bucketForHash:(id)hash bucketCount:(unint64_t)count;
@end

@implementation NBHashBucketer

- (NBHashBucketer)init
{
  v6.receiver = self;
  v6.super_class = NBHashBucketer;
  v2 = [(NBHashBucketer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NBObjCHashBucketer);
    bucketer = v2->_bucketer;
    v2->_bucketer = v3;
  }

  return v2;
}

- (unint64_t)bucketForHash:(id)hash bucketCount:(unint64_t)count
{
  hashCopy = hash;
  bucketer = [(NBHashBucketer *)self bucketer];
  v8 = [bucketer bucketForHash:hashCopy bucketCount:count];

  return v8;
}

@end