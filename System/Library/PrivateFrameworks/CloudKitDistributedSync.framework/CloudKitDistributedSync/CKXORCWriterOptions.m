@interface CKXORCWriterOptions
- (CKXORCWriterOptions)initWithBatchSize:(unint64_t)a3;
@end

@implementation CKXORCWriterOptions

- (CKXORCWriterOptions)initWithBatchSize:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CKXORCWriterOptions;
  result = [(CKXORCWriterOptions *)&v6 init];
  if (result)
  {
    if (a3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3;
    }

    result->_batchSize = v5;
    result->_batchCommitMarginPercentage = 1.0;
    *&result->_batchResizeIncrement = xmmword_243993590;
    *&result->_compressionKind = xmmword_2439935A0;
  }

  return result;
}

@end