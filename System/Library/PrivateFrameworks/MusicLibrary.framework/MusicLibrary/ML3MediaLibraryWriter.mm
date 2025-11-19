@interface ML3MediaLibraryWriter
+ (id)writerErrorWithCode:(int64_t)a3 description:(id)a4 userInfo:(id)a5;
- (BOOL)_shouldWatchdogTransaction:(id)a3;
- (BOOL)endTransaction:(id)a3 shouldCommit:(BOOL)a4 error:(id *)a5;
- (BOOL)executeUntrustedUpdate:(id)a3 withParameters:(id)a4 onTransaction:(id)a5 error:(id *)a6;
- (BOOL)executeUpdate:(id)a3 withParameters:(id)a4 onTransaction:(id)a5 error:(id *)a6;
- (ML3MediaLibraryWriter)init;
- (ML3MediaLibraryWriterDelegate)delegate;
- (id)_activeTransactionForClient:(id)a3;
- (id)_allDatabaseOperations;
- (id)_createNewTransactionForLibrary:(id)a3 fromClient:(id)a4 readOnly:(BOOL)a5;
- (id)_transactionForIdentifier:(id)a3;
- (id)beginTransactionForLibrary:(id)a3 withClient:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)description;
- (id)executeQuery:(id)a3 withParameters:(id)a4 options:(id)a5 onTransaction:(id)a6 error:(id *)a7;
- (id)executeUntrustedQuery:(id)a3 withParameters:(id)a4 options:(id)a5 onTransaction:(id)a6 error:(id *)a7;
- (void)_destroyTransaction:(id)a3 forceRelinquishConnection:(BOOL)a4;
- (void)_destroyTransactionForIdentifier:(id)a3 forceRelinquishConnection:(BOOL)a4;
- (void)_registerTransaction:(id)a3;
- (void)_setupWatchdogTimer;
- (void)_tearDownWatchdogTimer;
- (void)_unregisterTransaction:(id)a3;
- (void)_watchdogTimerFired:(id)a3;
- (void)cancelActiveTransactionForClient:(id)a3;
- (void)cancelAllActiveDatabaseOperationsAndWaitUntilFinished:(BOOL)a3;
- (void)cancelAllActiveTransactions;
- (void)cancelDatabaseOperationsForClient:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)performDatabaseOperation:(unint64_t)a3 onLibrary:(id)a4 withAttributes:(id)a5 options:(id)a6 fromClient:(id)a7 completionHandler:(id)a8;
- (void)reset;
- (void)setSuspended:(BOOL)a3;
- (void)setTransactionTimeout:(double)a3;
@end

@implementation ML3MediaLibraryWriter

- (ML3MediaLibraryWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_watchdogTimerFired:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_transactionTimeout != 0.0)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ML3MediaLibraryWriter__watchdogTimerFired___block_invoke;
    block[3] = &unk_2787660F0;
    block[4] = self;
    v6 = v4;
    v20 = v6;
    dispatch_sync(serialQueue, block);
    v7 = [ML3MediaLibraryWriter writerErrorWithCode:900 description:@"Media library database transaction was terminated due to inactivity."];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [(ML3MediaLibraryWriter *)self _destroyTransaction:v13 forceRelinquishConnection:1, v15];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained mediaLibraryWriter:self terminatedTransaction:v13 withError:v7];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

void __45__ML3MediaLibraryWriter__watchdogTimerFired___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ML3MediaLibraryWriter__watchdogTimerFired___block_invoke_2;
  v4[3] = &unk_278764000;
  v4[4] = v2;
  v5 = v1;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __45__ML3MediaLibraryWriter__watchdogTimerFired___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([*(a1 + 32) _shouldWatchdogTransaction:v4])
  {
    v5 = [v4 client];

    if (v5)
    {
      v6 = [v4 client];
      v7 = [v6 bundleID];
    }

    else
    {
      v7 = @"<Unknown>";
    }

    v8 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "** WARNING ** Writer daemon transaction was watchdogged for %{public}@. Forcing return of connection. %{public}@", &v9, 0x16u);
    }

    [*(a1 + 40) addObject:v4];
  }
}

- (BOOL)_shouldWatchdogTransaction:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 lastUsedTime];
  v8 = v6 - v7;
  transactionTimeout = self->_transactionTimeout;
  v10 = [v4 inUseByOperation];
  v11 = 0;
  if (v8 > transactionTimeout && (v10 & 1) == 0)
  {
    CFPreferencesAppSynchronize(@"com.apple.medialibraryd");
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MediaLibraryWatchdogDisabled", @"com.apple.medialibraryd", 0);
    v13 = [v4 terminable];
    if (AppBooleanValue)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13;
    }
  }

  return v11;
}

- (void)_tearDownWatchdogTimer
{
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(NSTimer *)watchdogTimer invalidate];
    v4 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }
}

