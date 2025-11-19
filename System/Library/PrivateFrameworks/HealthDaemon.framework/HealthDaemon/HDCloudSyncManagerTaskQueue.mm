@interface HDCloudSyncManagerTaskQueue
- (BOOL)_primitiveConsiderStartingNextTask;
- (BOOL)hasActiveTask;
- (HDCloudSyncManagerTask)activeTask;
- (HDCloudSyncManagerTaskQueue)initWithDelegate:(id)a3;
- (HDCloudSyncManagerTaskQueueDelegate)delegate;
- (int64_t)pendingTaskCount;
- (void)addTask:(id)a3;
@end

@implementation HDCloudSyncManagerTaskQueue

- (HDCloudSyncManagerTaskQueue)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDCloudSyncManagerTaskQueue;
  v5 = [(HDCloudSyncManagerTaskQueue *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (int64_t)pendingTaskCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_pendingTasks count];
  pendingTasksBeingSorted = self->_pendingTasksBeingSorted;
  os_unfair_lock_unlock(&self->_lock);
  return pendingTasksBeingSorted + v3;
}

- (BOOL)hasActiveTask
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_activeTask)
  {
    isComputingActiveTask = 1;
  }

  else
  {
    isComputingActiveTask = self->_isComputingActiveTask;
  }

  os_unfair_lock_unlock(&self->_lock);
  return isComputingActiveTask;
}

- (HDCloudSyncManagerTask)activeTask
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_activeTask;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addTask:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_pendingTasks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v17 + 1) + 8 * v9) combineWithTask:{v4, v17}])
        {
          os_unfair_lock_unlock(&self->_lock);

          goto LABEL_20;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 priority] >= 100)
  {
    activeTask = self->_activeTask;
    if (activeTask)
    {
      v11 = [(HDCloudSyncManagerTask *)activeTask priority];
      if (v11 < [v4 priority])
      {
        v12 = self->_activeTask;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HDCloudSyncManagerTask *)self->_activeTask cancel];
        }
      }
    }
  }

  pendingTasks = self->_pendingTasks;
  if (!pendingTasks)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = self->_pendingTasks;
    self->_pendingTasks = v14;

    pendingTasks = self->_pendingTasks;
  }

  [(NSMutableArray *)pendingTasks addObject:v4, v17];
  os_unfair_lock_unlock(&self->_lock);
    ;
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_primitiveConsiderStartingNextTask
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 40) || (*(a1 + 32) & 1) != 0 || *(a1 + 33) == 1)
  {
    os_unfair_lock_unlock((a1 + 8));
    return 0;
  }

  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  v6 = v5;
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;

  *(a1 + 24) = [v6 count];
  *(a1 + 32) = 1;
  os_unfair_lock_unlock((a1 + 8));
  objc_copyWeak(&to, (a1 + 48));
  v8 = objc_loadWeakRetained(&to);

  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HDCloudSyncManagerTaskQueue__primitiveConsiderStartingNextTask__block_invoke;
    v11[3] = &unk_27862A0C0;
    objc_copyWeak(&v12, &to);
    v11[4] = a1;
    [v6 sortUsingComparator:v11];
    objc_destroyWeak(&v12);
  }

  os_unfair_lock_lock((a1 + 8));
  if (*v4)
  {
    [v6 addObjectsFromArray:?];
  }

  objc_storeStrong((a1 + 16), v5);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = [*(a1 + 16) firstObject];
  v2 = v9 != 0;
  if (v9)
  {
    [*v4 removeObjectAtIndex:0];
    objc_storeStrong((a1 + 40), v9);
    *(a1 + 33) = 1;
    os_unfair_lock_unlock((a1 + 8));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HDCloudSyncManagerTaskQueue__primitiveConsiderStartingNextTask__block_invoke_2;
    v10[3] = &unk_278613968;
    v10[4] = a1;
    [v9 startWithCompletion:v10];
    os_unfair_lock_lock((a1 + 8));
    *(a1 + 33) = 0;
  }

  os_unfair_lock_unlock((a1 + 8));

  objc_destroyWeak(&to);
  return v2;
}

uint64_t __65__HDCloudSyncManagerTaskQueue__primitiveConsiderStartingNextTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained compareTask:v6 withTask:v5 queue:*(a1 + 32)];

  return v8;
}

void __65__HDCloudSyncManagerTaskQueue__primitiveConsiderStartingNextTask__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 33);
  os_unfair_lock_unlock((v4 + 8));
  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
        ;
      }
    }
  }
}

- (HDCloudSyncManagerTaskQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end