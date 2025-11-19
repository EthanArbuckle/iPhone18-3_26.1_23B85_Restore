@interface CCDonateRequestManager
- (BOOL)_isActiveRequestId:(unsigned int)a3;
- (CCDonateRequestManager)init;
- (CCDonateRequestManager)initWithWriteAccess:(id)a3;
- (CCDonateRequestManager)initWithWriteAccess:(id)a3 changeNotifier:(id)a4 donationTimeout:(double)a5;
- (id)_dequeue;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)_enqueue:(id)a3;
- (void)_handleNextRequest;
- (void)completeRequest:(id)a3;
- (void)resume;
- (void)submitRequest:(id)a3;
- (void)suspend;
@end

@implementation CCDonateRequestManager

- (void)_beginTransaction
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_1DA444000, a2, a3, "Acquired OS transaction: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleNextRequest
{
  if (!self->_activeRequest)
  {
    v20 = v5;
    v21 = v4;
    v22 = v2;
    v23 = v3;
    if (!self->_suspended)
    {
      v7 = [(CCDonateRequestManager *)self _dequeue];
      activeRequest = self->_activeRequest;
      self->_activeRequest = v7;

      v9 = v7;
      v10 = v9;
      if (v9)
      {
        executionQueue = self->_executionQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __44__CCDonateRequestManager__handleNextRequest__block_invoke;
        block[3] = &unk_1E85C2790;
        v12 = v9;
        p_super = &v12->super;
        dispatch_async(executionQueue, block);
        LODWORD(executionQueue) = [(CCDonateRequest *)v12 requestId];
        v13 = dispatch_time(0, (self->_donationTimeout * 1000000000.0));
        registryQueue = self->_registryQueue;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __44__CCDonateRequestManager__handleNextRequest__block_invoke_23;
        v16[3] = &unk_1E85C2F68;
        v16[4] = self;
        v17 = executionQueue;
        dispatch_after(v13, registryQueue, v16);
        v15 = p_super;
      }

      else
      {
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(CCDonateRequestManager *)v15 _handleNextRequest];
        }
      }
    }
  }
}

- (id)_dequeue
{
  firstNode = self->_firstNode;
  if (firstNode)
  {
    if (firstNode == self->_lastNode)
    {
      self->_firstNode = 0;

      lastNode = self->_lastNode;
      self->_lastNode = 0;
    }

    else
    {
      v4 = [(CCDonateRequestQueueNode *)firstNode next];
      lastNode = self->_firstNode;
      self->_firstNode = v4;
    }

    v6 = [(CCDonateRequestQueueNode *)firstNode request];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __44__CCDonateRequestManager__handleNextRequest__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DA444000, v2, OS_LOG_TYPE_DEFAULT, "Handling donate request %@", &v6, 0xCu);
  }

  result = [*(a1 + 32) handle];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_endTransaction
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 16));
  OUTLINED_FUNCTION_0_2(&dword_1DA444000, a2, a3, "Releasing OS transaction: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (CCDonateRequestManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDonateRequestManager)initWithWriteAccess:(id)a3
{
  v4 = MEMORY[0x1E6993A60];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [(CCDonateRequestManager *)self initWithWriteAccess:v5 changeNotifier:v6 donationTimeout:1800.0];

  return v7;
}

- (CCDonateRequestManager)initWithWriteAccess:(id)a3 changeNotifier:(id)a4 donationTimeout:(double)a5
{
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = CCDonateRequestManager;
  v11 = [(CCDonateRequestManager *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_writeAccess, a3);
    objc_storeStrong(&v12->_changeNotifier, a4);
    v12->_donationTimeout = a5 * 1.1;
    v13 = [[CCDifferentialUpdaterFactory alloc] initWithWriteAccess:v12->_writeAccess changeNotifier:v12->_changeNotifier timeout:a5];
    updaterFactory = v12->_updaterFactory;
    v12->_updaterFactory = v13;

    v12->_eventIdCounter = 0;
    transaction = v12->_transaction;
    v12->_transaction = 0;

    v12->_transactionCounter = 0;
    v12->_suspended = 0;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("registryQueue", v16);
    registryQueue = v12->_registryQueue;
    v12->_registryQueue = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("executionQueue", v19);
    executionQueue = v12->_executionQueue;
    v12->_executionQueue = v20;
  }

  return v12;
}

- (void)_enqueue:(id)a3
{
  v4 = a3;
  obj = objc_opt_new();
  [(CCDonateRequestQueueNode *)obj setRequest:v4];

  if (self->_firstNode)
  {
    lastNode = self->_lastNode;
    p_lastNode = &self->_lastNode;
    [(CCDonateRequestQueueNode *)lastNode setNext:obj];
    firstNode = obj;
  }

  else
  {
    objc_storeStrong(&self->_firstNode, obj);
    firstNode = self->_firstNode;
    p_lastNode = &self->_lastNode;
  }

  v8 = firstNode;
  v9 = *p_lastNode;
  *p_lastNode = v8;
}

- (void)submitRequest:(id)a3
{
  v4 = a3;
  registryQueue = self->_registryQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CCDonateRequestManager_submitRequest___block_invoke;
  v7[3] = &unk_1E85C2F40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(registryQueue, v7);
}

uint64_t __40__CCDonateRequestManager_submitRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _beginTransaction];
  [*(a1 + 32) _enqueue:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _handleNextRequest];
}

- (void)completeRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    registryQueue = self->_registryQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__CCDonateRequestManager_completeRequest___block_invoke;
    v7[3] = &unk_1E85C2F40;
    v7[4] = self;
    v8 = v4;
    dispatch_async(registryQueue, v7);
  }
}

void __42__CCDonateRequestManager_completeRequest___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _isActiveRequestId:{objc_msgSend(*(a1 + 40), "requestId")}];
  v4 = __biome_log_for_category();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v2;
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "Donate request %@ handling complete", &v16, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    [*(a1 + 32) _handleNextRequest];
    [*(a1 + 32) _endTransaction];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__CCDonateRequestManager_completeRequest___block_invoke_cold_1(v2, v5, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isActiveRequestId:(unsigned int)a3
{
  activeRequest = self->_activeRequest;
  if (activeRequest)
  {
    LOBYTE(activeRequest) = [(CCDonateRequest *)activeRequest requestId]== a3;
  }

  return activeRequest;
}

- (void)suspend
{
  registryQueue = self->_registryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CCDonateRequestManager_suspend__block_invoke;
  block[3] = &unk_1E85C2790;
  block[4] = self;
  dispatch_async(registryQueue, block);
}

- (void)resume
{
  registryQueue = self->_registryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CCDonateRequestManager_resume__block_invoke;
  block[3] = &unk_1E85C2790;
  block[4] = self;
  dispatch_async(registryQueue, block);
}

uint64_t __44__CCDonateRequestManager__handleNextRequest__block_invoke_23(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) _isActiveRequestId:*(a1 + 40)];
  if (result)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__CCDonateRequestManager__handleNextRequest__block_invoke_23_cold_1(v1 + 2, v1, v3);
    }

    return [*(*v1 + 64) timeout];
  }

  return result;
}

void __42__CCDonateRequestManager_completeRequest___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_1DA444000, a2, a3, "Donate request %@ no longer active.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __44__CCDonateRequestManager__handleNextRequest__block_invoke_23_cold_1(int *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a2 + 24);
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_error_impl(&dword_1DA444000, log, OS_LOG_TYPE_ERROR, "Expiring Donate requestId: %u after %lf seconds", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end