- (void)_setupWatchdogTimer
{
  if (self->_watchdogTimer)
  {
    [(ML3MediaLibraryWriter *)self _tearDownWatchdogTimer];
  }

  v3 = objc_alloc(MEMORY[0x277CBEBB8]);
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_transactionTimeout];
  v5 = [v3 initWithFireDate:v4 interval:self target:sel__watchdogTimerFired_ selector:0 userInfo:1 repeats:self->_transactionTimeout];
  watchdogTimer = self->_watchdogTimer;
  self->_watchdogTimer = v5;

  v7 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v7 addTimer:self->_watchdogTimer forMode:*MEMORY[0x277CBE640]];
}

- (void)_destroyTransactionForIdentifier:(id)a3 forceRelinquishConnection:(BOOL)a4
{
  v4 = a4;
  v6 = [(ML3MediaLibraryWriter *)self _transactionForIdentifier:a3];
  [(ML3MediaLibraryWriter *)self _destroyTransaction:v6 forceRelinquishConnection:v4];
}

- (void)_destroyTransaction:(id)a3 forceRelinquishConnection:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    [(ML3MediaLibraryWriter *)self _unregisterTransaction:v5];
    v6 = [v5 _relinquishConnection];
    v7 = [v5 library];
    [v7 checkInDatabaseConnection:v6];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Warning: Attempted to destroy non-existent transaction. Possible deadlock.", v9, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mediaLibraryWriter:self didDestroyTransaction:v5];
  }
}

- (id)_createNewTransactionForLibrary:(id)a3 fromClient:(id)a4 readOnly:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"ML3MediaLibraryWriter.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v11 = [v10 connection];
  if (([v11 ml_isValid] & 1) != 0 || objc_msgSend(v10, "isDaemonClient"))
  {
    v12 = [v10 isDaemonClient];
    v13 = [v9 connectionPool];
    v14 = [v13 _connectionForWriting:v5 ^ 1 useThreadConnection:0 storeThreadLocalConnection:v12];

    if (([v11 ml_isValid] & 1) != 0 || objc_msgSend(v10, "isDaemonClient"))
    {
      v15 = [[ML3ActiveTransaction alloc] initWithLibrary:v9 connection:v14 client:v10];
      [(ML3ActiveTransaction *)v15 setReadOnly:v5];
      v16 = [(ML3ActiveTransaction *)v15 identifier];
      [v14 setCurrentTransactionID:v16];

      [(ML3MediaLibraryWriter *)self _registerTransaction:v15];
      goto LABEL_14;
    }

    v17 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = [v11 processIdentifier];
      _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "Zombie process with ID %d tried to start a transaction. It already got a connection, but it's being returned.", buf, 8u);
    }

    [v9 checkInDatabaseConnection:v14];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = [v11 processIdentifier];
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Zombie process with ID %d tried to start a transaction.", buf, 8u);
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (id)_allDatabaseOperations
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NSOperationQueue *)self->_databaseOperationQueue operations];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSOperationQueue *)self->_databaseOperationSerialQueue operations];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSOperationQueue *)self->_databaseOperationLimitedQueue operations];
  [v3 addObjectsFromArray:v6];

  v7 = [(NSOperationQueue *)self->_lowPriorityDatabaseOperationQueue operations];
  [v3 addObjectsFromArray:v7];

  return v3;
}

- (void)_unregisterTransaction:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ML3MediaLibraryWriter__unregisterTransaction___block_invoke;
  v7[3] = &unk_2787660F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __48__ML3MediaLibraryWriter__unregisterTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  [*(*(a1 + 40) + 56) removeObjectForKey:v2];
}

- (void)_registerTransaction:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ML3MediaLibraryWriter__registerTransaction___block_invoke;
  v7[3] = &unk_2787660F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __46__ML3MediaLibraryWriter__registerTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  [*(*(a1 + 40) + 56) setObject:*(a1 + 32) forKey:v2];
}

- (id)_activeTransactionForClient:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19317;
  v16 = __Block_byref_object_dispose__19318;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ML3MediaLibraryWriter__activeTransactionForClient___block_invoke;
  block[3] = &unk_278765F28;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__ML3MediaLibraryWriter__activeTransactionForClient___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ML3MediaLibraryWriter__activeTransactionForClient___block_invoke_2;
  v5[3] = &unk_278763FB0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __53__ML3MediaLibraryWriter__activeTransactionForClient___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [v11 client];
  if (v7)
  {
    v8 = v7;
    v9 = [v11 client];
    v10 = [v9 isEqual:*(a1 + 32)];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      *a4 = 1;
    }
  }
}

- (id)_transactionForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19317;
  v16 = __Block_byref_object_dispose__19318;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ML3MediaLibraryWriter__transactionForIdentifier___block_invoke;
  block[3] = &unk_278765F28;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __51__ML3MediaLibraryWriter__transactionForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)reset
{
  [(ML3MediaLibraryWriter *)self cancelAllActiveTransactions];
  [(ML3MediaLibraryWriter *)self cancelAllActiveDatabaseOperationsAndWaitUntilFinished:1];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ML3MediaLibraryWriter_reset__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)cancelDatabaseOperationsForClient:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ML3MediaLibraryWriter *)self _activeTransactionForClient:v6];
  v9 = [v8 identifier];
  v10 = os_log_create("com.apple.amp.medialibrary", "Writer");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v6;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Cancelling database transaction and operations for client %{public}@, transactionID=%{public}@", buf, 0x16u);
  }

  v11 = [(ML3MediaLibraryWriter *)self _allDatabaseOperations];
  v12 = dispatch_get_global_queue(21, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__ML3MediaLibraryWriter_cancelDatabaseOperationsForClient_completion___block_invoke;
  v17[3] = &unk_278763FD8;
  v18 = v11;
  v19 = v6;
  v20 = v9;
  v21 = v7;
  v13 = v7;
  v14 = v9;
  v15 = v6;
  v16 = v11;
  dispatch_async(v12, v17);
}

