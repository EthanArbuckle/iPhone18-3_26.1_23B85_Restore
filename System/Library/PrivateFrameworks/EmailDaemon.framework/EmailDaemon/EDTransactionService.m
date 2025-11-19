@interface EDTransactionService
- (BOOL)hasPendingTransactions;
- (EDTransactionService)initWithServiceName:(id)a3;
- (id)startTransaction;
- (void)endTransaction:(id)a3;
- (void)resetPendingTransactions;
@end

@implementation EDTransactionService

- (EDTransactionService)initWithServiceName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EDTransactionService;
  v5 = [(EDTransactionService *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@-%@", v8, v4];
    serviceName = v5->_serviceName;
    v5->_serviceName = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = [(EDTransactionService *)v5 serviceName];
    v13 = [v11 stringWithFormat:@"com.apple.mail.NNMKCrashDetectionService.%@", v12];

    v14 = dispatch_queue_create([v13 UTF8String], 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v14;
  }

  return v5;
}

- (id)startTransaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__EDTransactionService_startTransaction__block_invoke;
  v5[3] = &unk_1E8258F68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__EDTransactionService_startTransaction__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [*(a1 + 32) serviceName];
  v12 = [v2 objectForKey:v3];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count") + 1}];
  if (v12)
  {
    [v4 setArray:v12];
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v4 addObject:*(*(*(a1 + 40) + 8) + 40)];
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [*(a1 + 32) serviceName];
  [v9 setObject:v4 forKey:v10];

  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v11 synchronize];
}

- (void)endTransaction:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__EDTransactionService_endTransaction___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __39__EDTransactionService_endTransaction___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [*(a1 + 32) serviceName];
  v4 = [v2 objectForKey:v3];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 isEqualToString:{*(a1 + 40), v15}] & 1) == 0)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [*(a1 + 32) serviceName];
    [v11 setObject:v5 forKey:v12];
  }

  else
  {
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [*(a1 + 32) serviceName];
    [v11 removeObjectForKey:v12];
  }

  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v13 synchronize];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasPendingTransactions
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(EDTransactionService *)self serialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__EDTransactionService_hasPendingTransactions__block_invoke;
  v5[3] = &unk_1E8258F68;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __46__EDTransactionService_hasPendingTransactions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [*(a1 + 32) serviceName];
  v4 = [v2 objectForKey:v3];

  *(*(*(a1 + 40) + 8) + 24) = [v4 count] != 0;
}

- (void)resetPendingTransactions
{
  v3 = [(EDTransactionService *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDTransactionService_resetPendingTransactions__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __48__EDTransactionService_resetPendingTransactions__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [*(a1 + 32) serviceName];
  [v3 removeObjectForKey:v2];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 synchronize];
}

@end