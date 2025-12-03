@interface CKDPipeliningInfo
- (BOOL)isCancelled;
- (CKDOperationPipelining)operation;
- (id)_initWithRequest:(id)request operation:(id)operation;
- (void)addPerRequestCallbackBlock:(id)block;
- (void)cancelAndDisablePerRequestCallbackBlocks;
- (void)dealloc;
- (void)disablePerRequestCallbackBlocks;
- (void)resumeCallbackQueue;
- (void)suspendCallbackQueue;
@end

@implementation CKDPipeliningInfo

- (void)disablePerRequestCallbackBlocks
{
  obj = self;
  objc_sync_enter(obj);
  perRequestCallbackBlocks = obj->_perRequestCallbackBlocks;
  obj->_perRequestCallbackBlocks = 0;

  objc_sync_exit(obj);
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = selfCopy->_isCancelled;
  objc_sync_exit(selfCopy);

  return isCancelled;
}

- (void)dealloc
{
  if (objc_msgSend_perRequestCallbackQueueSuspended(self, a2, v2))
  {
    dispatch_resume(self->_perRequestCallbackQueue);
  }

  v4.receiver = self;
  v4.super_class = CKDPipeliningInfo;
  [(CKDPipeliningInfo *)&v4 dealloc];
}

- (id)_initWithRequest:(id)request operation:(id)operation
{
  requestCopy = request;
  operationCopy = operation;
  v37.receiver = self;
  v37.super_class = CKDPipeliningInfo;
  v9 = [(CKDPipeliningInfo *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = dispatch_group_create();
    perRequestCallbackGroup = v10->_perRequestCallbackGroup;
    v10->_perRequestCallbackGroup = v11;

    v13 = dispatch_group_create();
    perRequestGroup = v10->_perRequestGroup;
    v10->_perRequestGroup = v13;

    v17 = objc_msgSend_pipeliningDescription(operationCopy, v15, v16);
    v18 = v17;
    v19 = @"pipelining";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"com.apple.cloudkit.%@.callback.%p", v20, requestCopy);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_initially_inactive(v23);

    v27 = objc_msgSend_UTF8String(v22, v25, v26);
    v28 = dispatch_queue_create(v27, v24);
    perRequestCallbackQueue = v10->_perRequestCallbackQueue;
    v10->_perRequestCallbackQueue = v28;

    v30 = v10->_perRequestCallbackQueue;
    v33 = objc_msgSend_callbackQueue(operationCopy, v31, v32);
    dispatch_set_target_queue(v30, v33);

    dispatch_activate(v10->_perRequestCallbackQueue);
    v34 = objc_opt_new();
    perRequestCallbackBlocks = v10->_perRequestCallbackBlocks;
    v10->_perRequestCallbackBlocks = v34;

    v10->_isCancelled = 0;
  }

  return v10;
}

- (void)addPerRequestCallbackBlock:(id)block
{
  aBlock = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  perRequestCallbackBlocks = selfCopy->_perRequestCallbackBlocks;
  v6 = _Block_copy(aBlock);
  objc_msgSend_addObject_(perRequestCallbackBlocks, v7, v6);

  objc_sync_exit(selfCopy);
}

- (void)cancelAndDisablePerRequestCallbackBlocks
{
  obj = self;
  objc_sync_enter(obj);
  perRequestCallbackBlocks = obj->_perRequestCallbackBlocks;
  if (perRequestCallbackBlocks)
  {
    obj->_isCancelled = 1;
  }

  obj->_perRequestCallbackBlocks = 0;

  objc_sync_exit(obj);
}

- (void)suspendCallbackQueue
{
  if (self->_perRequestCallbackQueueSuspended)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKDOperation.m", 140, @"only one suspend is supported");
  }

  objc_msgSend_setPerRequestCallbackQueueSuspended_(self, a2, 1);
  perRequestCallbackQueue = self->_perRequestCallbackQueue;

  dispatch_suspend(perRequestCallbackQueue);
}

- (void)resumeCallbackQueue
{
  if (!self->_perRequestCallbackQueueSuspended)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKDOperation.m", 147, @"resume without a suspend");
  }

  objc_msgSend_setPerRequestCallbackQueueSuspended_(self, a2, 0);
  perRequestCallbackQueue = self->_perRequestCallbackQueue;

  dispatch_resume(perRequestCallbackQueue);
}

- (CKDOperationPipelining)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end