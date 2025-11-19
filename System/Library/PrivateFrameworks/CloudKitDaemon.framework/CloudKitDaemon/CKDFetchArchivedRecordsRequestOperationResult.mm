@interface CKDFetchArchivedRecordsRequestOperationResult
- (CKDFetchArchivedRecordsRequestOperationResult)init;
@end

@implementation CKDFetchArchivedRecordsRequestOperationResult

- (CKDFetchArchivedRecordsRequestOperationResult)init
{
  v3.receiver = self;
  v3.super_class = CKDFetchArchivedRecordsRequestOperationResult;
  result = [(CKDFetchArchivedRecordsRequestOperationResult *)&v3 init];
  if (result)
  {
    result->_status = 1;
  }

  return result;
}

@end