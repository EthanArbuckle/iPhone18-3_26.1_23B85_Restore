@interface DKBackupProvider
- (BOOL)isBackingUp;
- (BOOL)isBackupEnabled;
- (BOOL)isManualBackupOnCellularAllowed;
- (BOOL)isRestoring;
- (DKBackupProvider)initWithAccount:(id)account;
- (void)cancel;
- (void)isManualBackupOnCellularAllowed;
- (void)manager:(id)manager didFailBackupWithError:(id)error;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidFinishBackup:(id)backup;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)startBackupWithExpensiveCellularAllowed:(BOOL)allowed progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation DKBackupProvider

- (DKBackupProvider)initWithAccount:(id)account
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = DKBackupProvider;
  v6 = [(DKBackupProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = objc_alloc(MEMORY[0x277D28A40]);
    personaIdentifier = [accountCopy personaIdentifier];
    v10 = [v8 initWithDelegate:0 eventQueue:0 personaIdentifier:personaIdentifier];
    manager = v7->_manager;
    v7->_manager = v10;
  }

  return v7;
}

- (BOOL)isBackupEnabled
{
  manager = [(DKBackupProvider *)self manager];
  isBackupEnabled = [manager isBackupEnabled];

  return isBackupEnabled;
}

- (BOOL)isBackingUp
{
  manager = [(DKBackupProvider *)self manager];
  backupState = [manager backupState];

  LOBYTE(manager) = [backupState state] - 1 < 3;
  return manager;
}

- (BOOL)isRestoring
{
  manager = [(DKBackupProvider *)self manager];
  restoreState = [manager restoreState];

  LOBYTE(manager) = [restoreState state] - 1 < 3;
  return manager;
}

- (BOOL)isManualBackupOnCellularAllowed
{
  manager = [(DKBackupProvider *)self manager];
  account = [(DKBackupProvider *)self account];
  v9 = 0;
  v5 = [manager isManualBackupOnCellularAllowedWithAccount:account error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = _DKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DKBackupProvider *)v6 isManualBackupOnCellularAllowed];
    }
  }

  return v5;
}

- (void)startBackupWithExpensiveCellularAllowed:(BOOL)allowed progressHandler:(id)handler completionHandler:(id)completionHandler
{
  allowedCopy = allowed;
  v36 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__DKBackupProvider_startBackupWithExpensiveCellularAllowed_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_278F7DD00;
  block[4] = self;
  v10 = handlerCopy;
  v32 = v10;
  v11 = completionHandlerCopy;
  v33 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
  isBackingUp = [(DKBackupProvider *)self isBackingUp];
  v13 = _DKLogSystem();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (isBackingUp)
  {
    if (v14)
    {
      account = [(DKBackupProvider *)self account];
      *buf = 138412290;
      v35 = account;
      _os_log_impl(&dword_248D68000, v13, OS_LOG_TYPE_DEFAULT, "Skipping starting backup; backup already running for %@...", buf, 0xCu);
    }
  }

  else
  {
    if (v14)
    {
      account2 = [(DKBackupProvider *)self account];
      *buf = 138412290;
      v35 = account2;
      _os_log_impl(&dword_248D68000, v13, OS_LOG_TYPE_DEFAULT, "Starting backup for %@...", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x277D28A70]);
    if ([(DKBackupProvider *)self isManualBackupOnCellularAllowed])
    {
      if (allowedCopy)
      {
        [MEMORY[0x277D28A38] expensiveCellularAccess];
      }

      else
      {
        [MEMORY[0x277D28A38] inexpensiveCellularAccess];
      }
      v17 = ;
      [v13 setCellularAccess:v17];
    }

    manager = [(DKBackupProvider *)self manager];
    [manager setDelegate:self];

    manager2 = [(DKBackupProvider *)self manager];
    v30 = 0;
    domain = [manager2 startBackupWithOptions:v13 error:&v30];
    v21 = v30;

    if ((domain & 1) == 0)
    {
      v22 = _DKLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (_DKIsInternalInstall())
        {
          v25 = 0;
          v26 = v21;
        }

        else if (v21)
        {
          v27 = MEMORY[0x277CCACA8];
          domain = [v21 domain];
          v26 = [v27 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v21, "code")];
          v25 = 1;
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        *buf = 138543362;
        v35 = v26;
        _os_log_error_impl(&dword_248D68000, v22, OS_LOG_TYPE_ERROR, "Failed to start backup: %{public}@", buf, 0xCu);
        if (v25)
        {
        }
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __94__DKBackupProvider_startBackupWithExpensiveCellularAllowed_progressHandler_completionHandler___block_invoke_5;
      v28[3] = &unk_278F7DE18;
      v28[4] = self;
      v29 = v21;
      v23 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v28);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __94__DKBackupProvider_startBackupWithExpensiveCellularAllowed_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProgressHandler:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setCompletionHandler:v2];
}

