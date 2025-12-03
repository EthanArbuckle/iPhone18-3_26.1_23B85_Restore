@interface MSPowerBudget
- (BOOL)hasActiveTimers;
- (BOOL)hasForegroundFocus;
- (BOOL)isFileTransferAllowed;
- (MSPowerBudget)init;
- (MSPowerBudgetDelegate)delegate;
- (double)maxActiveTimeAfterGlobalResetSync;
- (double)maxActiveTimeAfterLossOfForeground;
- (double)maxActiveTimeAfterPush;
- (void)_globalResetSyncTimerDidExpire:(id)expire;
- (void)_postForegroundTimerDidExpire:(id)expire;
- (void)didBeginExternalPower;
- (void)didBeginForegroundFocus;
- (void)didEndExternalPower;
- (void)didEndForegroundFocus;
- (void)didReceiveGlobalResetSync;
- (void)didReceivePushNotification;
- (void)setDelegate:(id)delegate;
- (void)setFocusAlbumGUID:(id)d;
- (void)setFocusAssetCollectionGUID:(id)d;
- (void)setIsFileTransferAllowed:(BOOL)allowed;
- (void)setMaxActiveTimeAfterGlobalResetSync:(double)sync;
- (void)setMaxActiveTimeAfterLossOfForeground:(double)foreground;
- (void)setMaxActiveTimeAfterPush:(double)push;
- (void)shutDown;
- (void)workQueueCommitPersistedValues;
- (void)workQueueRecomputeFileTransferAllowed;
- (void)workQueueSetGlobalResetSyncTimerDate:(id)date;
- (void)workQueueSetPostForegroundTimerDate:(id)date;
- (void)workQueueSetPushTimerDate:(id)date;
@end

@implementation MSPowerBudget

