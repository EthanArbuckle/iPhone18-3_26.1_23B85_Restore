@interface DATransactionMonitor
+ (id)sharedTransactionMonitor;
- (DATransactionMonitor)init;
- (DATransactionMonitorDelegate)transactionMonitorDelegate;
- (void)decrementTransactionCountForTransaction:(id)transaction;
- (void)incrementTransactionCountForTransaction:(id)transaction;
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
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      transactionCount = v3->_transactionCount;
      *buf = 67109120;
      v11 = transactionCount;
      _os_log_impl(&dword_24844D000, v4, v5, "Transaction count is initialized to %d", buf, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)incrementTransactionCountForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (incrementTransactionCountForTransaction__onceToken != -1)
  {
    [DATransactionMonitor incrementTransactionCountForTransaction:];
  }

  v5 = transactionMonitorQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__DATransactionMonitor_incrementTransactionCountForTransaction___block_invoke_2;
  v7[3] = &unk_278F13350;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(v5, v7);
}

uint64_t __64__DATransactionMonitor_incrementTransactionCountForTransaction___block_invoke()
{
  transactionMonitorQueue = dispatch_queue_create("com.apple.dataaccess.DATransactionMonitorQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __64__DATransactionMonitor_incrementTransactionCountForTransaction___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTransactionCount:{objc_msgSend(*(a1 + 32), "transactionCount") + 1}];
  v2 = [*(a1 + 32) transactions];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setTransactions:v3];
  }

  v4 = [*(a1 + 32) transactions];
  [v4 addObject:*(a1 + 40)];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(a1 + 32) transactionCount];
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&dword_24844D000, v5, v6, "Transaction count is incremented to %d", v9, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)decrementTransactionCountForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6 = transactionMonitorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke;
  block[3] = &unk_278F13378;
  block[4] = self;
  v9 = transactionCopy;
  v10 = a2;
  v7 = transactionCopy;
  dispatch_sync(v6, block);
}

void __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) transactionCount] == 1)
  {
    WeakRetained = objc_loadWeakRetained(*v2 + 3);
    [WeakRetained didFinishAllXPCTransactions];
  }

  [*(a1 + 32) setTransactionCount:{objc_msgSend(*(a1 + 32), "transactionCount") - 1}];
  v4 = [*(a1 + 32) transactions];
  [v4 removeObject:*(a1 + 40)];

  if (([*(a1 + 32) transactionCount] & 0x80000000) != 0)
  {
    __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke_cold_1(a1, v2);
  }

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*v2 transactionCount];
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&dword_24844D000, v5, v6, "Transaction count is decremented to %d", v9, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (DATransactionMonitorDelegate)transactionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionMonitorDelegate);

  return WeakRetained;
}

void __64__DATransactionMonitor_decrementTransactionCountForTransaction___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"DATransactionMonitor.m" lineNumber:69 description:{@"Transaction count becomes negative, %d", objc_msgSend(*a2, "transactionCount")}];
}

@end