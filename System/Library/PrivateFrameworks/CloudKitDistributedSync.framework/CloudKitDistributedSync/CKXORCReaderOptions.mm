@interface CKXORCReaderOptions
- (CKXORCReaderOptions)initWithBatchSize:(unint64_t)a3;
@end

@implementation CKXORCReaderOptions

- (CKXORCReaderOptions)initWithBatchSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKXORCReaderOptions;
  result = [(CKXORCReaderOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = a3;
  }

  return result;
}

@end