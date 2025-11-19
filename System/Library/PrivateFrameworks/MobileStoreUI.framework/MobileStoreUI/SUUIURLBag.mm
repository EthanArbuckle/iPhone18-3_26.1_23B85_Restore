@interface SUUIURLBag
+ (ISOperationQueue)bagQueue;
- (id)existingBagDictionary;
- (id)storeFrontIdentifier;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (void)_enqueueOperationWithContext:(id)a3 completionBlock:(id)a4;
- (void)_finishOperationWithURLBag:(id)a3 error:(id)a4;
- (void)getTrustForURL:(id)a3 completionBlock:(id)a4;
- (void)invalidate;
- (void)loadValueForKey:(id)a3 completionBlock:(id)a4;
- (void)loadWithCompletionBlock:(id)a3;
@end

@implementation SUUIURLBag

+ (ISOperationQueue)bagQueue
{
  if (bagQueue_onceToken != -1)
  {
    +[SUUIURLBag bagQueue];
  }

  v3 = bagQueue_bagQueue;

  return v3;
}

uint64_t __22__SUUIURLBag_bagQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D7FD20]);
  v1 = bagQueue_bagQueue;
  bagQueue_bagQueue = v0;

  v2 = bagQueue_bagQueue;

  return [v2 setName:@"com.apple.storekit.bag-queue"];
}

- (void)getTrustForURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SUUIURLBag_getTrustForURL_completionBlock___block_invoke;
  v10[3] = &unk_2798FCBE8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SSURLBag *)self dispatchAsync:v10];
}

void __45__SUUIURLBag_getTrustForURL_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    v5 = [v4 urlIsTrusted:*(a1 + 40)];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SUUIURLBag_getTrustForURL_completionBlock___block_invoke_2;
    block[3] = &unk_2798F69E0;
    v7 = &v13;
    v13 = *(a1 + 48);
    v14 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SUUIURLBag_getTrustForURL_completionBlock___block_invoke_3;
    v9[3] = &unk_2798FCBC0;
    v7 = &v11;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v3 _enqueueOperationWithContext:a2 completionBlock:v9];
    v6 = v10;
  }
}

void __45__SUUIURLBag_getTrustForURL_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  (*(v4 + 16))(v4, [a2 urlIsTrusted:v5], v6);
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __24__SUUIURLBag_invalidate__block_invoke;
  v2[3] = &unk_2798FCC10;
  v2[4] = self;
  [(SSURLBag *)self dispatchAsync:v2];
}

void __24__SUUIURLBag_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  *(*(a1 + 32) + 88) = 1;
  [*(*(a1 + 32) + 96) setCompletionBlock:0];
  [*(*(a1 + 32) + 96) cancel];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = 0;
}

- (void)loadValueForKey:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SUUIURLBag_loadValueForKey_completionBlock___block_invoke;
  v10[3] = &unk_2798FCBE8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SSURLBag *)self dispatchAsync:v10];
}

void __46__SUUIURLBag_loadValueForKey_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    v5 = [v4 valueForKey:*(a1 + 40)];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUUIURLBag_loadValueForKey_completionBlock___block_invoke_2;
    block[3] = &unk_2798F5D58;
    v7 = *(a1 + 48);
    v14 = v5;
    v15 = v7;
    v8 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SUUIURLBag_loadValueForKey_completionBlock___block_invoke_3;
    v10[3] = &unk_2798FCBC0;
    v12 = *(a1 + 48);
    v11 = *(a1 + 40);
    [v3 _enqueueOperationWithContext:a2 completionBlock:v10];

    v8 = v12;
  }
}

