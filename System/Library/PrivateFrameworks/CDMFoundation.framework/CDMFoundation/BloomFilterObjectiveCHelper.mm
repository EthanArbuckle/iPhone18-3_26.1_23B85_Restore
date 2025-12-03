@interface BloomFilterObjectiveCHelper
- (id)getDecodedBFArrayWithData:(id)data error:(id *)error;
- (id)getDecodedBFWithData:(id)data error:(id *)error;
@end

@implementation BloomFilterObjectiveCHelper

- (id)getDecodedBFWithData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  OUTLINED_FUNCTION_1_31();
  v8 = sub_1DC3B8984();

  return v8;
}

- (id)getDecodedBFArrayWithData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  OUTLINED_FUNCTION_1_31();
  sub_1DC3B8B28();

  type metadata accessor for BloomFilter();
  v8 = sub_1DC517A0C();

  return v8;
}

@end