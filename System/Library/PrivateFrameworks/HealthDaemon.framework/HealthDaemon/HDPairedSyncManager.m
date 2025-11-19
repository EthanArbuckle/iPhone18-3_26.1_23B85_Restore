@interface HDPairedSyncManager
- (HDPairedSyncManager)initWithProfile:(id)a3 queue:(id)a4;
- (__CFString)_typeStringForSyncSession:(__CFString *)a1;
- (id)diagnosticDescription;
- (void)dealloc;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
@end

@implementation HDPairedSyncManager

- (HDPairedSyncManager)initWithProfile:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HDPairedSyncManager;
  v8 = [(HDPairedSyncManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_queue, a4);
    v10 = [v6 daemon];
    v11 = [v10 pairedSyncCoordinatorWithServiceName:@"com.apple.pairedsync.healthd"];
    pairedSyncCoordinator = v9->_pairedSyncCoordinator;
    v9->_pairedSyncCoordinator = v11;

    [(PSYSyncCoordinator *)v9->_pairedSyncCoordinator setDelegate:v9 queue:v9->_queue];
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    unfinishedSyncSessions = v9->_unfinishedSyncSessions;
    v9->_unfinishedSyncSessions = v13;

    v15 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v15 addObject:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  v4.receiver = self;
  v4.super_class = HDPairedSyncManager;
  [(HDPairedSyncManager *)&v4 dealloc];
}

- (__CFString)_typeStringForSyncSession:(__CFString *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 syncSessionType];
    if (v5 > 2)
    {
      a1 = 0;
    }

    else
    {
      a1 = off_278622BF0[v5];
    }
  }

  return a1;
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_2;
  block[3] = &unk_278613830;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v4;
  if (v1)
  {
    if (v3)
    {
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:sel__queue_didSendRestoreMessagesForSession_error_ object:v1 file:@"HDPairedSyncManager.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"syncSession != nil"}];

      if (v5)
      {
LABEL_4:
        _HKInitializeLogging();
        v6 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v10 = v5;
          _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "failed to send restore messages: %{public}@", buf, 0xCu);
        }
      }
    }

    [v3 syncDidCompleteSending];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_4;
  block[3] = &unk_278613830;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    [*(v1 + 32) removeObject:v3];
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    v6 = *MEMORY[0x277CCC328];
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = v5;
        v12 = [v3 sessionIdentifier];
        v13 = [v12 UUIDString];
        v14 = 138543618;
        v15 = v13;
        v16 = 2114;
        v17 = v4;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "sync session %{public}@ failed error: %{public}@", &v14, 0x16u);
      }

      [v3 syncDidFailWithError:v4];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
        v8 = [v3 sessionIdentifier];
        v9 = [v8 UUIDString];
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "sync session %{public}@ complete", &v14, 0xCu);
      }

      [v3 syncDidComplete];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = v6;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(HDPairedSyncManager *)self _typeStringForSyncSession:v7];
    v11 = [v7 sessionIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v7 pairedDevice];
    v14 = [v13 hd_shortDescription];
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2114;
    v23 = v14;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ did start for device %{public}@", buf, 0x20u);
  }

  [(NSHashTable *)self->_unfinishedSyncSessions addObject:v7];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [WeakRetained nanoSyncManager];
  v17 = [v7 pairedDevice];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke;
  v23 = &unk_278616020;
  v24 = self;
  v25 = v7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_3;
  v20[3] = &unk_278616020;
  v20[4] = self;
  v19 = v25;
  v21 = v19;
  [v16 pairedSyncDidBeginForDevice:v17 messagesSentHandler:buf completion:v20];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(HDPairedSyncManager *)self _typeStringForSyncSession:v5];
    v9 = [v5 sessionIdentifier];
    v10 = [v9 UUIDString];
    v12 = 138412546;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%@ %{public}@ was invalidated", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    pairedSyncCoordinator = self->_pairedSyncCoordinator;
    v6 = v4;
    v7 = [(PSYSyncCoordinator *)pairedSyncCoordinator syncRestriction];
    v8 = @"limit push";
    if (v7 != 1)
    {
      v8 = 0;
    }

    if (!v7)
    {
      v8 = @"none";
    }

    v9 = v8;
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "sync restriction changed to %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  if (self)
  {
    v4 = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator syncRestriction];
    v5 = @"limit push";
    if (v4 != 1)
    {
      v5 = 0;
    }

    if (!v4)
    {
      v5 = @"none";
    }
  }

  else
  {
    v5 = 0;
  }

  [v3 appendFormat:@"\n\tSync Restriction: %@", v5];
  v6 = [(NSHashTable *)self->_unfinishedSyncSessions allObjects];
  if ([v6 count])
  {
    [v3 appendFormat:@"\n\tUnfinished Sync Sessions:"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 sessionIdentifier];
          v13 = [v12 UUIDString];
          v14 = [(HDPairedSyncManager *)self _typeStringForSyncSession:v11];
          v15 = [v11 pairedDevice];
          v16 = [v15 hd_shortDescription];
          [v3 appendFormat:@"\n\t\t%@ (%@): %@", v13, v14, v16];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v6 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

@end