void __46__SUUIURLBag_loadValueForKey_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [a2 valueForKey:v5];
  (*(v4 + 16))(v4, v7, v6);
}

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__81;
  v26 = __Block_byref_object_dispose__81;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__81;
  v20 = __Block_byref_object_dispose__81;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__SUUIURLBag_valueForKey_error___block_invoke;
  v12[3] = &unk_2798FCC38;
  v14 = &v16;
  v15 = &v22;
  v8 = v7;
  v13 = v8;
  [(SUUIURLBag *)self loadValueForKey:v6 completionBlock:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v23[5];
  if (a4 && !v9)
  {
    *a4 = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __32__SUUIURLBag_valueForKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)existingBagDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__81;
  v9 = __Block_byref_object_dispose__81;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SUUIURLBag_existingBagDictionary__block_invoke;
  v4[3] = &unk_2798FCC60;
  v4[4] = self;
  v4[5] = &v5;
  [(SSURLBag *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__SUUIURLBag_existingBagDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) URLBagDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)loadWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SUUIURLBag_loadWithCompletionBlock___block_invoke;
  v6[3] = &unk_2798FCCB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSURLBag *)self dispatchAsync:v6];
}

void __38__SUUIURLBag_loadWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    v5 = [v4 URLBagDictionary];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__SUUIURLBag_loadWithCompletionBlock___block_invoke_2;
    block[3] = &unk_2798F5D58;
    v7 = *(a1 + 40);
    v13 = v5;
    v14 = v7;
    v8 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SUUIURLBag_loadWithCompletionBlock___block_invoke_3;
    v10[3] = &unk_2798FCC88;
    v11 = *(a1 + 40);
    [v3 _enqueueOperationWithContext:a2 completionBlock:v10];
    v8 = v11;
  }
}

void __38__SUUIURLBag_loadWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 URLBagDictionary];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)storeFrontIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__81;
  v9 = __Block_byref_object_dispose__81;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SUUIURLBag_storeFrontIdentifier__block_invoke;
  v4[3] = &unk_2798FCC60;
  v4[4] = self;
  v4[5] = &v5;
  [(SSURLBag *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __34__SUUIURLBag_storeFrontIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) storeFrontIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_enqueueOperationWithContext:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  completionBlocks = self->_completionBlocks;
  if (!completionBlocks)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_completionBlocks;
    self->_completionBlocks = v10;

    completionBlocks = self->_completionBlocks;
  }

  v12 = _Block_copy(v8);
  [(NSMutableArray *)completionBlocks addObject:v12];

  if (!self->_operation)
  {
    if (self->_forceInvalidationForNextLoad)
    {
      v13 = [v6 copy];
      [v13 setIgnoresCaches:1];

      self->_forceInvalidationForNextLoad = 0;
      v6 = v13;
    }

    v14 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v6];
    operation = self->_operation;
    self->_operation = v14;

    objc_initWeak(&location, self->_operation);
    objc_initWeak(&from, self);
    v16 = self->_operation;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __59__SUUIURLBag__enqueueOperationWithContext_completionBlock___block_invoke;
    v21 = &unk_2798F7CC8;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &location);
    [(ISLoadURLBagOperation *)v16 setCompletionBlock:&v18];
    v17 = [objc_opt_class() bagQueue];
    [v17 addOperation:self->_operation];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __59__SUUIURLBag__enqueueOperationWithContext_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 URLBag];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 error];
  [WeakRetained _finishOperationWithURLBag:v4 error:v6];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setCompletionBlock:0];
}

- (void)_finishOperationWithURLBag:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SUUIURLBag__finishOperationWithURLBag_error___block_invoke;
  v10[3] = &unk_2798FCCD8;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(SSURLBag *)self dispatchAsync:v10];
}

void __47__SUUIURLBag__finishOperationWithURLBag_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 72), v2);
  }

  [*(*(a1 + 40) + 96) setCompletionBlock:0];
  v3 = *(a1 + 40);
  v4 = *(v3 + 96);
  *(v3 + 96) = 0;

  v5 = [*(*(a1 + 40) + 80) copy];
  v6 = *(a1 + 40);
  v7 = *(v6 + 80);
  *(v6 + 80) = 0;

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUUIURLBag__finishOperationWithURLBag_error___block_invoke_2;
  block[3] = &unk_2798F5BC0;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v8, block);
}

void __47__SUUIURLBag__finishOperationWithURLBag_error___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end