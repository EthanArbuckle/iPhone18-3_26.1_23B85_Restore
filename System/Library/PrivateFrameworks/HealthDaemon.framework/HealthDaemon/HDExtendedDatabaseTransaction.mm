@interface HDExtendedDatabaseTransaction
- (BOOL)commitWithErrorOut:(id *)out;
- (BOOL)performInTransactionWithErrorOut:(id *)out block:(id)block;
- (BOOL)rollbackDueToError:(id)error errorOut:(id *)out;
- (HDDatabase)database;
- (HDExtendedDatabaseTransaction)initWithDatabase:(id)database context:(id)context transactionTimeout:(double)timeout continuationTimeout:(double)continuationTimeout error:(id *)error;
- (void)_enableAutomaticRollbackTimer;
- (void)dealloc;
@end

@implementation HDExtendedDatabaseTransaction

- (HDExtendedDatabaseTransaction)initWithDatabase:(id)database context:(id)context transactionTimeout:(double)timeout continuationTimeout:(double)continuationTimeout error:(id *)error
{
  databaseCopy = database;
  contextCopy = context;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDExtendedDatabaseTransaction.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
  }

  if (timeout <= 0.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDExtendedDatabaseTransaction.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"transactionTimeout > 0"}];
  }

  if (continuationTimeout <= 0.0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDExtendedDatabaseTransaction.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"continuationTimeout > 0"}];
  }

  v50.receiver = self;
  v50.super_class = HDExtendedDatabaseTransaction;
  v15 = [(HDExtendedDatabaseTransaction *)&v50 init];
  if (v15)
  {
    v16 = v15;
    objc_storeWeak(&v15->_database, databaseCopy);
    *(v16 + 96) = timeout;
    *(v16 + 104) = continuationTimeout;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v18 = *(v16 + 16);
    *(v16 + 16) = uUID;

    v19 = HKCreateSerialDispatchQueue();
    v20 = *(v16 + 32);
    *(v16 + 32) = v19;

    v21 = HKCreateSerialDispatchQueue();
    v22 = *(v16 + 40);
    *(v16 + 40) = v21;

    v23 = dispatch_semaphore_create(0);
    v24 = *(v16 + 48);
    *(v16 + 48) = v23;

    v25 = dispatch_semaphore_create(0);
    v26 = *(v16 + 56);
    *(v16 + 56) = v25;

    v27 = dispatch_get_global_queue(0, 0);
    v28 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v27);
    v29 = *(v16 + 64);
    *(v16 + 64) = v28;

    objc_initWeak(&location, v16);
    v30 = *(v16 + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __103__HDExtendedDatabaseTransaction_initWithDatabase_context_transactionTimeout_continuationTimeout_error___block_invoke;
    handler[3] = &unk_278616F38;
    objc_copyWeak(&v48, &location);
    dispatch_source_set_event_handler(v30, handler);
    [(HDExtendedDatabaseTransaction *)v16 _enableAutomaticRollbackTimer];
    dispatch_resume(*(v16 + 64));
    *(v16 + 80) = 0;
    v31 = *(v16 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__HDExtendedDatabaseTransaction_initWithDatabase_context_transactionTimeout_continuationTimeout_error___block_invoke_319;
    block[3] = &unk_278613920;
    v32 = v16;
    v45 = v32;
    v46 = contextCopy;
    dispatch_async(v31, block);
    dispatch_semaphore_wait(*(v16 + 48), 0xFFFFFFFFFFFFFFFFLL);
    lastError = v32->_lastError;
    if (lastError)
    {
      v34 = lastError;
      v35 = v34;
      if (error)
      {
        v36 = v34;
        *error = v35;
      }

      else
      {
        _HKLogDroppedError();
      }

      v32 = 0;
    }

    else
    {
      v37 = dispatch_time(0, (*(v16 + 96) * 1000000000.0));
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __103__HDExtendedDatabaseTransaction_initWithDatabase_context_transactionTimeout_continuationTimeout_error___block_invoke_2;
      v42[3] = &unk_278616F38;
      objc_copyWeak(&v43, &location);
      dispatch_after(v37, v27, v42);

      objc_destroyWeak(&v43);
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void __103__HDExtendedDatabaseTransaction_initWithDatabase_context_transactionTimeout_continuationTimeout_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Rollback due to automatic rollback timer timeout"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0;
  v5 = [WeakRetained rollbackDueToError:v3 errorOut:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_loadWeakRetained((a1 + 32));
      *buf = 138412290;
      v13 = v10;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "'%@', rollback due to automatic rollback timer timeout", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enableAutomaticRollbackTimer
{
  if (self)
  {
    v2 = *(self + 64);
    if (v2)
    {
      if (*(self + 80) <= 1uLL)
      {
        v3 = dispatch_time(0, (*(self + 104) * 1000000000.0));
        v4 = (*(self + 104) * 1000000000.0);

        dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, v4);
      }
    }
  }
}

void __103__HDExtendedDatabaseTransaction_initWithDatabase_context_transactionTimeout_continuationTimeout_error___block_invoke_319(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    if (!WeakRetained)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:sel__transaction_runTransactionWithContext_ object:v1 file:@"HDExtendedDatabaseTransaction.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"healthDatabase"}];
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v9[6] = sel__transaction_runTransactionWithContext_;
    v10 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__HDExtendedDatabaseTransaction__transaction_runTransactionWithContext___block_invoke;
    v9[3] = &unk_278616AA0;
    v9[4] = v1;
    v9[5] = v11;
    v4 = [WeakRetained performTransactionWithContext:v2 error:&v10 block:v9 inaccessibilityHandler:0];
    v5 = v10;
    v6 = v10;
    if (!*(v1 + 88) && v6)
    {
      objc_storeStrong((v1 + 88), v5);
    }

    *(v1 + 8) = v4;
    dispatch_semaphore_signal(*(v1 + 48));
    v7 = objc_loadWeakRetained((v1 + 24));
    [v7 finalizeExtendedTransactionForIdentifier:*(v1 + 16)];

    _Block_object_dispose(v11, 8);
  }
}

void __103__HDExtendedDatabaseTransaction_initWithDatabase_context_transactionTimeout_continuationTimeout_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Rollback due to transaction timeout"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0;
  v5 = [WeakRetained rollbackDueToError:v3 errorOut:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_loadWeakRetained((a1 + 32));
      *buf = 138412290;
      v13 = v10;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "'%@', rollback due to transaction timeout", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  automaticRollbackTimer = self->_automaticRollbackTimer;
  if (automaticRollbackTimer)
  {
    dispatch_source_cancel(automaticRollbackTimer);
    v4 = self->_automaticRollbackTimer;
    self->_automaticRollbackTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = HDExtendedDatabaseTransaction;
  [(HDExtendedDatabaseTransaction *)&v5 dealloc];
}

- (BOOL)performInTransactionWithErrorOut:(id *)out block:(id)block
{
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__74;
  v26 = __Block_byref_object_dispose__74;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  dataQueue = self->_dataQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HDExtendedDatabaseTransaction_performInTransactionWithErrorOut_block___block_invoke;
  v14[3] = &unk_27861E9A8;
  v14[4] = self;
  v8 = blockCopy;
  v15 = v8;
  v16 = &v18;
  v17 = &v22;
  dispatch_sync(dataQueue, v14);
  v9 = *(v19 + 24);
  if ((v9 & 1) == 0)
  {
    v10 = v23[5];
    v11 = v10;
    if (v10)
    {
      if (out)
      {
        v12 = v10;
        *out = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v9 & 1;
}

void __72__HDExtendedDatabaseTransaction_performInTransactionWithErrorOut_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
  {
    dispatch_suspend(*(v2 + 64));
    v3 = _Block_copy(*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    dispatch_semaphore_signal(*(*(a1 + 32) + 56));
    dispatch_semaphore_wait(*(*(a1 + 32) + 48), 0xFFFFFFFFFFFFFFFFLL);
    [(HDExtendedDatabaseTransaction *)*(a1 + 32) _enableAutomaticRollbackTimer];
    dispatch_resume(*(*(a1 + 32) + 64));
    v6 = 0;
    *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
    v7 = 72;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Extended transaction is no longer in progress."];
    v7 = 88;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + v7);
  *(v8 + v7) = v6;

  v10 = *(*(a1 + 32) + 88);
  v11 = (*(*(a1 + 56) + 8) + 40);

  objc_storeStrong(v11, v10);
}

- (BOOL)commitWithErrorOut:(id *)out
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HDExtendedDatabaseTransaction_commitWithErrorOut___block_invoke;
  v4[3] = &unk_278616048;
  v4[4] = self;
  return [(HDExtendedDatabaseTransaction *)self performInTransactionWithErrorOut:out block:v4];
}

- (BOOL)rollbackDueToError:(id)error errorOut:(id *)out
{
  errorCopy = error;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HDExtendedDatabaseTransaction_rollbackDueToError_errorOut___block_invoke;
  v9[3] = &unk_278613218;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  [(HDExtendedDatabaseTransaction *)self performInTransactionWithErrorOut:out block:v9];
  LOBYTE(out) = self->_status == 3;

  return out;
}

uint64_t __61__HDExtendedDatabaseTransaction_rollbackDueToError_errorOut___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  *(*(a1 + 32) + 80) = 3;
  return 1;
}

uint64_t __72__HDExtendedDatabaseTransaction__transaction_runTransactionWithContext___block_invoke(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *(a1[4] + 80) = 1;
  *(*(a1[5] + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1[4] + 48));
  v6 = MEMORY[0x277CCC2A0];
  do
  {
    while (1)
    {
      while (1)
      {
        v7 = a1[4];
        v8 = *(v7 + 56);
        v9 = dispatch_time(0, (*(v7 + 104) * 1000000000.0));
        if (dispatch_semaphore_wait(v8, v9))
        {
          *(a1[4] + 80) = 3;
          v10 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Rollback due to HDExtendedDatabaseTransaction continuation timeout"];
          v11 = *(a1[4] + 88);
          *(a1[4] + 88) = v10;

          v12 = *(a1[4] + 88);
          v13 = v12;
          if (v12)
          {
            if (a3)
            {
              v14 = v12;
              *a3 = v13;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          _HKInitializeLogging();
          v15 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            v24 = a1[4];
            *buf = 138412290;
            v32 = v24;
            _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "'%@', rollback due to HDExtendedDatabaseTransaction continuation timeout", buf, 0xCu);
          }
        }

        v16 = a1[4];
        if (*(v16 + 80) == 1)
        {
          v17 = *(v16 + 72);
          if (v17)
          {
            v30 = 0;
            v18 = (*(v17 + 16))(v17, v5, &v30);
            v19 = v30;
            v20 = v30;
            *(a1[4] + 8) = v18;
            v21 = a1[4];
            if ((*(v21 + 8) & 1) == 0)
            {
              objc_storeStrong((v21 + 88), v19);
            }

            v16 = a1[4];
            if ((*(v16 + 8) & 1) == 0)
            {
              *(v16 + 80) = 3;
              v16 = a1[4];
            }
          }
        }

        v22 = *(v16 + 80);
        if (v22 > 0)
        {
          break;
        }

        if (!v22)
        {
          v23 = [MEMORY[0x277CCA890] currentHandler];
          [v23 handleFailureInMethod:a1[6] object:a1[4] file:@"HDExtendedDatabaseTransaction.m" lineNumber:234 description:@"Invalid transaction status."];
        }
      }

      if (v22 != 1)
      {
        break;
      }

      dispatch_semaphore_signal(*(v16 + 48));
    }

    if (v22 == 2)
    {
      v27 = 1;
      goto LABEL_26;
    }
  }

  while (v22 != 3);
  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
  {
    v26 = *(a1[4] + 88);
    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_INFO, "Transaction was rolled back, last error: %@", buf, 0xCu);
  }

  v27 = 0;
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (HDDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

@end