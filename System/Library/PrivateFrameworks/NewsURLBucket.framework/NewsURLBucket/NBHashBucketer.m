@interface NBHashBucketer
- (NBHashBucketer)init;
- (unint64_t)bucketForHash:(id)a3 bucketCount:(unint64_t)a4;
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

- (unint64_t)bucketForHash:(id)a3 bucketCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NBHashBucketer *)self bucketer];
  v8 = [v7 bucketForHash:v6 bucketCount:a4];

  return v8;
}

@end