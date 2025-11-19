@interface DATransactionMonitor
+ (id)sharedTransactionMonitor;
- (DATransactionMonitor)init;
- (DATransactionMonitorDelegate)transactionMonitorDelegate;
- (void)decrementTransactionCountForTransaction:(id)a3;
- (void)incrementTransactionCountForTransaction:(id)a3;
@end

@implementation DATransactionMonitor

+ (id)sharedTransactionMonitor
{
  if (sharedTransactionMonitor_creationToken != -1)
  {
    +[DATransactionMonitor sharedTransactionMonitor];
  }

  v3 = sharedTransactionMonitor_gDATransactionMonitor;

  return v3;
}

uint64_t __48__DATransactionMonitor_sharedTransactionMonitor__block_invoke()
{
  sharedTransactionMonitor_gDATransactionMonitor = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DATransactionMonitor)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = DATransactionMonitor;
  v2 = [(DATransactionMonitor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_transactionCount = 0;
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      transactionCount = v3->_transactionCount;
      *buf = 67109120;
      v11 = transactionCount;
      _os_log_impl(&dword_24244C000, v4, v5, "Transaction count is initialized to %d", buf, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)incrementTransactionCountForTransaction:(id)a3
{
  v4 = a3;
  if (incrementTransactionCountForTransaction__onceToken != -1)
  {
    [DATransactionMonitor incrementTransactionCountForTransaction:];
  }

  v5 = transactionMonitorQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__DATransactionMonitor_incrementTransactionCountForTransaction___block_invoke_2;
  v7[3] = &unk_278D4C540;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __64__DATransactionMonitor_incrementTransactionCountForTransaction___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.dataaccess.DATransactionMonitorQueue", v2);
  v1 = transactionMonitorQueue;
  transactionMonitorQueue = v0;
}

void __64__DATransactionMonitor_incrementTransactionCountForTransaction___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transactionCount];
  v3 = MEMORY[0x277CF3AF0];
  if (!v2)
  {
    MEMORY[0x245D0F340]();
    v4 = DALoggingwithCategory();
    v5 = *(v3 + 5);
    if (os_log_type_enabled(v4, v5))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_24244C000, v4, v5, "DATransactionMonitor: xpc_transaction_begin INIT {name: com.apple.remindd.dataaccess.transactions}", v13, 2u);
    }
  }

  [*(a1 + 32) setTransactionCount:{objc_msgSend(*(a1 + 32), "transactionCount") + 1}];
  v6 = [*(a1 + 32) transactions];

  if (!v6)
  {
    v7 = objc_opt_new();
    [*(a1 + 32) setTransactions:v7];
  }

  v8 = [*(a1 + 32) transactions];
  [v8 addObject:*(a1 + 40)];

  v9 = DALoggingwithCategory();
  v10 = *(v3 + 5);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = [*(a1 + 32) transactionCount];
    v13[0] = 67109120;
    v13[1] = v11;
    _os_log_impl(&dword_24244C000, v9, v10, "Transaction count is incremented to %d", v13, 8u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)decrementTransactionCountForTransaction:(id)a3
{
  v5 = a3;
  v6 = transactionMonitorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke;
  block[3] = &unk_278D4C568;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_sync(v6, block);
}

void __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) transactionCount];
  v4 = MEMORY[0x277CF3AF0];
  if (v3 == 1)
  {
    MEMORY[0x245D0F350]();
    WeakRetained = objc_loadWeakRetained(*v2 + 3);
    [WeakRetained didFinishAllXPCTransactions];

    v6 = DALoggingwithCategory();
    v7 = *(v4 + 5);
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_24244C000, v6, v7, "DATransactionMonitor: xpc_transaction_end RELEASE {name: com.apple.remindd.dataaccess.transactions}", &v15, 2u);
    }
  }

  [*(a1 + 32) setTransactionCount:{objc_msgSend(*(a1 + 32), "transactionCount") - 1}];
  v8 = [*(a1 + 32) transactions];
  [v8 removeObject:*(a1 + 40)];

  if (([*(a1 + 32) transactionCount] & 0x80000000) != 0)
  {
    __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke_cold_1(a1, v2);
  }

  v9 = DALoggingwithCategory();
  v10 = *(v4 + 5);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = [*v2 transactionCount];
    v15 = 67109120;
    LODWORD(v16) = v11;
    _os_log_impl(&dword_24244C000, v9, v10, "Transaction count is decremented to %d", &v15, 8u);
  }

  v12 = DALoggingwithCategory();
  if (os_log_type_enabled(v12, v10))
  {
    v13 = [*v2 transactions];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_24244C000, v12, v10, "Remaining transactions: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (DATransactionMonitorDelegate)transactionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionMonitorDelegate);

  return WeakRetained;
}

void __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"DATransactionMonitor.m" lineNumber:111 description:{@"Transaction count becomes negative, %d", objc_msgSend(*a2, "transactionCount")}];
}

@end