@interface HDCloudSyncManagerTask
- (HDCloudSyncManagerTask)init;
- (HDCloudSyncManagerTask)originalTask;
- (int64_t)status;
- (void)finish;
- (void)main;
- (void)mirrorTask:(id)task;
- (void)startWithCompletion:(id)completion;
@end

@implementation HDCloudSyncManagerTask

- (HDCloudSyncManagerTask)init
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncManagerTask;
  v2 = [(HDCloudSyncManagerTask *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
    progress = v3->_progress;
    v3->_progress = v4;

    mirroringTasks = v3->_mirroringTasks;
    v3->_mirroringTasks = MEMORY[0x277CBEBF8];

    v3->_priority = 0;
  }

  return v3;
}

- (int64_t)status
{
  os_unfair_lock_lock(&self->_lock);
  status = self->_status;
  os_unfair_lock_unlock(&self->_lock);
  return status;
}

- (void)startWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerTask.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_originalTask);

  status = self->_status;
  if (!status)
  {
    v8 = [completionCopy copy];
    completion = self->_completion;
    self->_completion = v8;

    self->_status = 1;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_mirroringTasks;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          *(*(*(&v20 + 1) + 8 * i) + 24) = self->_status;
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v12);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (WeakRetained)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerTask.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"hasOriginalTask == NO"}];

    if (!status)
    {
      goto LABEL_14;
    }
  }

  else if (!status)
  {
    goto LABEL_14;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerTask.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"status == HDCloudSyncManagerTaskStatusPending"}];

LABEL_14:
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting.", buf, 0xCu);
  }

  [(HDCloudSyncManagerTask *)self main];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)finish
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  status = self->_status;
  v5 = _Block_copy(self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  if (self->_status == 1)
  {
    self->_status = 2;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_mirroringTasks;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          *(*(*(&v19 + 1) + 8 * v11++) + 24) = self->_status;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }
  }

  mirroringTasks = self->_mirroringTasks;
  self->_mirroringTasks = MEMORY[0x277CBEBF8];

  os_unfair_lock_unlock(&self->_lock);
  if (!status)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerTask.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"status != HDCloudSyncManagerTaskStatusPending"}];
  }

  completedUnitCount = [(NSProgress *)self->_progress completedUnitCount];
  totalUnitCount = [(NSProgress *)self->_progress totalUnitCount];
  if (completedUnitCount <= totalUnitCount)
  {
    v15 = totalUnitCount;
  }

  else
  {
    v15 = completedUnitCount;
  }

  [(NSProgress *)self->_progress setCompletedUnitCount:v15];
  if (status == 1)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished.", buf, 0xCu);
    }

    if (v5)
    {
      v5[2](v5);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)mirrorTask:(id)task
{
  obj = task;
  if (!obj)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerTask.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"originalTask"}];
  }

  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_originalTask);

  objc_storeWeak(&self->_originalTask, obj);
  os_unfair_lock_unlock(&self->_lock);
  if (WeakRetained)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerTask.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"hasOriginalTask == NO"}];
  }

  selfCopy = self;
  if (obj)
  {
    if (!selfCopy)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__addMirroringTask_ object:obj file:@"HDCloudSyncManagerTask.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"mirroringTask"}];
    }

    os_unfair_lock_lock(obj + 2);
    if (*(obj + 3))
    {
      v7 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:*(obj + 6)];
      progress = selfCopy->_progress;
      selfCopy->_progress = v7;

      os_unfair_lock_unlock(obj + 2);
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:sel__addMirroringTask_ object:obj file:@"HDCloudSyncManagerTask.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"status == HDCloudSyncManagerTaskStatusPending"}];
    }

    else
    {
      v10 = [*(obj + 4) arrayByAddingObject:selfCopy];
      v11 = *(obj + 4);
      *(obj + 4) = v10;

      v12 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:*(obj + 6)];
      v13 = selfCopy->_progress;
      selfCopy->_progress = v12;

      os_unfair_lock_unlock(obj + 2);
    }
  }
}

- (HDCloudSyncManagerTask)originalTask
{
  WeakRetained = objc_loadWeakRetained(&self->_originalTask);

  return WeakRetained;
}

@end