uint64_t __70__ML3MediaLibraryWriter_cancelDatabaseOperationsForClient_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 originatingClient];
        v10 = [v9 isEqual:*(a1 + 40)];

        if (v10)
        {
          v11 = [v8 options];
          v12 = [v11 objectForKeyedSubscript:@"MLDatabaseOperationOptionTransactionIdentifierKey"];
          v13 = *(a1 + 48);
          if (v13)
          {
            if (v13 == v12)
            {
              v14 = 1;
            }

            else
            {
              v14 = [v13 isEqual:v12];
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = os_log_create("com.apple.amp.medialibrary", "Writer");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v25 = v8;
            v26 = 1024;
            v27 = v14;
            _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Cancelling operation %{public}@. shouldWait = %{BOOL}u", buf, 0x12u);
          }

          [v8 cancel];
          if (v14)
          {
            [v8 waitUntilFinished];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v16 = os_log_create("com.apple.amp.medialibrary", "Writer");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138543362;
    v25 = v17;
    _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "Finished cancelling database operations for client %{public}@", buf, 0xCu);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)cancelAllActiveDatabaseOperationsAndWaitUntilFinished:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Writer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling all active database operations.", v6, 2u);
  }

  [(NSOperationQueue *)self->_databaseOperationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_databaseOperationSerialQueue cancelAllOperations];
  [(NSOperationQueue *)self->_databaseOperationLimitedQueue cancelAllOperations];
  [(NSOperationQueue *)self->_lowPriorityDatabaseOperationQueue cancelAllOperations];
  if (v3)
  {
    [(NSOperationQueue *)self->_databaseOperationQueue waitUntilAllOperationsAreFinished];
    [(NSOperationQueue *)self->_databaseOperationSerialQueue waitUntilAllOperationsAreFinished];
    [(NSOperationQueue *)self->_databaseOperationLimitedQueue waitUntilAllOperationsAreFinished];
    [(NSOperationQueue *)self->_lowPriorityDatabaseOperationQueue waitUntilAllOperationsAreFinished];
  }
}

- (void)cancelAllActiveTransactions
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Writer");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling all active transactions.", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ML3MediaLibraryWriter_cancelAllActiveTransactions__block_invoke;
  block[3] = &unk_2787660F0;
  v6 = v4;
  v21 = v6;
  v22 = self;
  dispatch_sync(serialQueue, block);
  v7 = [ML3MediaLibraryWriter writerErrorWithCode:900 description:@"The media library service cancelled all active database transactions."];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 identifier];
        [(ML3MediaLibraryWriter *)self _destroyTransactionForIdentifier:v14 forceRelinquishConnection:1];

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained mediaLibraryWriter:self terminatedTransaction:v13 withError:v7];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }
}

void __52__ML3MediaLibraryWriter_cancelAllActiveTransactions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 56) allValues];
  [v1 addObjectsFromArray:v2];
}

- (void)cancelActiveTransactionForClient:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Writer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleID];
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = [v4 processID];
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up any remaining transactions for ended process %{public}@ (process ID = %d)", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__19317;
  v15 = __Block_byref_object_dispose__19318;
  v16 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ML3MediaLibraryWriter_cancelActiveTransactionForClient___block_invoke;
  block[3] = &unk_278765F28;
  block[4] = self;
  v8 = v4;
  v11 = v8;
  v12 = buf;
  dispatch_sync(serialQueue, block);
  v9 = *(*&buf[8] + 40);
  if (v9)
  {
    [(ML3MediaLibraryWriter *)self endTransaction:v9 shouldCommit:0 error:0];
  }

  _Block_object_dispose(buf, 8);
}

void __58__ML3MediaLibraryWriter_cancelActiveTransactionForClient___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__ML3MediaLibraryWriter_cancelActiveTransactionForClient___block_invoke_2;
  v5[3] = &unk_278763FB0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __58__ML3MediaLibraryWriter_cancelActiveTransactionForClient___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = [v9 client];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 client];
    v13 = [v12 isEqual:*(a1 + 32)];

    if (v13)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      [v9 setPendingCancel:1];
      v14 = os_log_create("com.apple.amp.medialibrary", "Writer");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) bundleID];
        v16 = [*(a1 + 32) processID];
        v17 = 138543874;
        v18 = v9;
        v19 = 2114;
        v20 = v15;
        v21 = 1024;
        v22 = v16;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Found transaction %{public}@ to end for ended process %{public}@ (process ID = %d)", &v17, 0x1Cu);
      }

      *a4 = 1;
    }
  }
}

