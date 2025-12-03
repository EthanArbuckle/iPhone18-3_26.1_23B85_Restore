@interface CKXORCWriterOptions
- (CKXORCWriterOptions)initWithBatchSize:(unint64_t)size;
@end

@implementation CKXORCWriterOptions

- (CKXORCWriterOptions)initWithBatchSize:(unint64_t)size
{
  v6.receiver = self;
  v6.super_class = CKXORCWriterOptions;
  result = [(CKXORCWriterOptions *)&v6 init];
  if (result)
  {
    if (size <= 1)
    {
      sizeCopy = 1;
    }

    else
    {
      sizeCopy = size;
    }

    result->_batchSize = sizeCopy;
    result->_batchCommitMarginPercentage = 1.0;
    *&result->_batchResizeIncrement = xmmword_243993590;
    *&result->_compressionKind = xmmword_2439935A0;
  }

  return result;
}

@end