@interface CKAtomBatchWriterOptions
- (CKAtomBatchWriterOptions)init;
@end

@implementation CKAtomBatchWriterOptions

- (CKAtomBatchWriterOptions)init
{
  v3.receiver = self;
  v3.super_class = CKAtomBatchWriterOptions;
  result = [(CKAtomBatchWriterOptions *)&v3 init];
  if (result)
  {
    *&result->_formatVersion = 3;
  }

  return result;
}

@end