- (void)performDatabaseOperation:(unint64_t)a3 onLibrary:(id)a4 withAttributes:(id)a5 options:(id)a6 fromClient:(id)a7 completionHandler:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v39 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  context = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  if (a3 == 4)
  {
    p_activeSpotlightIndexOperation = &self->_activeSpotlightIndexOperation;
    if (self->_activeSpotlightIndexOperation)
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Writer");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 67109120;
      LODWORD(v45) = 4;
LABEL_9:
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "We have an active operation of type %d", buf, 8u);
LABEL_10:

      os_unfair_lock_unlock(&self->_lock);
      if (v17)
      {
        v17[2](v17, 1, 0);
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a3 != 8)
    {
      v20 = 0;
      goto LABEL_14;
    }

    p_activeSpotlightIndexOperation = &self->_activeSiriIndexOperation;
    if (self->_activeSiriIndexOperation)
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Writer");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 67109120;
      LODWORD(v45) = 8;
      goto LABEL_9;
    }
  }

  v20 = 1;
  *p_activeSpotlightIndexOperation = 1;
LABEL_14:
  os_unfair_lock_unlock(&self->_lock);
  v21 = [ML3DatabaseOperation databaseOperationForType:a3 withLibrary:v14 writer:self];
  v22 = v21;
  if (v21)
  {
    [v21 setOriginatingClient:v16];
    [v22 setOptions:v15];
    [v22 setAttributes:v39];
    objc_initWeak(&location, v22);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __112__ML3MediaLibraryWriter_performDatabaseOperation_onLibrary_withAttributes_options_fromClient_completionHandler___block_invoke;
    v40[3] = &unk_278763F88;
    objc_copyWeak(&v42, &location);
    v40[4] = self;
    v41 = v17;
    [v22 setCompletionBlock:v40];
    v23 = [v15 objectForKey:@"MLDatabaseOperationOptionEnqueueSerially"];
    v24 = [v23 BOOLValue];

    v25 = [v15 objectForKey:@"MLDatabaseOperationOptionUseLimitedQueue"];
    v26 = [v25 BOOLValue];

    v27 = os_log_create("com.apple.amp.medialibrary", "Writer");
    v28 = v27;
    if (v20)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v16 bundleID];
        v30 = [(NSOperationQueue *)self->_lowPriorityDatabaseOperationQueue operationCount];
        *buf = 138543874;
        v45 = v29;
        v46 = 2114;
        v47 = v22;
        v48 = 1024;
        v49 = v30;
        _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "Enqueueing %{public}@'s database operation to the service's low priority serial queue: %{public}@. current operation count = %d", buf, 0x1Cu);
      }

      v31 = 80;
    }

    else if (v24)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v16 bundleID];
        v35 = [(NSOperationQueue *)self->_databaseOperationQueue operationCount];
        *buf = 138543874;
        v45 = v34;
        v46 = 2114;
        v47 = v22;
        v48 = 1024;
        v49 = v35;
        _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "Enqueueing %{public}@'s database operation to the service's serial queue: %{public}@. current operation count = %d", buf, 0x1Cu);
      }

      v31 = 72;
    }

    else if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v16 bundleID];
        *buf = 138543618;
        v45 = v36;
        v46 = 2114;
        v47 = v22;
        _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "Enqueueing %{public}@'s database operation to the service's limited size queue: %{public}@", buf, 0x16u);
      }

      v31 = 88;
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v16 bundleID];
        *buf = 138543618;
        v45 = v37;
        v46 = 2114;
        v47 = v22;
        _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEBUG, "Enqueueing %{public}@'s database operation to the service's concurrent queue: %{public}@", buf, 0x16u);
      }

      v31 = 64;
    }

    [*(&self->super.isa + v31) addOperation:v22];
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"No operation exists for operation type: %lu", a3];
    v33 = [ML3MediaLibraryWriter writerErrorWithCode:600 description:v32];
    if (v17)
    {
      (v17)[2](v17, 0, v33);
    }
  }

LABEL_35:
  objc_autoreleasePoolPop(context);
}

void __112__ML3MediaLibraryWriter_performDatabaseOperation_onLibrary_withAttributes_options_fromClient_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = 0;
    v4 = 0;
    goto LABEL_15;
  }

  v4 = [WeakRetained success];
  v5 = [v3 error];
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v7 = [v3 originatingClient];
    v8 = [v7 bundleID];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v5;
    v9 = "Error executing database operation for %{public}@: %{public}@";
    v10 = v6;
    v11 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Writer_Oversize");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = [v3 originatingClient];
    v8 = [v7 bundleID];
    v14 = 138543618;
    v15 = v3;
    v16 = 2114;
    v17 = v8;
    v9 = "Successfully executed database operation %{public}@ for process %{public}@";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_22D2FA000, v10, v11, v9, &v14, 0x16u);

LABEL_9:
  os_unfair_lock_lock((*(a1 + 32) + 20));
  if ([v3 type] == 8)
  {
    v12 = 16;
LABEL_13:
    *(*(a1 + 32) + v12) = 0;
    goto LABEL_14;
  }

  if ([v3 type] == 4)
  {
    v12 = 17;
    goto LABEL_13;
  }

