@interface CKDFetchZoneChangesRequestOperationResult
- (CKDFetchZoneChangesRequestOperationResult)init;
@end

@implementation CKDFetchZoneChangesRequestOperationResult

- (CKDFetchZoneChangesRequestOperationResult)init
{
  v3.receiver = self;
  v3.super_class = CKDFetchZoneChangesRequestOperationResult;
  result = [(CKDFetchZoneChangesRequestOperationResult *)&v3 init];
  if (result)
  {
    result->_status = -1;
  }

  return result;
}

@end