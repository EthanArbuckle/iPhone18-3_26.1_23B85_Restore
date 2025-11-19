@interface NPKLockStatusChangeCoordinator
+ (id)descriptionOfLockStatusChangeEvent:(unint64_t)a3;
- (BOOL)_hasLockBlocksToPerform;
- (BOOL)_hasUnlockBlocksToPerform;
- (BOOL)wipeBlocksAfterPerform;
- (NPKLockStatusChangeCoordinator)initWithQueue:(id)a3 reason:(id)a4;
- (NPKLockStatusChangeCoordinatorDelegate)delegate;
- (NSMutableArray)blocksToPerformAfterDeviceLock;
- (NSMutableArray)blocksToPerformAfterDeviceUnlock;
- (id)description;
- (int)_lockState;
- (void)_handleLockStateChange;
- (void)_performLockWork;
- (void)_performUnlockWork;
- (void)_performWorkForEvent:(unint64_t)a3 withBlocks:(id)a4;
- (void)_registerForLockStatusChanges;
- (void)dealloc;
- (void)performBlocksIfPossible;
- (void)performSubjectToEvent:(unint64_t)a3 blockToPerform:(id)a4;
- (void)setWipeBlocksAfterPerform:(BOOL)a3;
@end

@implementation NPKLockStatusChangeCoordinator

- (NPKLockStatusChangeCoordinator)initWithQueue:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NPKLockStatusChangeCoordinator;
  v9 = [(NPKLockStatusChangeCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_reason, a4);
    [(NPKLockStatusChangeCoordinator *)v10 _registerForLockStatusChanges];
    v10->_wipeBlocksAfterPerform = 1;
  }

  return v10;
}

- (void)dealloc
{
  if (notify_is_valid_token([(NPKLockStatusChangeCoordinator *)self notifyLockStatesToken]))
  {
    notify_cancel([(NPKLockStatusChangeCoordinator *)self notifyLockStatesToken]);
    [(NPKLockStatusChangeCoordinator *)self setNotifyLockStatesToken:0xFFFFFFFFLL];
  }

  v3.receiver = self;
  v3.super_class = NPKLockStatusChangeCoordinator;
  [(NPKLockStatusChangeCoordinator *)&v3 dealloc];
}

- (NSMutableArray)blocksToPerformAfterDeviceUnlock
{
  blocksToPerformAfterDeviceUnlock = self->_blocksToPerformAfterDeviceUnlock;
  if (!blocksToPerformAfterDeviceUnlock)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_blocksToPerformAfterDeviceUnlock;
    self->_blocksToPerformAfterDeviceUnlock = v4;

    blocksToPerformAfterDeviceUnlock = self->_blocksToPerformAfterDeviceUnlock;
  }

  return blocksToPerformAfterDeviceUnlock;
}

- (NSMutableArray)blocksToPerformAfterDeviceLock
{
  blocksToPerformAfterDeviceLock = self->_blocksToPerformAfterDeviceLock;
  if (!blocksToPerformAfterDeviceLock)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_blocksToPerformAfterDeviceLock;
    self->_blocksToPerformAfterDeviceLock = v4;

    blocksToPerformAfterDeviceLock = self->_blocksToPerformAfterDeviceLock;
  }

  return blocksToPerformAfterDeviceLock;
}

- (void)performSubjectToEvent:(unint64_t)a3 blockToPerform:(id)a4
{
  aBlock = a4;
  v6 = [(NPKLockStatusChangeCoordinator *)self queue];
  dispatch_assert_queue_V2(v6);

  if (a3 == 1)
  {
    v7 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v7 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
  }

  v8 = v7;
  v9 = _Block_copy(aBlock);
  [v8 addObject:v9];

LABEL_6:
}

- (void)performBlocksIfPossible
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Requested perform blocks if possible.", buf, 0xCu);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKLockStatusChangeCoordinator_performBlocksIfPossible__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setWipeBlocksAfterPerform:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__NPKLockStatusChangeCoordinator_setWipeBlocksAfterPerform___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (BOOL)wipeBlocksAfterPerform
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NPKLockStatusChangeCoordinator_wipeBlocksAfterPerform__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)descriptionOfLockStatusChangeEvent:(unint64_t)a3
{
  if (a3)
  {
    return @"NPKLockStatusChangeEventLock";
  }

  else
  {
    return @"NPKLockStatusChangeEventUnlock";
  }
}