- (MSPowerBudgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_globalResetSyncTimerDidExpire:(id)expire
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSPowerBudget__globalResetSyncTimerDidExpire___block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __48__MSPowerBudget__globalResetSyncTimerDidExpire___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Global reset sync timer expired.", &v5, 0xCu);
  }

  [*(a1 + 32) workQueueSetGlobalResetSyncTimerDate:0];
  result = [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_postForegroundTimerDidExpire:(id)expire
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MSPowerBudget__postForegroundTimerDidExpire___block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __47__MSPowerBudget__postForegroundTimerDidExpire___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Post-foreground timer expired.", &v5, 0xCu);
  }

  [*(a1 + 32) workQueueSetPostForegroundTimerDate:0];
  result = [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setFocusAssetCollectionGUID:(id)d
{
  dCopy = d;
  workQueue = [(MSPowerBudget *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__MSPowerBudget_setFocusAssetCollectionGUID___block_invoke;
  v7[3] = &unk_2798A5260;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

void __45__MSPowerBudget_setFocusAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7 = 138543618;
    v8 = v2;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: UI focus on asset collection GUID: %{public}@", &v7, 0x16u);
  }

  v4 = [*(a1 + 32) focusAssetCollectionGUID];
  v5 = [v4 isEqual:*(a1 + 40)];

  if ((v5 & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
    [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFocusAlbumGUID:(id)d
{
  dCopy = d;
  workQueue = [(MSPowerBudget *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__MSPowerBudget_setFocusAlbumGUID___block_invoke;
  v7[3] = &unk_2798A5260;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

void __35__MSPowerBudget_setFocusAlbumGUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7 = 138543618;
    v8 = v2;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: UI focus on album GUID: %{public}@", &v7, 0x16u);
  }

  v4 = [*(a1 + 32) focusAlbumGUID];
  v5 = [v4 isEqual:*(a1 + 40)];

  if ((v5 & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didEndExternalPower
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MSPowerBudget_didEndExternalPower__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __36__MSPowerBudget_didEndExternalPower__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Unplugged from external power.", &v5, 0xCu);
  }

  [*(a1 + 32) workQueueSetExternalPowered:0];
  result = [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didBeginExternalPower
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MSPowerBudget_didBeginExternalPower__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __38__MSPowerBudget_didBeginExternalPower__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Plugged in to external power. Allowing file transfers.", &v5, 0xCu);
  }

  [*(a1 + 32) workQueueSetExternalPowered:1];
  result = [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didReceiveGlobalResetSync
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSPowerBudget_didReceiveGlobalResetSync__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __42__MSPowerBudget_didReceiveGlobalResetSync__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    [v2 workQueueMaxActiveTimeAfterGlobalResetSync];
    v8 = 138412546;
    v9 = v2;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Global reset sync received. Allowing file transfers to continue for %0.2f seconds.", &v8, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEAA8];
  [v4 workQueueMaxActiveTimeAfterGlobalResetSync];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  [v4 workQueueSetGlobalResetSyncTimerDate:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didEndForegroundFocus
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MSPowerBudget_didEndForegroundFocus__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __38__MSPowerBudget_didEndForegroundFocus__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    [v2 workQueueMaxActiveTimeAfterLossOfForeground];
    v9 = 138412546;
    v10 = v2;
    v11 = 2048;
    v12 = v3;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: UI no longer foregrounded. Allowing file transfers to continue for %0.2f seconds.", &v9, 0x16u);
  }

  [*(a1 + 32) workQueueSetForeground:0];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEAA8];
  [v4 workQueueMaxActiveTimeAfterLossOfForeground];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  [v4 workQueueSetPostForegroundTimerDate:v6];

  result = [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didBeginForegroundFocus
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSPowerBudget_didBeginForegroundFocus__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __40__MSPowerBudget_didBeginForegroundFocus__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v8 = 138543362;
    v9 = v2;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: UI foregrounded. Allowing file transfers.", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) workQueueIsForeground];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 workQueueSetForeground:1];
    [*(a1 + 32) workQueueSetPostForegroundTimerDate:0];
    [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  }

  else
  {
    v5 = [v4 workQueueIsExternalPowered];
    [*(a1 + 32) workQueueSetForeground:1];
    [*(a1 + 32) workQueueSetPostForegroundTimerDate:0];
    [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 MSPowerBudgetGotSignificantEvent:*(a1 + 32)];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReceivePushNotification
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSPowerBudget_didReceivePushNotification__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __43__MSPowerBudget_didReceivePushNotification__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    [v2 workQueueMaxActiveTimeAfterPush];
    v9 = 138412546;
    v10 = v2;
    v11 = 2048;
    v12 = v3;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Push received. Allowing file transfers to continue for %0.2f seconds", &v9, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEAA8];
  [v4 workQueueMaxActiveTimeAfterPush];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  [v4 workQueueSetPushTimerDate:v6];

  result = [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)workQueueCommitPersistedValues
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workQueuePushTimerContext = [(MSPowerBudget *)self workQueuePushTimerContext];

  if (workQueuePushTimerContext)
  {
    workQueuePushTimerContext2 = [(MSPowerBudget *)self workQueuePushTimerContext];
    date = [workQueuePushTimerContext2 date];
    [dictionary setObject:date forKey:@"pushTimerDate"];
  }

  workQueuePostForegroundTimerContext = [(MSPowerBudget *)self workQueuePostForegroundTimerContext];

  if (workQueuePostForegroundTimerContext)
  {
    workQueuePostForegroundTimerContext2 = [(MSPowerBudget *)self workQueuePostForegroundTimerContext];
    date2 = [workQueuePostForegroundTimerContext2 date];
    [dictionary setObject:date2 forKey:@"postForegroundTimerDate"];
  }

  workQueueGlobalResetSyncTimerContext = [(MSPowerBudget *)self workQueueGlobalResetSyncTimerContext];

  if (workQueueGlobalResetSyncTimerContext)
  {
    workQueueGlobalResetSyncTimerContext2 = [(MSPowerBudget *)self workQueueGlobalResetSyncTimerContext];
    date3 = [workQueueGlobalResetSyncTimerContext2 date];
    [dictionary setObject:date3 forKey:@"globalResetSyncTimerDate"];
  }

  delegate = [(MSPowerBudget *)self delegate];
  [delegate MSPowerBudget:self didRequestStorageOfPersistedValues:dictionary];
}

- (void)setIsFileTransferAllowed:(BOOL)allowed
{
  workQueue = [(MSPowerBudget *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MSPowerBudget_setIsFileTransferAllowed___block_invoke;
  v6[3] = &unk_2798A5088;
  v6[4] = self;
  allowedCopy = allowed;
  dispatch_async(workQueue, v6);
}

void __42__MSPowerBudget_setIsFileTransferAllowed___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v13 = v1;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting file transfers allowed = %d", buf, 0x12u);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    LOBYTE(v3) = *(a1 + 40);
    *(v5 + 8) = v3;
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(v1 + 8) = v3;
    if (!v2)
    {
LABEL_4:
      if (v3)
      {
        v7 = v10;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v8 = __42__MSPowerBudget_setIsFileTransferAllowed___block_invoke_2;
LABEL_9:
        v7[2] = v8;
        v7[3] = &unk_2798A5010;
        v7[4] = *(a1 + 32);
        dispatch_async(MEMORY[0x277D85CD0], v7);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  if ((v3 & 1) == 0)
  {
    v7 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v8 = __42__MSPowerBudget_setIsFileTransferAllowed___block_invoke_36;
    goto LABEL_9;
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

void __42__MSPowerBudget_setIsFileTransferAllowed___block_invoke_36(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSPowerBudgetDidEndAllowingFileTransferNotification" object:*(a1 + 32)];
}

void __42__MSPowerBudget_setIsFileTransferAllowed___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSPowerBudgetDidBeginAllowingFileTransferNotification" object:*(a1 + 32)];
}

- (BOOL)hasActiveTimers
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(MSPowerBudget *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MSPowerBudget_hasActiveTimers__block_invoke;
  v5[3] = &unk_2798A5038;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __32__MSPowerBudget_hasActiveTimers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueuePushTimerContext];
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = [*(a1 + 32) workQueuePostForegroundTimerContext];
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v4 = [*(a1 + 32) workQueueGlobalResetSyncTimerContext];
      *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
    }

    v2 = 0;
  }
}

- (BOOL)hasForegroundFocus
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(MSPowerBudget *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__MSPowerBudget_hasForegroundFocus__block_invoke;
  v5[3] = &unk_2798A5038;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __35__MSPowerBudget_hasForegroundFocus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) workQueueIsForeground];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isFileTransferAllowed
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(MSPowerBudget *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__MSPowerBudget_isFileTransferAllowed__block_invoke;
  v5[3] = &unk_2798A5038;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)workQueueRecomputeFileTransferAllowed
{
  if ([(MSPowerBudget *)self workQueueIsExternalPowered]|| [(MSPowerBudget *)self workQueueIsForeground])
  {
    v3 = 1;
  }

  else
  {
    workQueuePushTimerContext = [(MSPowerBudget *)self workQueuePushTimerContext];
    if (workQueuePushTimerContext)
    {
      v3 = 1;
    }

    else
    {
      workQueuePostForegroundTimerContext = [(MSPowerBudget *)self workQueuePostForegroundTimerContext];
      if (workQueuePostForegroundTimerContext)
      {
        v3 = 1;
      }

      else
      {
        workQueueGlobalResetSyncTimerContext = [(MSPowerBudget *)self workQueueGlobalResetSyncTimerContext];
        v3 = workQueueGlobalResetSyncTimerContext != 0;
      }
    }
  }

  [(MSPowerBudget *)self setIsFileTransferAllowed:v3];
}

- (void)setMaxActiveTimeAfterLossOfForeground:(double)foreground
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2048;
    foregroundCopy = foreground;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting max active time after loss of foreground to %0.2f seconds.", buf, 0x16u);
  }

  workQueue = [(MSPowerBudget *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MSPowerBudget_setMaxActiveTimeAfterLossOfForeground___block_invoke;
  v7[3] = &unk_2798A5060;
  v7[4] = self;
  *&v7[5] = foreground;
  dispatch_async(workQueue, v7);

  v6 = *MEMORY[0x277D85DE8];
}

double __55__MSPowerBudget_setMaxActiveTimeAfterLossOfForeground___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 32) = result;
  return result;
}

- (double)maxActiveTimeAfterLossOfForeground
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(MSPowerBudget *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MSPowerBudget_maxActiveTimeAfterLossOfForeground__block_invoke;
  v6[3] = &unk_2798A5038;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __51__MSPowerBudget_maxActiveTimeAfterLossOfForeground__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMaxActiveTimeAfterGlobalResetSync:(double)sync
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2048;
    syncCopy = sync;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting max active time after global reset sync to %0.2f seconds.", buf, 0x16u);
  }

  workQueue = [(MSPowerBudget *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__MSPowerBudget_setMaxActiveTimeAfterGlobalResetSync___block_invoke;
  v7[3] = &unk_2798A5060;
  v7[4] = self;
  *&v7[5] = sync;
  dispatch_async(workQueue, v7);

  v6 = *MEMORY[0x277D85DE8];
}

double __54__MSPowerBudget_setMaxActiveTimeAfterGlobalResetSync___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (double)maxActiveTimeAfterGlobalResetSync
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(MSPowerBudget *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__MSPowerBudget_maxActiveTimeAfterGlobalResetSync__block_invoke;
  v6[3] = &unk_2798A5038;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __50__MSPowerBudget_maxActiveTimeAfterGlobalResetSync__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMaxActiveTimeAfterPush:(double)push
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2048;
    pushCopy = push;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting max active time after push to %0.2f seconds.", buf, 0x16u);
  }

  workQueue = [(MSPowerBudget *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__MSPowerBudget_setMaxActiveTimeAfterPush___block_invoke;
  v7[3] = &unk_2798A5060;
  v7[4] = self;
  *&v7[5] = push;
  dispatch_async(workQueue, v7);

  v6 = *MEMORY[0x277D85DE8];
}

double __43__MSPowerBudget_setMaxActiveTimeAfterPush___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (double)maxActiveTimeAfterPush
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(MSPowerBudget *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MSPowerBudget_maxActiveTimeAfterPush__block_invoke;
  v6[3] = &unk_2798A5038;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __39__MSPowerBudget_maxActiveTimeAfterPush__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)shutDown
{
  workQueue = [(MSPowerBudget *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MSPowerBudget_shutDown__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __25__MSPowerBudget_shutDown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) workQueueSetPushTimerDate:0];
  [*(a1 + 32) workQueueSetPostForegroundTimerDate:0];
  v2 = *(a1 + 32);

  return [v2 workQueueSetGlobalResetSyncTimerDate:0];
}

- (void)workQueueSetGlobalResetSyncTimerDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  workQueueGlobalResetSyncTimerContext = [(MSPowerBudget *)self workQueueGlobalResetSyncTimerContext];

  if (workQueueGlobalResetSyncTimerContext)
  {
    workQueueGlobalResetSyncTimerContext2 = [(MSPowerBudget *)self workQueueGlobalResetSyncTimerContext];
    [workQueueGlobalResetSyncTimerContext2 setIsValid:0];

    [(MSPowerBudget *)self setWorkQueueGlobalResetSyncTimerContext:0];
    if (!dateCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Stopping global reset sync timer.", buf, 0xCu);
      }

      [(MSPowerBudget *)self workQueueCommitPersistedValues];
      [(MSPowerBudget *)self workQueueRecomputeFileTransferAllowed];
      goto LABEL_10;
    }
  }

  else if (!dateCopy)
  {
    goto LABEL_10;
  }

  [dateCopy timeIntervalSinceNow];
  v8 = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting global reset sync timer to fire in %0.2f seconds.", buf, 0x16u);
  }

  v9 = [MSPBTimerContext contextWithDate:dateCopy];
  [(MSPowerBudget *)self setWorkQueueGlobalResetSyncTimerContext:v9];
  v10 = dispatch_time(0, (v8 * 1000000000.0));
  workQueue = [(MSPowerBudget *)self workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__MSPowerBudget_workQueueSetGlobalResetSyncTimerDate___block_invoke;
  v14[3] = &unk_2798A5260;
  v15 = v9;
  selfCopy3 = self;
  v12 = v9;
  dispatch_after(v10, workQueue, v14);

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __54__MSPowerBudget_workQueueSetGlobalResetSyncTimerDate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Global reset sync timer fired.", &v5, 0xCu);
    }

    [*(a1 + 40) setWorkQueueGlobalResetSyncTimerContext:0];
    [*(a1 + 40) workQueueCommitPersistedValues];
    result = [*(a1 + 40) workQueueRecomputeFileTransferAllowed];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)workQueueSetPostForegroundTimerDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  workQueuePostForegroundTimerContext = [(MSPowerBudget *)self workQueuePostForegroundTimerContext];

  if (workQueuePostForegroundTimerContext)
  {
    workQueuePostForegroundTimerContext2 = [(MSPowerBudget *)self workQueuePostForegroundTimerContext];
    [workQueuePostForegroundTimerContext2 setIsValid:0];

    [(MSPowerBudget *)self setWorkQueuePostForegroundTimerContext:0];
    if (!dateCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Stopping post-foreground timer.", buf, 0xCu);
      }

      [(MSPowerBudget *)self workQueueCommitPersistedValues];
      [(MSPowerBudget *)self workQueueRecomputeFileTransferAllowed];
      goto LABEL_10;
    }
  }

  else if (!dateCopy)
  {
    goto LABEL_10;
  }

  [dateCopy timeIntervalSinceNow];
  v8 = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting post-foreground timer to fire in %0.2f seconds.", buf, 0x16u);
  }

  v9 = [MSPBTimerContext contextWithDate:dateCopy];
  [(MSPowerBudget *)self setWorkQueuePostForegroundTimerContext:v9];
  v10 = dispatch_time(0, (v8 * 1000000000.0));
  workQueue = [(MSPowerBudget *)self workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__MSPowerBudget_workQueueSetPostForegroundTimerDate___block_invoke;
  v14[3] = &unk_2798A5260;
  v15 = v9;
  selfCopy3 = self;
  v12 = v9;
  dispatch_after(v10, workQueue, v14);

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__MSPowerBudget_workQueueSetPostForegroundTimerDate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Post-foreground timer fired.", &v5, 0xCu);
    }

    [*(a1 + 40) setWorkQueuePostForegroundTimerContext:0];
    [*(a1 + 40) workQueueCommitPersistedValues];
    result = [*(a1 + 40) workQueueRecomputeFileTransferAllowed];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)workQueueSetPushTimerDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  workQueuePushTimerContext = [(MSPowerBudget *)self workQueuePushTimerContext];

  if (workQueuePushTimerContext)
  {
    workQueuePushTimerContext2 = [(MSPowerBudget *)self workQueuePushTimerContext];
    [workQueuePushTimerContext2 setIsValid:0];

    [(MSPowerBudget *)self setWorkQueuePushTimerContext:0];
    if (!dateCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Stopping push timer.", buf, 0xCu);
      }

      notify_post(*MEMORY[0x277D00088]);
      [(MSPowerBudget *)self workQueueCommitPersistedValues];
      [(MSPowerBudget *)self workQueueRecomputeFileTransferAllowed];
      goto LABEL_12;
    }
  }

  else if (!dateCopy)
  {
    goto LABEL_12;
  }

  [dateCopy timeIntervalSinceNow];
  v8 = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting push timer to fire in %0.2f seconds.", buf, 0x16u);
  }

  if (!workQueuePushTimerContext)
  {
    notify_post(*MEMORY[0x277D00090]);
  }

  v9 = [MSPBTimerContext contextWithDate:dateCopy];
  [(MSPowerBudget *)self setWorkQueuePushTimerContext:v9];
  v10 = dispatch_time(0, (v8 * 1000000000.0));
  workQueue = [(MSPowerBudget *)self workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MSPowerBudget_workQueueSetPushTimerDate___block_invoke;
  v14[3] = &unk_2798A5260;
  v15 = v9;
  selfCopy3 = self;
  v12 = v9;
  dispatch_after(v10, workQueue, v14);

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __43__MSPowerBudget_workQueueSetPushTimerDate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Push timer fired.", &v5, 0xCu);
    }

    notify_post(*MEMORY[0x277D00088]);
    [*(a1 + 40) setWorkQueuePushTimerContext:0];
    [*(a1 + 40) workQueueCommitPersistedValues];
    result = [*(a1 + 40) workQueueRecomputeFileTransferAllowed];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(MSPowerBudget *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__MSPowerBudget_setDelegate___block_invoke;
  v7[3] = &unk_2798A5260;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(workQueue, v7);
}

void __29__MSPowerBudget_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  v2 = [*(a1 + 32) delegate];
  v9 = [v2 MSPowerBudgetDidRequestPersistedValues:*(a1 + 32)];

  v3 = *(a1 + 32);
  v4 = [v9 objectForKey:@"pushTimerDate"];
  [v3 workQueueSetPushTimerDate:v4];

  v5 = *(a1 + 32);
  v6 = [v9 objectForKey:@"postForegroundTimerDate"];
  [v5 workQueueSetPostForegroundTimerDate:v6];

  v7 = *(a1 + 32);
  v8 = [v9 objectForKey:@"globalResetSyncTimerDate"];
  [v7 workQueueSetGlobalResetSyncTimerDate:v8];

  [*(a1 + 32) workQueueRecomputeFileTransferAllowed];
}

- (MSPowerBudget)init
{
  v6.receiver = self;
  v6.super_class = MSPowerBudget;
  v2 = [(MSPowerBudget *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MSPowerBudget work queue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

@end