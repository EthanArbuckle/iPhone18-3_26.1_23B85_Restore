@interface NBBloomFilterReader
- (BOOL)maybeContainsString:(id)a3;
- (NBBloomFilterReader)initWithData:(id)a3 hashFunctionCount:(unint64_t)a4;
@end

@implementation NBBloomFilterReader

- (NBBloomFilterReader)initWithData:(id)a3 hashFunctionCount:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NBBloomFilterReader;
  v7 = [(NBBloomFilterReader *)&v11 init];
  if (v7)
  {
    v8 = [[NBObjCBloomFilterReader alloc] initWithData:v6 hashFunctionCount:a4];
    bloomFilterReader = v7->_bloomFilterReader;
    v7->_bloomFilterReader = v8;
  }

  return v7;
}

- (BOOL)maybeContainsString:(id)a3
{
  v4 = a3;
  v5 = [(NBBloomFilterReader *)self bloomFilterReader];
  v6 = [v5 maybeContainsString:v4];

  return v6;
}

@end