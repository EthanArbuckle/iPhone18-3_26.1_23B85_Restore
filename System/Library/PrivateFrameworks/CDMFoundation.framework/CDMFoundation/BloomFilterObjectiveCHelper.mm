@interface BloomFilterObjectiveCHelper
- (id)getDecodedBFArrayWithData:(id)a3 error:(id *)a4;
- (id)getDecodedBFWithData:(id)a3 error:(id *)a4;
@end

@implementation BloomFilterObjectiveCHelper

- (id)getDecodedBFWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  OUTLINED_FUNCTION_1_31();
  v8 = sub_1DC3B8984();

  return v8;
}

- (id)getDecodedBFArrayWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  OUTLINED_FUNCTION_1_31();
  sub_1DC3B8B28();

  type metadata accessor for BloomFilter();
  v8 = sub_1DC517A0C();

  return v8;
}

@end