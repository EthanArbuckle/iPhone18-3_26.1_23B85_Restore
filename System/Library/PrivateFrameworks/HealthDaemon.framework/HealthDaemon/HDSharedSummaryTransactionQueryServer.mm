@interface HDSharedSummaryTransactionQueryServer
- (HDSharedSummaryTransactionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_deliverAllTransactions;
- (void)_queue_didDeactivate;
- (void)_queue_start;
- (void)sharedSummaryManagerCommittedTransactionsDidChange:(id)a3;
@end

@implementation HDSharedSummaryTransactionQueryServer

- (HDSharedSummaryTransactionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v13.receiver = self;
  v13.super_class = HDSharedSummaryTransactionQueryServer;
  v11 = [(HDQueryServer *)&v13 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_committedTransactions = [v10 committedTransactions];
  }

  return v11;
}

- (void)_queue_start
{
  v5.receiver = self;
  v5.super_class = HDSharedSummaryTransactionQueryServer;
  [(HDQueryServer *)&v5 _queue_start];
  v3 = [(HDQueryServer *)self profile];
  v4 = [v3 sharedSummaryManager];
  [v4 registerObserver:self];

  [(HDSharedSummaryTransactionQueryServer *)self _queue_deliverAllTransactions];
}

- (void)_queue_deliverAllTransactions
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = a1[208];
    v4 = [a1 profile];
    v5 = [v4 sharedSummaryManager];
    if (v3 == 1)
    {
      v19 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__HDSharedSummaryTransactionQueryServer__queue_deliverAllTransactions__block_invoke;
      v17[3] = &unk_278618520;
      v18 = v2;
      v6 = [v5 enumerateCommittedTransactionsWithError:&v19 handler:v17];
      v7 = v19;

      if ((v6 & 1) == 0)
      {
LABEL_4:
        v8 = [a1 clientProxy];
        v9 = [a1 queryUUID];
        [v8 client_deliverError:v7 forQuery:v9];
LABEL_7:

        [a1 setDataCount:{objc_msgSend(v2, "count")}];
        return;
      }
    }

    else
    {
      v16 = 0;
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __70__HDSharedSummaryTransactionQueryServer__queue_deliverAllTransactions__block_invoke_2;
      v14 = &unk_278618520;
      v15 = v2;
      v10 = [v5 enumerateNonCommittedTransactionsWithError:&v16 handler:&v11];
      v7 = v16;

      if (!v10)
      {
        goto LABEL_4;
      }
    }

    v8 = [a1 clientProxy];
    v9 = [a1 queryUUID];
    [v8 client_deliverTransactions:v2 query:v9];
    goto LABEL_7;
  }
}

- (void)_queue_didDeactivate
{
  v4 = [(HDQueryServer *)self profile];
  v3 = [v4 sharedSummaryManager];
  [v3 unregisterObserver:self];
}

- (void)sharedSummaryManagerCommittedTransactionsDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__HDSharedSummaryTransactionQueryServer_sharedSummaryManagerCommittedTransactionsDidChange___block_invoke;
  v5[3] = &unk_278616F38;
  objc_copyWeak(&v6, &location);
  [(HDQueryServer *)self scheduleDatabaseAccessOnQueueWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __92__HDSharedSummaryTransactionQueryServer_sharedSummaryManagerCommittedTransactionsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDSharedSummaryTransactionQueryServer *)WeakRetained _queue_deliverAllTransactions];
}

@end