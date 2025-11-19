@interface NPKWorkQueue
- (void)_onQueue_doWorkIfNecessary;
- (void)dealloc;
- (void)flush;
- (void)performWork:(id)a3;
@end

@implementation NPKWorkQueue

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_remainingWork count])
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        workQueueName = self->_workQueueName;
        v7 = [(NSMutableArray *)self->_remainingWork count];
        *buf = 134218498;
        v11 = self;
        v12 = 2112;
        v13 = workQueueName;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: deallocating NPKWorkQueueItem:%p, %@ has %lu remaining work items.", buf, 0x20u);
      }
    }

    [(NSMutableArray *)self->_remainingWork enumerateObjectsUsingBlock:&__block_literal_global_20];
  }

  v9.receiver = self;
  v9.super_class = NPKWorkQueue;
  [(NPKWorkQueue *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

void __23__NPKWorkQueue_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 transaction];
  [v2 invalidate];
}

- (void)_onQueue_doWorkIfNecessary
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(NPKWorkQueue *)self performingWork])
  {
    v3 = [(NPKWorkQueue *)self remainingWork];
    v4 = [v3 count];

    if (v4)
    {
      [(NPKWorkQueue *)self setPerformingWork:1];
      v5 = [(NPKWorkQueue *)self remainingWork];
      v6 = [v5 firstObject];

      v7 = [(NPKWorkQueue *)self remainingWork];
      [v7 removeObjectAtIndex:0];

      v8 = [v6 workBlock];
      v9 = [v6 transaction];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke;
      aBlock[3] = &unk_2799454E0;
      aBlock[4] = self;
      v10 = v9;
      v23 = v10;
      v11 = _Block_copy(aBlock);
      v12 = pk_Payment_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(NPKWorkQueue *)self workQueueName];
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@: starting next work block", buf, 0xCu);
        }
      }

      v16 = [(NPKWorkQueue *)self callbackQueue];

      if (v16)
      {
        v17 = [(NPKWorkQueue *)self callbackQueue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke_6;
        v19[3] = &unk_2799486C0;
        v20 = v8;
        v21 = v11;
        dispatch_async(v17, v19);
      }

      else
      {
        (v8)[2](v8, v11);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) workQueueName];
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@: ended work block", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: ending XPC transaction for work", buf, 2u);
      }
    }

    [*(a1 + 40) invalidate];
  }

  v9 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke_3;
  block[3] = &unk_279944F98;
  block[4] = *(a1 + 32);
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) performingWork] & 1) == 0)
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKWorkQueue _onQueue_doWorkIfNecessary]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKWorkQueue.m";
        v11 = 2048;
        v12 = 78;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: NPKWorkQueue was performing work, but somehow self.performingWork was NO)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) setPerformingWork:0];
  result = [*(a1 + 32) _onQueue_doWorkIfNecessary];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performWork:(id)a3
{
  v4 = a3;
  if ([(NPKWorkQueue *)self takeOutTransactions])
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: taking out XPC transaction for work", buf, 2u);
      }
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Work queue: %@ Item transaction", self->_workQueueName];
    v9 = [NPKOSTransaction transactionWithName:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NPKWorkQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__NPKWorkQueue_performWork___block_invoke;
  block[3] = &unk_279945A48;
  block[4] = self;
  v14 = v9;
  v15 = v4;
  v11 = v4;
  v12 = v9;
  dispatch_async(v10, block);
}

uint64_t __28__NPKWorkQueue_performWork___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remainingWork];
  v3 = [NPKWorkQueueItem itemWithTransaction:*(a1 + 40) work:*(a1 + 48)];
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _onQueue_doWorkIfNecessary];
}

- (void)flush
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      workQueueName = self->_workQueueName;
      *buf = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = workQueueName;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@, %@: Requested to flush pending works", buf, 0x16u);
    }
  }

  v7 = [(NPKWorkQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__NPKWorkQueue_flush__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __21__NPKWorkQueue_flush__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remainingWork];
  [v2 removeAllObjects];

  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@, %@: Flushed pending works", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end