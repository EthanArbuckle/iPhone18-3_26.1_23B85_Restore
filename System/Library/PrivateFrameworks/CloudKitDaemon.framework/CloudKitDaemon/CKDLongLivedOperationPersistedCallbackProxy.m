@interface CKDLongLivedOperationPersistedCallbackProxy
- (CKDLongLivedOperationPersistedCallbackProxy)initWithOperationID:(id)a3 callbackProtocol:(id)a4 completionSelector:(SEL)a5 operationInfoCache:(id)a6;
- (SEL)completionSelector;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addBarrierBlock:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)setCompletionSelector:(SEL)a3;
@end

@implementation CKDLongLivedOperationPersistedCallbackProxy

- (CKDLongLivedOperationPersistedCallbackProxy)initWithOperationID:(id)a3 callbackProtocol:(id)a4 completionSelector:(SEL)a5 operationInfoCache:(id)a6
{
  v10 = a4;
  v11 = a6;
  v14 = objc_msgSend_copy(a3, v12, v13);
  operationID = self->_operationID;
  self->_operationID = v14;

  callbackProtocol = self->_callbackProtocol;
  self->_callbackProtocol = v10;
  v17 = v10;

  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = 0;
  }

  operationInfoCache = self->_operationInfoCache;
  self->_completionSelector = v18;
  self->_operationInfoCache = v11;

  return self;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_callbackProtocol(self, a2, a3);
  MethodDescription = protocol_getMethodDescription(v5, a3, 1, 1);

  if (MethodDescription.name)
  {
    v8 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], v7, MethodDescription.types);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = v9;
      v13 = NSStringFromSelector(a3);
      v16 = objc_msgSend_callbackProtocol(self, v14, v15);
      v17 = NSStringFromProtocol(v16);
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v17;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Unexpectedly found nil for SEL %@ in protocol named %@", &v18, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v28 = a3;
  objc_msgSend_retainArguments(v28, v4, v5);
  v8 = objc_msgSend_callbackProtocol(self, v6, v7);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v28, v9, 0, v8);

  v12 = objc_msgSend_selector(v28, v10, v11);
  if (self->_completionSelector)
  {
    completionSelector = self->_completionSelector;
  }

  else
  {
    completionSelector = 0;
  }

  isEqual = sel_isEqual(v12, completionSelector);
  v15 = [CKDLongLivedOperationPersistedCallback alloc];
  v18 = objc_msgSend_callbackProtocol(self, v16, v17);
  isCompletionCallback = objc_msgSend_initWithProtocol_invocation_isCompletionCallback_(v15, v19, v18, v28, isEqual);

  v23 = objc_msgSend_operationInfoCache(self, v21, v22);
  v26 = objc_msgSend_operationID(self, v24, v25);
  objc_msgSend_archiveCallback_forOperationID_(v23, v27, isCompletionCallback, v26);
}

- (void)addBarrierBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (SEL)completionSelector
{
  if (self->_completionSelector)
  {
    return self->_completionSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setCompletionSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_completionSelector = v3;
}

@end