@interface CKXORCReaderOptions
- (CKXORCReaderOptions)initWithBatchSize:(unint64_t)size;
@end

@implementation CKXORCReaderOptions

- (CKXORCReaderOptions)initWithBatchSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = CKXORCReaderOptions;
  result = [(CKXORCReaderOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = size;
  }

  return result;
}

@end