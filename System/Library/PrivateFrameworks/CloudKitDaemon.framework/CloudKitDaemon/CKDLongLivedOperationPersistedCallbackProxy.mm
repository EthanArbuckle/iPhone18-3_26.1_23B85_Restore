@interface CKDLongLivedOperationPersistedCallbackProxy
- (CKDLongLivedOperationPersistedCallbackProxy)initWithOperationID:(id)d callbackProtocol:(id)protocol completionSelector:(SEL)selector operationInfoCache:(id)cache;
- (SEL)completionSelector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addBarrierBlock:(id)block;
- (void)forwardInvocation:(id)invocation;
- (void)setCompletionSelector:(SEL)selector;
@end

@implementation CKDLongLivedOperationPersistedCallbackProxy

- (CKDLongLivedOperationPersistedCallbackProxy)initWithOperationID:(id)d callbackProtocol:(id)protocol completionSelector:(SEL)selector operationInfoCache:(id)cache
{
  protocolCopy = protocol;
  cacheCopy = cache;
  v14 = objc_msgSend_copy(d, v12, v13);
  operationID = self->_operationID;
  self->_operationID = v14;

  callbackProtocol = self->_callbackProtocol;
  self->_callbackProtocol = protocolCopy;
  v17 = protocolCopy;

  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  operationInfoCache = self->_operationInfoCache;
  self->_completionSelector = selectorCopy;
  self->_operationInfoCache = cacheCopy;

  return self;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_callbackProtocol(self, a2, selector);
  MethodDescription = protocol_getMethodDescription(v5, selector, 1, 1);

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
      v13 = NSStringFromSelector(selector);
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

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v4, v5);
  v8 = objc_msgSend_callbackProtocol(self, v6, v7);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(invocationCopy, v9, 0, v8);

  v12 = objc_msgSend_selector(invocationCopy, v10, v11);
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
  isCompletionCallback = objc_msgSend_initWithProtocol_invocation_isCompletionCallback_(v15, v19, v18, invocationCopy, isEqual);

  v23 = objc_msgSend_operationInfoCache(self, v21, v22);
  v26 = objc_msgSend_operationID(self, v24, v25);
  objc_msgSend_archiveCallback_forOperationID_(v23, v27, isCompletionCallback, v26);
}

- (void)addBarrierBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
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

- (void)setCompletionSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_completionSelector = selectorCopy;
}

@end