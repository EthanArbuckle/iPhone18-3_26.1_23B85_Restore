@interface CKDOperationCallbackProxy
- (CKDOperationCallbackProxy)initWithEndpoint:(id)endpoint;
- (Protocol)protocol;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)activate;
- (void)addBarrierBlock:(id)block;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)invalidate;
@end

@implementation CKDOperationCallbackProxy

- (void)activate
{
  v4 = objc_msgSend_endpoint(self, a2, v2);

  if (v4)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!objc_msgSend_state(obj, v5, v6))
    {
      v7 = objc_alloc(MEMORY[0x277CCAE80]);
      v10 = objc_msgSend_endpoint(obj, v8, v9);
      v13 = objc_msgSend_endpoint(v10, v11, v12);
      v15 = objc_msgSend_initWithListenerEndpoint_(v7, v14, v13);
      objc_msgSend_setConnection_(obj, v16, v15);

      v19 = objc_msgSend_endpoint(obj, v17, v18);
      v22 = objc_msgSend_interface(v19, v20, v21);
      v25 = objc_msgSend_connection(obj, v23, v24);
      objc_msgSend_setRemoteObjectInterface_(v25, v26, v22);

      v29 = objc_msgSend_connection(obj, v27, v28);
      objc_msgSend_activate(v29, v30, v31);

      objc_msgSend_setState_(obj, v32, 1);
    }

    objc_sync_exit(obj);
  }
}

- (Protocol)protocol
{
  v4 = objc_msgSend_endpoint(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_endpoint(self, v5, v6);
    v10 = objc_msgSend_interface(v7, v8, v9);
    v13 = objc_msgSend_protocol(v10, v11, v12);
  }

  else
  {
    v13 = &unk_2838E3DC0;
  }

  return v13;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if (objc_msgSend_state(obj, v2, v3) == 1)
  {
    v6 = objc_msgSend_connection(obj, v4, v5);
    objc_msgSend_invalidate(v6, v7, v8);

    objc_msgSend_setConnection_(obj, v9, 0);
    objc_msgSend_setState_(obj, v10, 2);
  }

  objc_sync_exit(obj);
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKDOperationCallbackProxy;
  [(CKDOperationCallbackProxy *)&v4 dealloc];
}

- (CKDOperationCallbackProxy)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = CKDOperationCallbackProxy;
  v6 = [(CKDOperationCallbackProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = objc_msgSend_protocol(self, a2, selector);
  MethodDescription = protocol_getMethodDescription(v5, selector, 1, 1);

  if (!MethodDescription.name || (objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], v7, MethodDescription.types), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10.receiver = self;
    v10.super_class = CKDOperationCallbackProxy;
    v8 = [(CKDOperationCallbackProxy *)&v10 methodSignatureForSelector:selector];
  }

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v5, v6);
  v9 = objc_msgSend_endpoint(self, v7, v8);

  if (v9)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = objc_msgSend_state(selfCopy, v13, v14);
    if (v15)
    {
      if (v15 == 1)
      {
        voucher_copy_without_importance();
        voucher_adopt();
        v25 = objc_msgSend_connection(selfCopy, v23, v24);
        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = sub_22518DB58;
        v36 = &unk_278548128;
        v26 = invocationCopy;
        v37 = v26;
        v38 = selfCopy;
        v28 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v25, v27, &v33);
        objc_msgSend_forwardInvocation_(v28, v29, v26, v33, v34, v35, v36);
      }

      else if (v15 == 2)
      {
        v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 1000, @"Not forwarding invocation, proxy has been invalidated");
        v20 = objc_msgSend_protocol(selfCopy, v18, v19);
        objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(invocationCopy, v21, v17, v20);
LABEL_9:
      }

      objc_sync_exit(selfCopy);
      goto LABEL_11;
    }

    v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 1000, @"Not forwarding invocation, proxy has not been activated");
    v20 = objc_msgSend_protocol(selfCopy, v30, v31);
    objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(invocationCopy, v32, v17, v20);
    goto LABEL_9;
  }

  selfCopy = objc_msgSend_protocol(self, v10, v11);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(invocationCopy, v22, 0, selfCopy);
LABEL_11:
}

- (void)addBarrierBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_state(selfCopy, v5, v6);
  if (!v7)
  {
LABEL_4:
    blockCopy[2]();
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v10 = objc_msgSend_connection(selfCopy, v8, v9);
  objc_msgSend_addBarrierBlock_(v10, v11, blockCopy);

LABEL_6:
  objc_sync_exit(selfCopy);
}

@end