- (BOOL)_hasUnlockBlocksToPerform
{
  v2 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_hasLockBlocksToPerform
{
  v2 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
  v3 = [v2 count] != 0;

  return v3;
}

- (int)_lockState
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ExtendedDeviceLockState";
  v7[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = MKBGetDeviceLockState();

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_registerForLockStatusChanges
{
  v13 = *MEMORY[0x277D85DE8];
  p_notifyLockStatesToken = &self->_notifyLockStatesToken;
  if (!notify_is_valid_token(self->_notifyLockStatesToken))
  {
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = self;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Registering for lock state notifications", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __63__NPKLockStatusChangeCoordinator__registerForLockStatusChanges__block_invoke;
    handler[3] = &unk_279944F20;
    objc_copyWeak(&v10, buf);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", p_notifyLockStatesToken, queue, handler);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __63__NPKLockStatusChangeCoordinator__registerForLockStatusChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleLockStateChange];
    WeakRetained = v2;
  }
}

- (void)_handleLockStateChange
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Handling lock state change", &v16, 0xCu);
    }
  }

  v6 = [(NPKLockStatusChangeCoordinator *)self _lockState];
  if ([(NPKLockStatusChangeCoordinator *)self _isUnlockedForLockState:v6])
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = self;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Device is unlocked", &v16, 0xCu);
      }
    }

    [(NPKLockStatusChangeCoordinator *)self _performUnlockWork];
  }

  else
  {
    v10 = [(NPKLockStatusChangeCoordinator *)self _isLockedForLockState:v6];
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      if (v12)
      {
        v13 = pk_General_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          v17 = self;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Device is locked", &v16, 0xCu);
        }
      }

      [(NPKLockStatusChangeCoordinator *)self _performLockWork];
    }

    else if (v12)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = self;
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Unhandled lock state with value %i", &v16, 0x12u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_performUnlockWork
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NPKLockStatusChangeCoordinator *)self _hasUnlockBlocksToPerform])
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
        v9 = 138543618;
        v10 = self;
        v11 = 2048;
        v12 = [v6 count];
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Performing work in response to device unlock - %lu block(s) to execute", &v9, 0x16u);
      }
    }

    v7 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
    [(NPKLockStatusChangeCoordinator *)self _performWorkForEvent:0 withBlocks:v7];

    if (self->_wipeBlocksAfterPerform)
    {
      [(NPKLockStatusChangeCoordinator *)self setBlocksToPerformAfterDeviceUnlock:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performLockWork
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NPKLockStatusChangeCoordinator *)self _hasLockBlocksToPerform])
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
        v9 = 138543618;
        v10 = self;
        v11 = 2048;
        v12 = [v6 count];
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Performing work in response to device lock - %lu block(s) to execute", &v9, 0x16u);
      }
    }

    v7 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
    [(NPKLockStatusChangeCoordinator *)self _performWorkForEvent:1 withBlocks:v7];

    if (self->_wipeBlocksAfterPerform)
    {
      [(NPKLockStatusChangeCoordinator *)self setBlocksToPerformAfterDeviceLock:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performWorkForEvent:(unint64_t)a3 withBlocks:(id)a4
{
  v6 = a4;
  v7 = [(NPKLockStatusChangeCoordinator *)self delegate];
  [v7 lockStatusChangeCoordinator:self willBeginPerformingBlocksForLockStatusEvent:a3];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global];
  v8 = [(NPKLockStatusChangeCoordinator *)self delegate];
  [v8 lockStatusChangeCoordinator:self didFinishPerformingBlocksForLockStatusEvent:a3];
}

- (id)description
{
  v3 = [(NSString *)self->_reason length];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v3)
  {
    [v4 stringWithFormat:@"<%@:%p> reason: %@", v6, self, self->_reason];
  }

  else
  {
    [v4 stringWithFormat:@"<%@:%p>", v6, self, v10];
  }
  v8 = ;

  return v8;
}

- (NPKLockStatusChangeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end