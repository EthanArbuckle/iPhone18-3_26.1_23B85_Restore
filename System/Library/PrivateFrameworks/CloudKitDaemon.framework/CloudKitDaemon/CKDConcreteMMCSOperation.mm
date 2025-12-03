@interface CKDConcreteMMCSOperation
- (BOOL)finishWithAssetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error;
- (CKDConcreteMMCSOperation)initWithOperation:(id)operation;
- (id)openFileWithOpenInfo:(id)info error:(id *)error;
@end

@implementation CKDConcreteMMCSOperation

- (CKDConcreteMMCSOperation)initWithOperation:(id)operation
{
  operationCopy = operation;
  v25.receiver = self;
  v25.super_class = CKDConcreteMMCSOperation;
  v7 = [(CKDConcreteMMCSOperation *)&v25 init];
  if (v7)
  {
    v8 = objc_msgSend_operationID(operationCopy, v5, v6);
    operationID = v7->_operationID;
    v7->_operationID = v8;

    v12 = objc_msgSend_operationInfo(operationCopy, v10, v11);
    operationInfo = v7->_operationInfo;
    v7->_operationInfo = v12;

    v16 = objc_msgSend_container(operationCopy, v14, v15);
    container = v7->_container;
    v7->_container = v16;

    v20 = objc_msgSend_clientOperationCallbackProxy(operationCopy, v18, v19);
    clientOperationCallbackProxy = v7->_clientOperationCallbackProxy;
    v7->_clientOperationCallbackProxy = v20;

    v7->_isLongLived = objc_msgSend_isLongLived(operationCopy, v22, v23);
  }

  return v7;
}

- (id)openFileWithOpenInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v9 = objc_msgSend_clientOperationCallbackProxy(self, v7, v8);
  v11 = objc_msgSend_openFileWithCallbackProxy_openInfo_error_(CKDOperation, v10, v9, infoCopy, error);

  return v11;
}

- (BOOL)finishWithAssetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error
{
  infoCopy = info;
  v13 = objc_msgSend_clientOperationCallbackProxy(self, v11, v12);
  LOBYTE(error) = objc_msgSend_finishWithCallbackProxy_assetDownloadStagingInfo_fileURL_fileHandle_error_(CKDOperation, v14, v13, infoCopy, l, handle, error);

  return error;
}

@end