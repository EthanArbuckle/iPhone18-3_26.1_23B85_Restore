@interface ML3DatabaseConnectionSubPool
@end

@implementation ML3DatabaseConnectionSubPool

void __78___ML3DatabaseConnectionSubPool__checkoutConnection_ignoreSubPoolClosedState___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 24);
  v5[2] = __78___ML3DatabaseConnectionSubPool__checkoutConnection_ignoreSubPoolClosedState___block_invoke_2;
  v5[3] = &unk_278765D60;
  v8 = v2;
  v6 = v3;
  v7 = *(a1 + 48);
  dispatch_sync(v4, v5);
}

void __78___ML3DatabaseConnectionSubPool__checkoutConnection_ignoreSubPoolClosedState___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 64) != 1 || (*(a1 + 56) & 1) != 0)
  {
    v3 = [*(v2 + 40) anyObject];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 40);
    if (!*(*(v6 + 8) + 40))
    {
      goto LABEL_8;
    }

    [*(*(a1 + 32) + 40) removeObject:?];
    [*(*(a1 + 32) + 48) addObject:*(*(*(a1 + 40) + 8) + 40)];
    v7 = [*(*(*(a1 + 40) + 8) + 40) connection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(*(a1 + 32) + 66);

      v6 = *(a1 + 40);
      if (v8)
      {
        goto LABEL_8;
      }

      v9 = *(v6 + 8);
      v7 = *(v9 + 40);
      *(v9 + 40) = 0;
    }

    v6 = *(a1 + 40);
LABEL_8:
    if (!*(*(v6 + 8) + 40))
    {
      if (*(*(a1 + 32) + 66))
      {
        v10 = off_27875C440;
      }

      else
      {
        v10 = off_27875C430;
      }

      v16 = [objc_alloc(*v10) initWithDatabasePath:*(*(a1 + 32) + 72)];
      [v16 setReadOnly:*(*(a1 + 32) + 65)];
      [v16 setJournalingMode:*(*(a1 + 32) + 88)];
      v11 = [[_ML3DatabaseConnectionWrapper alloc] initWithConnection:v16];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      [*(*(a1 + 32) + 48) addObject:*(*(*(a1 + 40) + 8) + 40)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    return;
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    *buf = 138543362;
    v18 = v15;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Not creating connection as the pool is closed", buf, 0xCu);
  }
}

uint64_t __50___ML3DatabaseConnectionSubPool_isBusyConnection___block_invoke(void *a1)
{
  result = [*(a1[4] + 48) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __50___ML3DatabaseConnectionSubPool_handleDiagnostic___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 65);
  v4 = [*(v2 + 40) allObjects];
  v5 = *(a1 + 40);
  if (v3 == 1)
  {
    [v5 setReaderAvailableConnections:v4];

    v6 = [*(*(a1 + 32) + 48) allObjects];
    [*(a1 + 40) setReaderBusyConnections:?];
  }

  else
  {
    [v5 setWriterAvailableConnections:v4];

    v6 = [*(*(a1 + 32) + 48) allObjects];
    [*(a1 + 40) setWriterBusyConnections:?];
  }
}

uint64_t __95___ML3DatabaseConnectionSubPool_closeConnectionsForOwningPoolClosed_andWaitForBusyConnections___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(*(a1 + 32) + 40);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v18;
    *&v3 = 138543618;
    v15 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = [v7 debugDescription];
          *buf = v15;
          v22 = v9;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ closing available connection=%{public}@", buf, 0x16u);
        }

        v11 = [v7 connection];
        [v11 close];

        if (*(a1 + 64) == 1 && *(a1 + 65) == 1)
        {
          [*(a1 + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v4);
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v12 = *(a1 + 48);
    v13 = [*(*(a1 + 32) + 48) allObjects];
    [v12 addObjectsFromArray:v13];
  }

  result = [*(*(a1 + 32) + 48) count];
  *(*(*(a1 + 56) + 8) + 24) = result != 0;
  return result;
}

void __95___ML3DatabaseConnectionSubPool_closeConnectionsForOwningPoolClosed_andWaitForBusyConnections___block_invoke_245(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 debugDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ checking in available connection=%{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) checkInConnection:v3 returnToPool:0];
}

void __49___ML3DatabaseConnectionSubPool_closeConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 close];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___ML3DatabaseConnectionSubPool_closeConnection___block_invoke_2;
  block[3] = &unk_2787660F0;
  block[4] = v4;
  v13 = v3;
  dispatch_sync(v5, block);
  v6 = [*(a1 + 32) connection];
  v7 = [v6 connectionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49___ML3DatabaseConnectionSubPool_closeConnection___block_invoke_3;
    v10[3] = &unk_278765FB8;
    v11 = *(a1 + 32);
    dispatch_async(v9, v10);
  }

  dispatch_semaphore_signal(*(*(a1 + 40) + 32));
}

void __49___ML3DatabaseConnectionSubPool_closeConnection___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) connection];
  v2 = [v4 connectionDelegate];
  v3 = [*(a1 + 32) connection];
  [v2 connectionDidClose:v3];
}

void __64___ML3DatabaseConnectionSubPool_checkInConnection_returnToPool___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___ML3DatabaseConnectionSubPool_checkInConnection_returnToPool___block_invoke_2;
  block[3] = &unk_278765CE8;
  v8 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_sync(v2, block);
  dispatch_semaphore_signal(*(*(a1 + 32) + 32));
}

uint64_t __64___ML3DatabaseConnectionSubPool_checkInConnection_returnToPool___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) connection];
  v4 = v3;
  if (v2 == 1)
  {
    [v3 flush];

    [*(*(a1 + 40) + 40) addObject:*(a1 + 32)];
    v5 = [*(a1 + 32) connection];
    [v5 _pruneStatementCache];
  }

  else
  {
    [v3 close];

    v6 = [*(a1 + 32) connection];
    v7 = [v6 connectionDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64___ML3DatabaseConnectionSubPool_checkInConnection_returnToPool___block_invoke_3;
      block[3] = &unk_278765FB8;
      v12 = *(a1 + 32);
      dispatch_async(v9, block);
    }
  }

  return [*(*(a1 + 40) + 48) removeObject:*(a1 + 32)];
}

void __64___ML3DatabaseConnectionSubPool_checkInConnection_returnToPool___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) connection];
  v2 = [v4 connectionDelegate];
  v3 = [*(a1 + 32) connection];
  [v2 connectionDidClose:v3];
}

uint64_t __51___ML3DatabaseConnectionSubPool_hasBusyConnections__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void __79___ML3DatabaseConnectionSubPool_initWithDatabasePath_maxConcurrentConnections___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138543362;
      v4 = WeakRetained;
      _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "Database connection subpool %{public}@ received database deletion notification.", &v3, 0xCu);
    }

    [WeakRetained _handleDatabaseDeletion];
  }
}

void __79___ML3DatabaseConnectionSubPool_initWithDatabasePath_maxConcurrentConnections___block_invoke_207(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MSVHomeSharingCacheDirectory();
    if ([*(a1 + 32) containsString:v3])
    {
      v4 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138543362;
        v6 = WeakRetained;
        _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "Database connection subpool %{public}@ received HomeSharing caches cleared notification.", &v5, 0xCu);
      }

      [WeakRetained _handleDatabaseDeletion];
    }
  }
}

@end