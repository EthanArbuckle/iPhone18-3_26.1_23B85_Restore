@interface LNVisibleAppManager
- (LNVisibleAppManager)init;
- (void)_getLayoutsWithCompletionHandler:(id)handler;
- (void)getCurrentAppWithCompletionHandler:(id)handler;
@end

@implementation LNVisibleAppManager

- (void)_getLayoutsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MEMORY[0x1E69AA870]);
  [v5 resume];
  monitorPool = [(LNVisibleAppManager *)self monitorPool];
  [monitorPool addObject:v5];

  v7 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LNVisibleAppManager__getLayoutsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E74B2580;
  v11 = v5;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = v5;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
}

void __56__LNVisibleAppManager__getLayoutsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) currentDisplayLayouts];
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) monitorPool];
  [v2 removeObject:*(a1 + 32)];

  (*(*(a1 + 48) + 16))();
}

- (void)getCurrentAppWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__LNVisibleAppManager_getCurrentAppWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E74B18C0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(LNVisibleAppManager *)self _getLayoutsWithCompletionHandler:v6];
}

void __58__LNVisibleAppManager_getCurrentAppWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) elements];
        v11 = [v10 if_firstObjectPassingTest:&__block_literal_global_9736];

        v12 = [v11 bundleIdentifier];

        if (v12)
        {
          v13 = [v11 bundleIdentifier];
          [v4 addObject:v13];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (LNVisibleAppManager)init
{
  v7.receiver = self;
  v7.super_class = LNVisibleAppManager;
  v2 = [(LNVisibleAppManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    monitorPool = v2->_monitorPool;
    v2->_monitorPool = v3;

    v5 = v2;
  }

  return v2;
}

@end