@interface HDSharedSummaryTransactionQueryServer
- (HDSharedSummaryTransactionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_deliverAllTransactions;
- (void)_queue_didDeactivate;
- (void)_queue_start;
- (void)sharedSummaryManagerCommittedTransactionsDidChange:(id)change;
@end

@implementation HDSharedSummaryTransactionQueryServer

- (HDSharedSummaryTransactionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = HDSharedSummaryTransactionQueryServer;
  v11 = [(HDQueryServer *)&v13 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v11->_committedTransactions = [configurationCopy committedTransactions];
  }

  return v11;
}

- (void)_queue_start
{
  v5.receiver = self;
  v5.super_class = HDSharedSummaryTransactionQueryServer;
  [(HDQueryServer *)&v5 _queue_start];
  profile = [(HDQueryServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  [sharedSummaryManager registerObserver:self];

  [(HDSharedSummaryTransactionQueryServer *)self _queue_deliverAllTransactions];
}

- (void)_queue_deliverAllTransactions
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = self[208];
    profile = [self profile];
    sharedSummaryManager = [profile sharedSummaryManager];
    if (v3 == 1)
    {
      v19 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__HDSharedSummaryTransactionQueryServer__queue_deliverAllTransactions__block_invoke;
      v17[3] = &unk_278618520;
      v18 = v2;
      v6 = [sharedSummaryManager enumerateCommittedTransactionsWithError:&v19 handler:v17];
      v7 = v19;

      if ((v6 & 1) == 0)
      {
LABEL_4:
        clientProxy = [self clientProxy];
        queryUUID = [self queryUUID];
        [clientProxy client_deliverError:v7 forQuery:queryUUID];
LABEL_7:

        [self setDataCount:{objc_msgSend(v2, "count")}];
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
      v10 = [sharedSummaryManager enumerateNonCommittedTransactionsWithError:&v16 handler:&v11];
      v7 = v16;

      if (!v10)
      {
        goto LABEL_4;
      }
    }

    clientProxy = [self clientProxy];
    queryUUID = [self queryUUID];
    [clientProxy client_deliverTransactions:v2 query:queryUUID];
    goto LABEL_7;
  }
}

- (void)_queue_didDeactivate
{
  profile = [(HDQueryServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  [sharedSummaryManager unregisterObserver:self];
}

- (void)sharedSummaryManagerCommittedTransactionsDidChange:(id)change
{
  changeCopy = change;
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