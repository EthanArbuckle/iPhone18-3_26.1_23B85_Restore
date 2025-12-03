@interface NPKOSTransaction
+ (NPKOSTransaction)transactionWithName:(id)name;
- (id)_initWithName:(id)name;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NPKOSTransaction

- (id)_initWithName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = NPKOSTransaction;
  v5 = [(NPKOSTransaction *)&v21 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = dispatch_queue_create("com.apple.nanopasskit.ostransaction", 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v8;

    v10 = [@"com.apple.nanopasskit." stringByAppendingString:nameCopy];
    [v10 UTF8String];
    v11 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v11;

    v13 = pk_General_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_General_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v5->_name;
        *buf = 138412546;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        v18 = v16;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: %@: %@ begin", buf, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_transaction)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        name = self->_name;
        *buf = 136447234;
        v12 = "[NPKOSTransaction dealloc]";
        v13 = 2082;
        v14 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKOSTransaction.m";
        v15 = 2048;
        v16 = 31;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = name;
        v8 = v6;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %@: %@ was not invalidated prior to deallocation)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  v10.receiver = self;
  v10.super_class = NPKOSTransaction;
  [(NPKOSTransaction *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

+ (NPKOSTransaction)transactionWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithName:nameCopy];

  return v5;
}

- (void)invalidate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NPKOSTransaction_invalidate__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __30__NPKOSTransaction_invalidate__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = objc_opt_class();
        v8 = *(*(a1 + 32) + 24);
        v17 = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v9 = v7;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@: %@ invalidated", &v17, 0x16u);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = 0;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = *(*(a1 + 32) + 24);
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v16 = v14;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: %@: %@ was already invalidated", &v17, 0x16u);
    }
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

@end