LABEL_14:
  os_unfair_lock_unlock((*(a1 + 32) + 20));
LABEL_15:
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v4, v5);
  }
}

- (BOOL)endTransaction:(id)a3 shouldCommit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(ML3MediaLibraryWriter *)self _transactionForIdentifier:v8];
  v10 = os_log_create("com.apple.amp.medialibrary", "Writer");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v22 = v9;
    v23 = 1024;
    LODWORD(v24) = 1;
    v12 = "Committing transaction=%{public}@, commit=%{BOOL}u";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v22 = v9;
    v23 = 1024;
    LODWORD(v24) = 0;
    v12 = "Rolling back transaction=%{public}@, commit=%{BOOL}u";
  }

  _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
LABEL_7:

  if (!v9)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"A connection with the transaction ID %@ could not be found.", v8];
    v14 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v13];
    goto LABEL_22;
  }

  [v9 lock];
  v13 = [v9 connection];
  if (![v13 isInTransaction])
  {
    v15 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Warning: Tried to end non-existent transaction for local connection.", buf, 2u);
    }

    v14 = 0;
    goto LABEL_20;
  }

  if (([v13 popToRootTransactionAndCommit:v6] & 1) == 0)
  {
    v16 = [v13 sqliteError];
    v17 = [MEMORY[0x277CCAB68] stringWithFormat:@"Unable to end transaction with ID %@.", v8];
    v15 = v17;
    if (v16)
    {
      [v17 appendFormat:@" %@", v16];
    }

    v14 = [ML3MediaLibraryWriter writerErrorWithCode:300 description:v15];

    v18 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Could not end transaction=%{public}@, error=%{public}@", buf, 0x16u);
    }

LABEL_20:
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  [(ML3MediaLibraryWriter *)self _destroyTransactionForIdentifier:v8 forceRelinquishConnection:0];
  [v9 unlock];
LABEL_22:

  if (a5)
  {
    v19 = v14;
    *a5 = v14;
  }

  return v14 == 0;
}

- (id)executeUntrustedQuery:(id)a3 withParameters:(id)a4 options:(id)a5 onTransaction:(id)a6 error:(id *)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v32 = a4;
  v14 = a5;
  v15 = a6;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__19317;
  v44 = __Block_byref_object_dispose__19318;
  v45 = MEMORY[0x277CBEBF8];
  v16 = [(ML3MediaLibraryWriter *)self _transactionForIdentifier:v15];
  v17 = v16;
  if (v16 && ([v16 connection], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = a2;
    *v50 = 0;
    *&v50[8] = v50;
    *&v50[16] = 0x3032000000;
    v51 = __Block_byref_object_copy__19317;
    v52 = __Block_byref_object_dispose__19318;
    v53 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __90__ML3MediaLibraryWriter_executeUntrustedQuery_withParameters_options_onTransaction_error___block_invoke;
    v33[3] = &unk_278763F60;
    v38 = &v40;
    v33[4] = self;
    v19 = v13;
    v34 = v19;
    v35 = v32;
    v36 = v14;
    v37 = v15;
    v39 = v50;
    v20 = [v18 _distrustQueriesDuringBlock:v33];
    if (v20)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempted to execute illegal query: %@ (%d)", v19, v20];
      if (a7)
      {
        v48 = @"action";
        v21 = [MEMORY[0x277CCABB0] numberWithInt:v20];
        v49 = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        *a7 = [ML3MediaLibraryWriter writerErrorWithCode:301 description:v31 userInfo:v22];
      }

      v23 = os_log_create("com.apple.amp.medialibrary", "Writer");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v31;
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v41[5])
      {
        v29 = [MEMORY[0x277CCA890] currentHandler];
        [v29 handleFailureInMethod:v30 object:self file:@"ML3MediaLibraryWriter.m" lineNumber:376 description:@"Authorizer failure should have caused executeUpdate: to return NO"];
      }
    }

    else if (a7)
    {
      v26 = *(*&v50[8] + 40);
      if (v26)
      {
        *a7 = v26;
      }
    }

    _Block_object_dispose(v50, 8);
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempted to execute query without a valid transaction (transaction ID = %@). You must be within an existing transaction first before executing a query.", v15];
    if (a7)
    {
      *a7 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v24];
    }

    v25 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v50 = 138543618;
      *&v50[4] = v13;
      *&v50[12] = 2114;
      *&v50[14] = v24;
      _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_ERROR, "Error executing query: %{public}@. %{public}@", v50, 0x16u);
    }

    v18 = 0;
  }

  v27 = v41[5];

  _Block_object_dispose(&v40, 8);

  return v27;
}