uint64_t __94__DKBackupProvider_startBackupWithExpensiveCellularAllowed_progressHandler_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v3[2](v3, *(a1 + 40));
  }

  [*(a1 + 32) setProgressHandler:0];
  v4 = *(a1 + 32);

  return [v4 setCompletionHandler:0];
}

- (void)cancel
{
  manager = [(DKBackupProvider *)self manager];
  [manager cancel];
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  managerCopy = manager;
  manager = [(DKBackupProvider *)self manager];

  if (manager == managerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__DKBackupProvider_manager_didUpdateProgress_estimatedTimeRemaining___block_invoke;
    block[3] = &unk_278F7DDF0;
    progressCopy = progress;
    block[4] = self;
    block[5] = remaining;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__DKBackupProvider_manager_didUpdateProgress_estimatedTimeRemaining___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) progressHandler];
    v3[2](v3, *(a1 + 40), *(a1 + 48));
  }
}

- (void)managerDidFinishBackup:(id)backup
{
  backupCopy = backup;
  manager = [(DKBackupProvider *)self manager];

  if (manager == backupCopy)
  {
    v6 = _DKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248D68000, v6, OS_LOG_TYPE_DEFAULT, "Backup did finish!", buf, 2u);
    }

    manager2 = [(DKBackupProvider *)self manager];
    [manager2 setDelegate:0];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__DKBackupProvider_managerDidFinishBackup___block_invoke;
    block[3] = &unk_278F7DC60;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__DKBackupProvider_managerDidFinishBackup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v3[2](v3, 0);
  }
}

- (void)manager:(id)manager didFailBackupWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  managerCopy = manager;
  manager = [(DKBackupProvider *)self manager];

  if (manager == managerCopy)
  {
    v9 = _DKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (_DKIsInternalInstall())
      {
        v11 = 0;
        v12 = errorCopy;
      }

      else if (errorCopy)
      {
        v13 = MEMORY[0x277CCACA8];
        manager = [errorCopy domain];
        v12 = [v13 stringWithFormat:@"<Error domain: %@, code %ld>", manager, objc_msgSend(errorCopy, "code")];
        v11 = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *buf = 138543362;
      v17 = v12;
      _os_log_error_impl(&dword_248D68000, v9, OS_LOG_TYPE_ERROR, "Backup did fail: %{public}@", buf, 0xCu);
      if (v11)
      {
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DKBackupProvider_manager_didFailBackupWithError___block_invoke;
    block[3] = &unk_278F7DE18;
    block[4] = self;
    v15 = errorCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __51__DKBackupProvider_manager_didFailBackupWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)managerDidLoseConnectionToService:(id)service
{
  serviceCopy = service;
  manager = [(DKBackupProvider *)self manager];

  if (manager == serviceCopy)
  {
    v6 = _DKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DKBackupProvider managerDidLoseConnectionToService:v6];
    }

    manager2 = [(DKBackupProvider *)self manager];
    [manager2 setDelegate:0];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__DKBackupProvider_managerDidLoseConnectionToService___block_invoke;
    block[3] = &unk_278F7DC60;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __54__DKBackupProvider_managerDidLoseConnectionToService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v4 = [*(a1 + 32) completionHandler];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MBErrorDomain" code:18 userInfo:0];
    v4[2](v4, v3);
  }
}

- (void)isManualBackupOnCellularAllowed
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _DKIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    domain = [self domain];
    self = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(self, "code")];
  }

  *buf = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_248D68000, a2, OS_LOG_TYPE_ERROR, "Failed to check if backup is supported on cellular: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end