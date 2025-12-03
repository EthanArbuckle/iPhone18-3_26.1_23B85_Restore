@interface CKDLongLivedCallbackRelayOperation
- (BOOL)isInvalidated;
- (CKDLongLivedCallbackRelayOperation)operationWithID:(id)d receivedCallback:(id)callback;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)cancel;
- (void)main;
@end

@implementation CKDLongLivedCallbackRelayOperation

- (BOOL)isInvalidated
{
  isCancelled = objc_msgSend_isCancelled(self, a2, v2);
  if (isCancelled)
  {
    LOBYTE(isCancelled) = objc_msgSend_isFinished(self, v5, v6) ^ 1;
  }

  return isCancelled;
}

- (void)main
{
  v11 = objc_msgSend_deviceContext(self, a2, v2);
  v6 = objc_msgSend_operationInfoCache(v11, v4, v5);
  v9 = objc_msgSend_operationID(self, v7, v8);
  objc_msgSend_registerDelegate_forOperationWithID_(v6, v10, self, v9);
}

- (CKDLongLivedCallbackRelayOperation)operationWithID:(id)d receivedCallback:(id)callback
{
  callbackCopy = callback;
  if ((objc_msgSend_isCancelled(self, v5, v6) & 1) == 0)
  {
    v8 = objc_msgSend_invocation(callbackCopy, callbackCopy, v7);
    v11 = objc_msgSend_clientOperationCallbackProxy(self, v9, v10);
    objc_msgSend_setTarget_(v8, v12, v11);

    objc_msgSend_invoke(v8, v13, v14);
    if (objc_msgSend_isCompletionCallback(callbackCopy, v15, v16))
    {
      objc_msgSend_finishWithError_(self, v17, 0);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_deviceContext(self, v5, v6);
  v10 = objc_msgSend_operationInfoCache(v7, v8, v9);
  v13 = objc_msgSend_operationID(self, v11, v12);
  objc_msgSend_unregisterDelegate_forOperationWithID_(v10, v14, self, v13);

  v15.receiver = self;
  v15.super_class = CKDLongLivedCallbackRelayOperation;
  [(CKDOperation *)&v15 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = CKDLongLivedCallbackRelayOperation;
  [(CKDOperation *)&v18 cancel];
  if (objc_msgSend_isExecuting(self, v3, v4))
  {
    v7 = MEMORY[0x277CBC560];
    v8 = *MEMORY[0x277CBC120];
    v9 = objc_msgSend_operationID(self, v5, v6);
    v11 = objc_msgSend_errorWithDomain_code_format_(v7, v10, v8, 1, @"Operation %@ was cancelled", v9);

    objc_msgSend_finishWithError_(self, v12, v11);
LABEL_3:

    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = v13;
    v17 = objc_msgSend_operationID(self, v15, v16);
    *buf = 138543362;
    v20 = v17;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "CallbackRelayOperation %{public}@ was cancelled before starting", buf, 0xCu);

    goto LABEL_3;
  }

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
}

@end