void __90__ML3MediaLibraryWriter_executeUntrustedQuery_withParameters_options_onTransaction_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = *(a1[10] + 8);
  obj = *(v7 + 40);
  v8 = [v2 executeQuery:v3 withParameters:v4 options:v5 onTransaction:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[9] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)executeQuery:(id)a3 withParameters:(id)a4 options:(id)a5 onTransaction:(id)a6 error:(id *)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v38 = a4;
  v11 = a5;
  v12 = a6;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__19317;
  v51 = __Block_byref_object_dispose__19318;
  v52 = 0;
  v37 = [MEMORY[0x277CBEB18] array];
  v13 = [(ML3MediaLibraryWriter *)self _transactionForIdentifier:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 connection];
    v16 = [v11 objectForKey:@"MLDatabaseQueryOptionLimitPropertyKey"];
    v36 = [v11 objectForKey:@"MLDatabaseQueryOptionLimitValueKey"];
    if (v16 && v36)
    {
      v17 = [v15 executeQuery:v39 withParameters:v38 limitProperty:v16 limitValue:{objc_msgSend(v36, "longLongValue")}];
    }

    else
    {
      v17 = [v15 executeQuery:v39 withParameters:v38];
    }

    v19 = v17;
    if (v17)
    {
      v20 = [v11 objectForKey:@"MLDatabaseQueryOptionRangeBeginKey"];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 integerValue];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v11 objectForKey:@"MLDatabaseQueryOptionCountKey"];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 integerValue];
      }

      else
      {
        v25 = 0x7FFFFFFFLL;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v54 = 0;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __81__ML3MediaLibraryWriter_executeQuery_withParameters_options_onTransaction_error___block_invoke;
      v40[3] = &unk_278763F38;
      v43 = buf;
      v45 = v22;
      v41 = v37;
      v42 = v15;
      v44 = &v47;
      v46 = v25;
      [v19 enumerateRowsWithBlock:v40];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = [v15 sqliteError];
      v19 = [v26 stringWithFormat:@"Database Error: %@", v27];

      v28 = [ML3MediaLibraryWriter writerErrorWithCode:300 description:v19];
      v21 = v48[5];
      v48[5] = v28;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempted to execute query without a valid transaction (transaction ID = %@). You must be within an existing transaction first before executing a query.", v12];
    v18 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v15];
    v16 = v48[5];
    v48[5] = v18;
  }

  v29 = v48[5];
  v30 = os_log_create("com.apple.amp.medialibrary", "Writer");
  v31 = v30;
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v32 = v48[5];
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v32;
      _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "Error executing query: %{public}@. %{public}@", buf, 0x16u);
    }

    if (a7)
    {
      *a7 = v48[5];
    }
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v37 count];
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEBUG, "Successfully executed query %{public}@ with %lu rows returned.", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v47, 8);

  return v37;
}

void __81__ML3MediaLibraryWriter_executeQuery_withParameters_options_onTransaction_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (v9 >= *(a1 + 64))
  {
    if (!v17 || v7)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [*(a1 + 40) sqliteError];
      v11 = [v12 stringWithFormat:@"Database error while fetching rows: %@", v13];

      v14 = [ML3MediaLibraryWriter writerErrorWithCode:300 description:v11];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      *a4 = 1;
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [v17 arrayRepresentation];
      [v10 addObject:v11];
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  *(v8 + 24) = v9 + 1;
  if (*(*(*(a1 + 48) + 8) + 24) - *(a1 + 64) >= *(a1 + 72))
  {
    *a4 = 1;
  }
}

- (BOOL)executeUntrustedUpdate:(id)a3 withParameters:(id)a4 onTransaction:(id)a5 error:(id *)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v14 = [(ML3MediaLibraryWriter *)self _transactionForIdentifier:v13];
  v15 = v14;
  if (v14 && ([v14 connection], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v28 = a2;
    *v44 = 0;
    *&v44[8] = v44;
    *&v44[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__19317;
    v46 = __Block_byref_object_dispose__19318;
    v47 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __83__ML3MediaLibraryWriter_executeUntrustedUpdate_withParameters_onTransaction_error___block_invoke;
    v30[3] = &unk_278763F10;
    v34 = &v36;
    v30[4] = self;
    v17 = v11;
    v31 = v17;
    v32 = v12;
    v33 = v13;
    v35 = v44;
    v18 = [v16 _distrustQueriesDuringBlock:v30];
    if (v18)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempted to execute illegal update: %@ (%d)", v17, v18];
      if (a6)
      {
        v42 = @"action";
        v19 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        v43 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *a6 = [ML3MediaLibraryWriter writerErrorWithCode:301 description:v29 userInfo:v20];
      }

      v21 = os_log_create("com.apple.amp.medialibrary", "Writer");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v29;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (*(v37 + 24))
      {
        v27 = [MEMORY[0x277CCA890] currentHandler];
        [v27 handleFailureInMethod:v28 object:self file:@"ML3MediaLibraryWriter.m" lineNumber:264 description:@"Authorizer failure should have caused executeUpdate: to return NO"];
      }
    }

    else if (a6)
    {
      v24 = *(*&v44[8] + 40);
      if (v24)
      {
        *a6 = v24;
      }
    }

    _Block_object_dispose(v44, 8);
  }

  else
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempted to execute update without a valid transaction (transaction ID = %@). You must start a transaction first before executing an update.", v13];
    if (a6)
    {
      *a6 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v22];
    }

    v23 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v44 = 138543618;
      *&v44[4] = v11;
      *&v44[12] = 2114;
      *&v44[14] = v22;
      _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "Failed to execute update %{public}@. %{public}@", v44, 0x16u);
    }

    v16 = 0;
  }

  v25 = *(v37 + 24);

  _Block_object_dispose(&v36, 8);
  return v25 & 1;
}

