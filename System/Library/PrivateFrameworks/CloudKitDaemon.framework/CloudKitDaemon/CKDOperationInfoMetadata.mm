@interface CKDOperationInfoMetadata
- (CKDOperationInfoMetadata)initWithOperationInfo:(id)a3 lastAttemptDate:(id)a4 retryNumber:(id)a5;
@end

@implementation CKDOperationInfoMetadata

- (CKDOperationInfoMetadata)initWithOperationInfo:(id)a3 lastAttemptDate:(id)a4 retryNumber:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = CKDOperationInfoMetadata;
  v12 = [(CKDOperationInfoMetadata *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationInfo, a3);
    v16 = objc_msgSend_copy(v10, v14, v15);
    lastAttemptDate = v13->_lastAttemptDate;
    v13->_lastAttemptDate = v16;

    v20 = objc_msgSend_copy(v11, v18, v19);
    retryNumber = v13->_retryNumber;
    v13->_retryNumber = v20;
  }

  return v13;
}

@end