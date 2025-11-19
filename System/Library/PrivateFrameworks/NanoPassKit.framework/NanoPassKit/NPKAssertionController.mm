@interface NPKAssertionController
- (NPKAssertionController)initWithAssertionFactory:(id)a3 invalidator:(id)a4;
- (void)_inQueue_releaseAssertionWithOwner:(id)a3;
- (void)_releaseAssertionFromOwnerObject:(id)a3 withDelay:(double)a4 completion:(id)a5;
- (void)createAssertionForOwnerObject:(id)a3 withReason:(id)a4;
- (void)releaseAssertionFromOwnerObject:(id)a3;
@end

@implementation NPKAssertionController

- (NPKAssertionController)initWithAssertionFactory:(id)a3 invalidator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = NPKAssertionController;
  v8 = [(NPKAssertionController *)&v20 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    assertionFactory = v8->_assertionFactory;
    v8->_assertionFactory = v9;

    v11 = _Block_copy(v7);
    assertionInvalidator = v8->_assertionInvalidator;
    v8->_assertionInvalidator = v11;

    v13 = [MEMORY[0x277CCAB00] pk_weakPointerPersonalityToStrongObjectsMapTable];
    assertionMaps = v8->_assertionMaps;
    v8->_assertionMaps = v13;

    v15 = dispatch_queue_create("com.apple.NanoPassbook.alert.assertionManager", 0);
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = v15;

    v17 = objc_alloc_init(NPKSemaphoreQueue);
    semaphoreQueue = v8->_semaphoreQueue;
    v8->_semaphoreQueue = v17;
  }

  return v8;
}

- (void)createAssertionForOwnerObject:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  semaphoreQueue = self->_semaphoreQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__NPKAssertionController_createAssertionForOwnerObject_withReason___block_invoke;
  v11[3] = &unk_279945880;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(NPKSemaphoreQueue *)semaphoreQueue dispatchSync:v11];
}

void __67__NPKAssertionController_createAssertionForOwnerObject_withReason___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = (*(*(*(a1 + 32) + 8) + 16))();
  if (v3)
  {
    v4 = [[NPKAssertionWrapper alloc] initWithAssertion:v3 invalidator:*(*(a1 + 32) + 16)];
    [*(a1 + 32) _inQueue_releaseAssertionWithOwner:*(a1 + 48)];
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v14 = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Obtained assertion:%@ for Owner:%@", &v14, 0x16u);
      }
    }

    [*(*(a1 + 32) + 24) setObject:v4 forKey:*(a1 + 48)];
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (!v11)
    {
      goto LABEL_8;
    }

    v4 = pk_General_log();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_25B300000, &v4->super, OS_LOG_TYPE_ERROR, "Error: Attempted to create assertion for %@ with reason: %@, but received nil.", &v14, 0x16u);
    }
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)releaseAssertionFromOwnerObject:(id)a3
{
  v4 = a3;
  semaphoreQueue = self->_semaphoreQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NPKAssertionController_releaseAssertionFromOwnerObject___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NPKSemaphoreQueue *)semaphoreQueue dispatchSync:v7];
}

- (void)_releaseAssertionFromOwnerObject:(id)a3 withDelay:(double)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = 0;
  semaphoreQueue = self->_semaphoreQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke;
  v24[3] = &unk_279946940;
  v26 = &v27;
  v24[4] = self;
  v11 = v8;
  v25 = v11;
  [(NPKSemaphoreQueue *)semaphoreQueue dispatchSync:v24];
  if (v28[5])
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v28[5];
        *buf = 138412802;
        v34 = v15;
        v35 = 2112;
        v36 = v11;
        v37 = 2048;
        v38 = a4;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Scheduled to invalidate assertion:%@ for owner:%@ with delay:%f", buf, 0x20u);
      }
    }

    objc_initWeak(buf, self);
    v16 = dispatch_time(0, (a4 * 1000000000.0));
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke_59;
    block[3] = &unk_279948E20;
    objc_copyWeak(&v23, buf);
    v20 = v11;
    v22 = &v27;
    v21 = v9;
    dispatch_after(v16, internalQueue, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];
}

void __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke_59(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained[5];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke_2;
  v16 = &unk_2799454E0;
  v17 = WeakRetained;
  v18 = *(a1 + 32);
  [v3 dispatchSync:&v13];
  v4 = [*(*(*(a1 + 48) + 8) + 40) invalidateAssertionExpected:{1, v13, v14, v15, v16, v17}];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Invalidated assertion:%@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

  else if (v6)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Fail scheduled invalidation assertion:%@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_inQueue_releaseAssertionWithOwner:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_assertionMaps objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 invalidateAssertionExpected:1];
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      if (v9)
      {
        v10 = pk_General_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v4;
          v11 = "Notice: Invalidated assertion:%@ for owner:%@";
LABEL_9:
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x16u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v4;
        v11 = "Notice: Fail scheduled invalidation assertion:%@ for owner:%@";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end