void __83__ML3MediaLibraryWriter_executeUntrustedUpdate_withParameters_onTransaction_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 executeUpdate:v3 withParameters:v4 onTransaction:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[8] + 8) + 24) = v7;
}

- (BOOL)executeUpdate:(id)a3 withParameters:(id)a4 onTransaction:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(ML3MediaLibraryWriter *)self _transactionForIdentifier:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 connection];
    v30 = 0;
    v16 = [v15 executeUpdate:v10 withParameters:v11 error:&v30];
    v17 = v30;
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database Error: %@", v17];
      v19 = [ML3MediaLibraryWriter writerErrorWithCode:300 description:v21];
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempted to execute update without a valid transaction (transaction ID = %@). You must start a transaction first before executing an update.", v12];
    v19 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v20];
  }

  v22 = os_log_create("com.apple.amp.medialibrary", "Writer");
  v23 = v22;
  if (v19)
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138543618;
    v32 = v10;
    v33 = 2114;
    v34 = v19;
    v24 = "Failed to execute update %{public}@. %{public}@";
    v25 = v23;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 138543362;
    v32 = v10;
    v24 = "Successfully executed update %{public}@.";
    v25 = v23;
    v26 = OS_LOG_TYPE_DEBUG;
    v27 = 12;
  }

  _os_log_impl(&dword_22D2FA000, v25, v26, v24, buf, v27);
LABEL_16:

  if (a6)
  {
    v28 = v19;
    *a6 = v19;
  }

  return v19 == 0;
}

- (id)beginTransactionForLibrary:(id)a3 withClient:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(ML3MediaLibraryWriter *)self _createNewTransactionForLibrary:v10 fromClient:v11 readOnly:(a5 >> 1) & 1];
  v13 = v12;
  if (!v12)
  {
    v17 = [ML3MediaLibraryWriter writerErrorWithCode:100 description:@"Could not obtain writer connection for database."];
    v15 = 0;
    goto LABEL_18;
  }

  if (a5)
  {
    [v12 setTerminable:0];
  }

  *v42 = 0;
  *&v42[8] = v42;
  *&v42[16] = 0x2020000000;
  v43 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ML3MediaLibraryWriter_beginTransactionForLibrary_withClient_options_error___block_invoke;
  block[3] = &unk_278766080;
  v36 = v42;
  v15 = v13;
  v35 = v15;
  dispatch_sync(serialQueue, block);
  if (*(*&v42[8] + 24) == 1)
  {
    v33 = a6;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transaction %@ is pending close", v15];
    v17 = [ML3MediaLibraryWriter writerErrorWithCode:300 description:v16];
    v18 = os_log_create("com.apple.amp.medialibrary", "Writer");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = v15;
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Not beginning transaction %{public}@ as it is pendingClose", buf, 0xCu);
    }

    v19 = MEMORY[0x277D27EF0];
    v37[0] = @"transaction";
    v37[1] = @"client";
    v38[0] = v15;
    if (v11)
    {
      v20 = [v11 description];
    }

    else
    {
      v20 = @"nil";
    }

    v38[1] = v20;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v39 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [v19 snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:@"TransactionIsPendingClose" context:@"Transaction is pending close" triggerThresholdValues:0 events:v25 completion:0];

    a6 = v33;
    v23 = 0;
    v22 = v15;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = [v15 connection];
  if (([v16 pushTransaction] & 1) == 0)
  {
    v20 = [v16 sqliteError];
    v21 = [v15 identifier];
    [(ML3MediaLibraryWriter *)self _destroyTransactionForIdentifier:v21 forceRelinquishConnection:0];

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not begin transaction. %@", v20];
    v17 = [ML3MediaLibraryWriter writerErrorWithCode:300 description:v22];
    v23 = v15;
LABEL_15:

    v15 = v22;
LABEL_16:

    v15 = v23;
    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:

  _Block_object_dispose(v42, 8);
LABEL_18:
  v26 = os_log_create("com.apple.amp.medialibrary", "Writer");
  v27 = v26;
  if (v17)
  {
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v42 = 138543618;
    *&v42[4] = v11;
    *&v42[12] = 2114;
    *&v42[14] = v17;
    v28 = "Failed to begin transaction for client %{public}@. %{public}@";
    v29 = v27;
    v30 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v42 = 138543618;
    *&v42[4] = v15;
    *&v42[12] = 2114;
    *&v42[14] = v11;
    v28 = "Successfully began transaction=%{public}@ for client %{public}@.";
    v29 = v27;
    v30 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_22D2FA000, v29, v30, v28, v42, 0x16u);
LABEL_24:

  if (a6)
  {
    v31 = v17;
    *a6 = v17;
  }

  return v15;
}

