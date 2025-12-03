@interface ULTransactionManager
+ (id)shared;
- (ULTransactionManager)init;
- (id)dumpActiveTransactions;
- (void)beginTransaction:(id)transaction;
- (void)endTransaction:(id)transaction;
- (void)invalidateAllTransactions;
- (void)performUnderTransaction:(id)transaction block:(id)block;
@end

@implementation ULTransactionManager

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ULTransactionManager_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_ul_once_token_4 != -1)
  {
    dispatch_once(&shared_ul_once_token_4, block);
  }

  v2 = shared_ul_once_object_4;

  return v2;
}

void __30__ULTransactionManager_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = shared_ul_once_object_4;
  shared_ul_once_object_4 = v1;
}

- (ULTransactionManager)init
{
  v7.receiver = self;
  v7.super_class = ULTransactionManager;
  v2 = [(ULTransactionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.milod.ULTransactionManager", v3);
    [(ULTransactionManager *)v2 setQueue:v4];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ULTransactionManager *)v2 setTransactions:dictionary];
  }

  return v2;
}

- (void)beginTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(ULTransactionManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULTransactionManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ULTransactionManager_beginTransaction___block_invoke;
  v8[3] = &unk_2798D4280;
  v9 = transactionCopy;
  selfCopy = self;
  v7 = transactionCopy;
  dispatch_sync(queue2, v8);
}

void __41__ULTransactionManager_beginTransaction___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && ([*(a1 + 40) transactions], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", *(a1 + 32)), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, !v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __41__ULTransactionManager_beginTransaction___block_invoke_cold_1();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "beginTransaction for identifier: %@", &v11, 0xCu);
    }

    [*(a1 + 32) UTF8String];
    v8 = os_transaction_create();
    v9 = [*(a1 + 40) transactions];
    [v9 setObject:v8 forKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __41__ULTransactionManager_beginTransaction___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "beginTransaction: transaction exists: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(ULTransactionManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULTransactionManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__ULTransactionManager_endTransaction___block_invoke;
  v8[3] = &unk_2798D4280;
  v9 = transactionCopy;
  selfCopy = self;
  v7 = transactionCopy;
  dispatch_sync(queue2, v8);
}

void __39__ULTransactionManager_endTransaction___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && ([*(a1 + 40) transactions], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", *(a1 + 32)), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __41__ULTransactionManager_beginTransaction___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "endTransaction for identifier: %@", &v10, 0xCu);
    }

    v6 = [*(a1 + 40) transactions];
    [v6 removeObjectForKey:*(a1 + 32)];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __41__ULTransactionManager_beginTransaction___block_invoke_cold_1();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "endTransaction: transaction doesnt exist: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)performUnderTransaction:(id)transaction block:(id)block
{
  blockCopy = block;
  transactionCopy = transaction;
  queue = [(ULTransactionManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  [(ULTransactionManager *)self beginTransaction:transactionCopy];
  blockCopy[2](blockCopy);

  [(ULTransactionManager *)self endTransaction:transactionCopy];
}

- (void)invalidateAllTransactions
{
  queue = [(ULTransactionManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  dumpActiveTransactions = [(ULTransactionManager *)self dumpActiveTransactions];
  queue2 = [(ULTransactionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ULTransactionManager_invalidateAllTransactions__block_invoke;
  v7[3] = &unk_2798D4280;
  v8 = dumpActiveTransactions;
  selfCopy = self;
  v6 = dumpActiveTransactions;
  dispatch_sync(queue2, v7);
}

void __49__ULTransactionManager_invalidateAllTransactions__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __41__ULTransactionManager_beginTransaction___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating all transactions: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) transactions];
  [v4 removeAllObjects];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)dumpActiveTransactions
{
  queue = [(ULTransactionManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__33;
  v12 = __Block_byref_object_dispose__33;
  v13 = 0;
  queue2 = [(ULTransactionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ULTransactionManager_dumpActiveTransactions__block_invoke;
  v7[3] = &unk_2798D4BB0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __46__ULTransactionManager_dumpActiveTransactions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) transactions];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end