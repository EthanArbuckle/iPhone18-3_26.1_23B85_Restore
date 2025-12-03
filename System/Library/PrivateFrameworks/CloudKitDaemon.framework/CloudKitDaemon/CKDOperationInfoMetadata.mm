@interface CKDOperationInfoMetadata
- (CKDOperationInfoMetadata)initWithOperationInfo:(id)info lastAttemptDate:(id)date retryNumber:(id)number;
@end

@implementation CKDOperationInfoMetadata

- (CKDOperationInfoMetadata)initWithOperationInfo:(id)info lastAttemptDate:(id)date retryNumber:(id)number
{
  infoCopy = info;
  dateCopy = date;
  numberCopy = number;
  v23.receiver = self;
  v23.super_class = CKDOperationInfoMetadata;
  v12 = [(CKDOperationInfoMetadata *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationInfo, info);
    v16 = objc_msgSend_copy(dateCopy, v14, v15);
    lastAttemptDate = v13->_lastAttemptDate;
    v13->_lastAttemptDate = v16;

    v20 = objc_msgSend_copy(numberCopy, v18, v19);
    retryNumber = v13->_retryNumber;
    v13->_retryNumber = v20;
  }

  return v13;
}

@end