uint64_t __77__ML3MediaLibraryWriter_beginTransactionForLibrary_withClient_options_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPendingCancel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  self->_suspended = a3;
  [(NSOperationQueue *)self->_databaseOperationQueue setSuspended:?];
  [(NSOperationQueue *)self->_databaseOperationSerialQueue setSuspended:v3];
  [(NSOperationQueue *)self->_databaseOperationLimitedQueue setSuspended:v3];
  lowPriorityDatabaseOperationQueue = self->_lowPriorityDatabaseOperationQueue;

  [(NSOperationQueue *)lowPriorityDatabaseOperationQueue setSuspended:v3];
}

- (void)setTransactionTimeout:(double)a3
{
  self->_transactionTimeout = a3;
  if (a3 > 0.0)
  {
    [(ML3MediaLibraryWriter *)self _setupWatchdogTimer];
  }
}

- (id)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 stringWithFormat:@"MediaLibrary Daemon State at %@\n", v4];

  [v5 appendString:@"Active Transactions:\n"];
  if ([(NSMutableDictionary *)self->_transactionMap count])
  {
    transactionMap = self->_transactionMap;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __36__ML3MediaLibraryWriter_description__block_invoke;
    v21[3] = &unk_278763EE8;
    v22 = v5;
    [(NSMutableDictionary *)transactionMap enumerateKeysAndObjectsUsingBlock:v21];
  }

  else
  {
    [v5 appendString:@"(None)\n"];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v23 = *&self->_databaseOperationQueue;
  lowPriorityDatabaseOperationQueue = self->_lowPriorityDatabaseOperationQueue;
  databaseOperationLimitedQueue = self->_databaseOperationLimitedQueue;
  v25 = lowPriorityDatabaseOperationQueue;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:4];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v13 == self->_databaseOperationQueue)
        {
          v14 = @"Enqueued concurrent operations:\n";
        }

        else if (v13 == self->_databaseOperationLimitedQueue)
        {
          v14 = @"Enqueued operations in limited size queue:\n";
        }

        else if (v13 == self->_lowPriorityDatabaseOperationQueue)
        {
          v14 = @"Enqueued operations in lowPriority serial queue:\n";
        }

        else
        {
          v14 = @"Enqueued serial operations:\n";
        }

        [v5 appendString:v14];
        if ([(NSOperationQueue *)v13 operationCount])
        {
          v15 = [(NSOperationQueue *)v13 operations];
          [v5 appendFormat:@"%@\n", v15];
        }

        else
        {
          [v5 appendString:@"(None)\n"];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v10);
  }

  return v5;
}

void __36__ML3MediaLibraryWriter_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 description];
  [v3 appendFormat:@"%@\n", v4];
}

- (void)dealloc
{
  [(ML3MediaLibraryWriter *)self _tearDownWatchdogTimer];
  [(ML3MediaLibraryWriter *)self cancelAllActiveTransactions];
  v3.receiver = self;
  v3.super_class = ML3MediaLibraryWriter;
  [(ML3MediaLibraryWriter *)&v3 dealloc];
}

- (ML3MediaLibraryWriter)init
{
  v17.receiver = self;
  v17.super_class = ML3MediaLibraryWriter;
  v2 = [(ML3MediaLibraryWriter *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_transactionTimeout = 0.0;
    v4 = dispatch_queue_create("com.apple.ML3MediaLibraryWriter", 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transactionMap = v3->_transactionMap;
    v3->_transactionMap = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    databaseOperationQueue = v3->_databaseOperationQueue;
    v3->_databaseOperationQueue = v8;

    [(NSOperationQueue *)v3->_databaseOperationQueue setQualityOfService:25];
    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    databaseOperationSerialQueue = v3->_databaseOperationSerialQueue;
    v3->_databaseOperationSerialQueue = v10;

    [(NSOperationQueue *)v3->_databaseOperationSerialQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_databaseOperationSerialQueue setQualityOfService:25];
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    databaseOperationLimitedQueue = v3->_databaseOperationLimitedQueue;
    v3->_databaseOperationLimitedQueue = v12;

    [(NSOperationQueue *)v3->_databaseOperationLimitedQueue setMaxConcurrentOperationCount:5];
    [(NSOperationQueue *)v3->_databaseOperationLimitedQueue setQualityOfService:25];
    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    lowPriorityDatabaseOperationQueue = v3->_lowPriorityDatabaseOperationQueue;
    v3->_lowPriorityDatabaseOperationQueue = v14;

    [(NSOperationQueue *)v3->_lowPriorityDatabaseOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_lowPriorityDatabaseOperationQueue setQualityOfService:17];
    *&v3->_activeSiriIndexOperation = 0;
    v3->_lock._os_unfair_lock_opaque = 0;
    if (v3->_transactionTimeout > 0.0)
    {
      [(ML3MediaLibraryWriter *)v3 _setupWatchdogTimer];
    }
  }

  return v3;
}

+ (id)writerErrorWithCode:(int64_t)a3 description:(id)a4 userInfo:(id)a5
{
  v7 = a4;
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MLWriterErrorDomain" code:a3 userInfo:v10];

  return v11;
}

@end