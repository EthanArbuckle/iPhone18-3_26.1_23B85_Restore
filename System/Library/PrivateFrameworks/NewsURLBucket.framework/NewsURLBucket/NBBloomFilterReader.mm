@interface NBBloomFilterReader
- (BOOL)maybeContainsString:(id)string;
- (NBBloomFilterReader)initWithData:(id)data hashFunctionCount:(unint64_t)count;
@end

@implementation NBBloomFilterReader

- (NBBloomFilterReader)initWithData:(id)data hashFunctionCount:(unint64_t)count
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = NBBloomFilterReader;
  v7 = [(NBBloomFilterReader *)&v11 init];
  if (v7)
  {
    v8 = [[NBObjCBloomFilterReader alloc] initWithData:dataCopy hashFunctionCount:count];
    bloomFilterReader = v7->_bloomFilterReader;
    v7->_bloomFilterReader = v8;
  }

  return v7;
}

- (BOOL)maybeContainsString:(id)string
{
  stringCopy = string;
  bloomFilterReader = [(NBBloomFilterReader *)self bloomFilterReader];
  v6 = [bloomFilterReader maybeContainsString:stringCopy];

  return v6;
}

@end