@interface CKDConcreteMMCSOperation
- (BOOL)finishWithAssetDownloadStagingInfo:(id)a3 fileURL:(id *)a4 fileHandle:(id *)a5 error:(id *)a6;
- (CKDConcreteMMCSOperation)initWithOperation:(id)a3;
- (id)openFileWithOpenInfo:(id)a3 error:(id *)a4;
@end

@implementation CKDConcreteMMCSOperation

- (CKDConcreteMMCSOperation)initWithOperation:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CKDConcreteMMCSOperation;
  v7 = [(CKDConcreteMMCSOperation *)&v25 init];
  if (v7)
  {
    v8 = objc_msgSend_operationID(v4, v5, v6);
    operationID = v7->_operationID;
    v7->_operationID = v8;

    v12 = objc_msgSend_operationInfo(v4, v10, v11);
    operationInfo = v7->_operationInfo;
    v7->_operationInfo = v12;

    v16 = objc_msgSend_container(v4, v14, v15);
    container = v7->_container;
    v7->_container = v16;

    v20 = objc_msgSend_clientOperationCallbackProxy(v4, v18, v19);
    clientOperationCallbackProxy = v7->_clientOperationCallbackProxy;
    v7->_clientOperationCallbackProxy = v20;

    v7->_isLongLived = objc_msgSend_isLongLived(v4, v22, v23);
  }

  return v7;
}

- (id)openFileWithOpenInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_clientOperationCallbackProxy(self, v7, v8);
  v11 = objc_msgSend_openFileWithCallbackProxy_openInfo_error_(CKDOperation, v10, v9, v6, a4);

  return v11;
}

- (BOOL)finishWithAssetDownloadStagingInfo:(id)a3 fileURL:(id *)a4 fileHandle:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v13 = objc_msgSend_clientOperationCallbackProxy(self, v11, v12);
  LOBYTE(a6) = objc_msgSend_finishWithCallbackProxy_assetDownloadStagingInfo_fileURL_fileHandle_error_(CKDOperation, v14, v13, v10, a4, a5, a6);

  return a6;
}

@end