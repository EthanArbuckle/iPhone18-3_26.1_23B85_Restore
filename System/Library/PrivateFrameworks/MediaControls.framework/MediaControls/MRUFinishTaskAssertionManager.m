@interface MRUFinishTaskAssertionManager
+ (id)sharedManager;
- (MRUFinishTaskAssertionManager)init;
- (void)acquireForTaskToken:(id)a3 withReason:(id)a4 invalidationHandler:(id)a5;
- (void)dealloc;
- (void)releaseForTaskToken:(id)a3;
@end

@implementation MRUFinishTaskAssertionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MRUFinishTaskAssertionManager sharedManager];
  }

  v3 = sharedManager___shared;

  return v3;
}

uint64_t __46__MRUFinishTaskAssertionManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager___shared;
  sharedManager___shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUFinishTaskAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = MRUFinishTaskAssertionManager;
  v2 = [(MRUFinishTaskAssertionManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    tokenMap = v2->_tokenMap;
    v2->_tokenMap = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(RBSAssertion *)self->_taskAssertion invalidate];
  v3.receiver = self;
  v3.super_class = MRUFinishTaskAssertionManager;
  [(MRUFinishTaskAssertionManager *)&v3 dealloc];
}

- (void)acquireForTaskToken:(id)a3 withReason:(id)a4 invalidationHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [(MRUFinishTaskAssertionManager *)self tokenMap];
  v12 = _Block_copy(v10);
  [v11 setObject:v12 forKey:v8];

  v13 = MCLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "[MRUFinishTaskAssertionManager] Acquiring for token: %p with reason: %@", buf, 0x16u);
  }

  v14 = [(MRUFinishTaskAssertionManager *)self taskAssertion];
  v15 = v14 == 0;

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E69C7548]);
    v17 = [MEMORY[0x1E69C7640] currentProcess];
    v18 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
    v29 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v20 = [v16 initWithExplanation:@"MediaRemote UI pre-suspend cleanup." target:v17 attributes:v19];
    [(MRUFinishTaskAssertionManager *)self setTaskAssertion:v20];

    v21 = [(MRUFinishTaskAssertionManager *)self taskAssertion];
    v28 = 0;
    [v21 acquireWithError:&v28];
    v22 = v28;

    if (v22)
    {
      v23 = MCLogCategoryDefault();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v22;
        _os_log_impl(&dword_1A20FC000, v23, OS_LOG_TYPE_ERROR, "[MRUFinishTaskAssertionManager] FinishTask assertion acquisition failed with error: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v24 = MEMORY[0x1E69B14D8];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84__MRUFinishTaskAssertionManager_acquireForTaskToken_withReason_invalidationHandler___block_invoke;
      v26[3] = &unk_1E7663AE8;
      objc_copyWeak(&v27, buf);
      v25 = [v24 timerWithInterval:0 repeats:MEMORY[0x1E69E96A0] queue:v26 block:5.0];
      [(MRUFinishTaskAssertionManager *)self setAutoInvalidationTimer:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }
}

void __84__MRUFinishTaskAssertionManager_acquireForTaskToken_withReason_invalidationHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained tokenMap];
    if ([v3 count])
    {
      v4 = MCLogCategoryDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [v3 keyEnumerator];
        v6 = [v5 allObjects];
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "[MRUFinishTaskAssertionManager] Task tokens after timeout: %@", buf, 0xCu);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [v7 objectForKey:{*(*(&v14 + 1) + 8 * v11), v14}];
            v12[2]();

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      [v7 removeAllObjects];
    }

    v13 = [v2 taskAssertion];
    [v13 invalidate];

    [v2 setTaskAssertion:0];
  }
}

- (void)releaseForTaskToken:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(MRUFinishTaskAssertionManager *)self tokenMap];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v4;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRUFinishTaskAssertionManager] Releasing for token: %p", &v13, 0xCu);
    }

    v8 = [(MRUFinishTaskAssertionManager *)self tokenMap];
    [v8 removeObjectForKey:v4];

    v9 = [(MRUFinishTaskAssertionManager *)self tokenMap];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = [(MRUFinishTaskAssertionManager *)self autoInvalidationTimer];
      [v11 invalidate];

      [(MRUFinishTaskAssertionManager *)self setAutoInvalidationTimer:0];
      v12 = [(MRUFinishTaskAssertionManager *)self taskAssertion];
      [v12 invalidate];

      [(MRUFinishTaskAssertionManager *)self setTaskAssertion:0];
    }
  }
}

@end