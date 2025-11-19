@interface FPDPresenterManager
- (FPDPresenterManager)initWithExtensionManager:(id)a3;
- (id)presenterWithID:(id)a3;
- (id)presentersForDomain:(id)a3;
- (unint64_t)promisePresenterWithID:(id)a3;
- (void)addPresenter:(id)a3 itemID:(id)a4 urlHint:(id)a5 auditToken:(id *)a6 promiseID:(unint64_t)a7;
- (void)forgetPromiseForPresenterWithID:(id)a3 promiseID:(unint64_t)a4;
- (void)removePresenter:(id)a3;
- (void)signalPresentersForItemID:(id)a3;
@end

@implementation FPDPresenterManager

- (FPDPresenterManager)initWithExtensionManager:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPDPresenterManager;
  v5 = [(FPDPresenterManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionManager, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("presenter manager queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_opt_new();
    presenters = v6->_presenters;
    v6->_presenters = v10;

    v12 = objc_opt_new();
    promisedPresenters = v6->_promisedPresenters;
    v6->_promisedPresenters = v12;
  }

  return v6;
}

- (unint64_t)promisePresenterWithID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->nextPromiseID + 1;
  v5->nextPromiseID = v6;
  objc_sync_exit(v5);

  queue = v5->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__FPDPresenterManager_promisePresenterWithID___block_invoke;
  block[3] = &unk_1E83BEB18;
  v11 = v4;
  v12 = v6;
  block[4] = v5;
  v8 = v4;
  dispatch_async(queue, block);

  return v6;
}

void __46__FPDPresenterManager_promisePresenterWithID___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  [v2 setObject:v3 forKey:a1[5]];
}

- (void)forgetPromiseForPresenterWithID:(id)a3 promiseID:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__FPDPresenterManager_forgetPromiseForPresenterWithID_promiseID___block_invoke;
  block[3] = &unk_1E83BEB18;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

void __65__FPDPresenterManager_forgetPromiseForPresenterWithID_promiseID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = [v2 unsignedIntegerValue];
  v4 = a1[6];

  if (v3 == v4)
  {
    v5 = a1[5];
    v6 = *(a1[4] + 24);

    [v6 removeObjectForKey:v5];
  }
}

- (void)addPresenter:(id)a3 itemID:(id)a4 urlHint:(id)a5 auditToken:(id *)a6 promiseID:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v16 = *&a6->var0[4];
  v25 = *a6->var0;
  v26 = v16;
  block[2] = __72__FPDPresenterManager_addPresenter_itemID_urlHint_auditToken_promiseID___block_invoke;
  block[3] = &unk_1E83C1830;
  block[4] = self;
  v21 = v13;
  v23 = v14;
  v24 = a7;
  v22 = v12;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  dispatch_async(queue, block);
}

void __72__FPDPresenterManager_addPresenter_itemID_urlHint_auditToken_promiseID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = [WeakRetained domainFromItemID:*(a1 + 40) reason:0];

  v4 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 48)];
  v5 = [v4 unsignedIntegerValue];
  v6 = *(a1 + 64);

  if (v5 != v6)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __72__FPDPresenterManager_addPresenter_itemID_urlHint_auditToken_promiseID___block_invoke_cold_1((a1 + 48), v11);
    }

    goto LABEL_6;
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 48)];
  if (v3)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    v12[0] = *(a1 + 72);
    v12[1] = v10;
    v11 = [FPDFilePresenter presenter:v7 withItemID:v8 auditToken:v12 urlHint:v9 domain:v3];
    [v11 start];
    [*(a1 + 32) willChangeValueForKey:@"presenters"];
    [*(*(a1 + 32) + 16) setObject:v11 forKey:*(a1 + 48)];
    [*(a1 + 32) didChangeValueForKey:@"presenters"];
LABEL_6:
  }
}

- (void)removePresenter:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FPDPresenterManager_removePresenter___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __39__FPDPresenterManager_removePresenter___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 stop];
    [*(a1 + 32) willChangeValueForKey:@"presenters"];
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) didChangeValueForKey:@"presenters"];
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __39__FPDPresenterManager_removePresenter___block_invoke_cold_1(v2, v5);
    }

    [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  }
}

- (id)presenterWithID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FPDPresenterManager_presenterWithID___block_invoke;
  block[3] = &unk_1E83C1858;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__FPDPresenterManager_presenterWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)presentersForDomain:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__FPDPresenterManager_presentersForDomain___block_invoke;
  block[3] = &unk_1E83BDE60;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_sync(queue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __43__FPDPresenterManager_presentersForDomain___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__FPDPresenterManager_presentersForDomain___block_invoke_2;
  v3[3] = &unk_1E83C1880;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __43__FPDPresenterManager_presentersForDomain___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 domain];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)signalPresentersForItemID:(id)a3
{
  v4 = a3;
  v5 = [v4 providerDomainID];
  v6 = [v4 identifier];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__FPDPresenterManager_signalPresentersForItemID___block_invoke;
  v11[3] = &unk_1E83BF988;
  v11[4] = self;
  v12 = v5;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  dispatch_async(queue, v11);
}

void __49__FPDPresenterManager_signalPresentersForItemID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__FPDPresenterManager_signalPresentersForItemID___block_invoke_2;
  v3[3] = &unk_1E83C18A8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __49__FPDPresenterManager_signalPresentersForItemID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([v4 isEnumeratorActive] & 1) == 0)
  {
    v5 = [v4 observedItemID];
    v6 = [v5 providerDomainID];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      if (([*(a1 + 40) isEqualToString:*MEMORY[0x1E6967258]] & 1) != 0 || (objc_msgSend(v4, "observedItemID"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *(a1 + 40)), v9, v8, v10))
      {
        v11 = fp_current_or_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __49__FPDPresenterManager_signalPresentersForItemID___block_invoke_2_cold_1(v4, a1, v11);
        }

        [v4 enumerationResultsDidChange];
      }
    }
  }
}

void __72__FPDPresenterManager_addPresenter_itemID_urlHint_auditToken_promiseID___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring presenter creation for %@: promised has been deleted or superseded", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __39__FPDPresenterManager_removePresenter___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing promise for presenter %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __49__FPDPresenterManager_signalPresentersForItemID___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a2 + 48) identifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] signaling our passive file presenter %@ about a change on %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end