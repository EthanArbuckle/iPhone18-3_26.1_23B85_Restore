@interface DADClientAccountTimers
- (BOOL)allowFolderWipe;
- (DADClientAccountTimers)init;
- (NSDate)lastAllFolderContentsRequestDate;
- (NSDate)lastFolderListRequestDate;
- (NSDate)lastFolderWipeRequestDate;
- (NSMutableDictionary)folderIdToLastFolderContentsRequestDate;
- (OS_dispatch_source)deferredAllFolderContentsSource;
- (OS_dispatch_source)deferredFolderContentsSource;
- (OS_dispatch_source)deferredFolderListSource;
- (int64_t)clientBehaviorForFolderContents;
- (int64_t)clientBehaviorForFolderIds:(id)a3;
- (int64_t)clientBehaviorForFolderList;
- (void)dealloc;
- (void)killAllTimers;
- (void)setDeferredAllFolderContentsSource:(id)a3;
- (void)setDeferredFolderContentsSource:(id)a3;
- (void)setDeferredFolderListSource:(id)a3;
- (void)setLastAllFolderContentsRequestDate:(id)a3;
- (void)setLastFolderContentRequestDate:(id)a3 forFolderWithId:(id)a4;
- (void)setLastFolderListRequestDate:(id)a3;
- (void)setLastFolderWipeRequestDate:(id)a3;
@end

@implementation DADClientAccountTimers

- (DADClientAccountTimers)init
{
  v3.receiver = self;
  v3.super_class = DADClientAccountTimers;
  result = [(DADClientAccountTimers *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)killAllTimers
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deferredAllFolderContentsSource);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_deferredAllFolderContentsSource);
    dispatch_source_cancel(v4);

    objc_storeWeak(&self->_deferredAllFolderContentsSource, 0);
  }

  v5 = objc_loadWeakRetained(&self->_deferredFolderListSource);

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_deferredFolderListSource);
    dispatch_source_cancel(v6);

    objc_storeWeak(&self->_deferredFolderListSource, 0);
  }

  v7 = objc_loadWeakRetained(&self->_deferredFolderContentsSource);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_deferredFolderContentsSource);
    dispatch_source_cancel(v8);

    objc_storeWeak(&self->_deferredFolderContentsSource, 0);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(DADClientAccountTimers *)self killAllTimers];
  v3.receiver = self;
  v3.super_class = DADClientAccountTimers;
  [(DADClientAccountTimers *)&v3 dealloc];
}

- (NSDate)lastAllFolderContentsRequestDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastAllFolderContentsRequestDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastAllFolderContentsRequestDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lastAllFolderContentsRequestDate = self->_lastAllFolderContentsRequestDate;
  self->_lastAllFolderContentsRequestDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastFolderListRequestDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastFolderListRequestDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastFolderListRequestDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lastFolderListRequestDate = self->_lastFolderListRequestDate;
  self->_lastFolderListRequestDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastFolderWipeRequestDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastFolderWipeRequestDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastFolderWipeRequestDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lastFolderWipeRequestDate = self->_lastFolderWipeRequestDate;
  self->_lastFolderWipeRequestDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMutableDictionary)folderIdToLastFolderContentsRequestDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  folderIdToLastFolderContentsRequestDate = self->_folderIdToLastFolderContentsRequestDate;
  if (!folderIdToLastFolderContentsRequestDate)
  {
    v4 = objc_opt_new();
    v5 = self->_folderIdToLastFolderContentsRequestDate;
    self->_folderIdToLastFolderContentsRequestDate = v4;

    folderIdToLastFolderContentsRequestDate = self->_folderIdToLastFolderContentsRequestDate;
  }

  return folderIdToLastFolderContentsRequestDate;
}

- (void)setLastFolderContentRequestDate:(id)a3 forFolderWithId:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(DADClientAccountTimers *)self folderIdToLastFolderContentsRequestDate];
  [v8 setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDeferredAllFolderContentsSource:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deferredAllFolderContentsSource);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_deferredAllFolderContentsSource);
    dispatch_source_cancel(v5);

    objc_storeWeak(&self->_deferredAllFolderContentsSource, 0);
  }

  objc_storeWeak(&self->_deferredAllFolderContentsSource, obj);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDeferredFolderListSource:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deferredFolderListSource);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_deferredFolderListSource);
    dispatch_source_cancel(v5);

    objc_storeWeak(&self->_deferredFolderListSource, 0);
  }

  objc_storeWeak(&self->_deferredFolderListSource, obj);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDeferredFolderContentsSource:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deferredFolderContentsSource);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_deferredFolderContentsSource);
    dispatch_source_cancel(v5);

    objc_storeWeak(&self->_deferredFolderContentsSource, 0);
  }

  objc_storeWeak(&self->_deferredFolderContentsSource, obj);
  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)clientBehaviorForFolderIds:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(DADClientAccountTimers *)self folderIdToLastFolderContentsRequestDate];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (v14 && ([v5 timeIntervalSinceDate:v14], v16 = v15, -[DADClientAccountTimers deferredTimerInterval](self, "deferredTimerInterval"), v16 <= v17))
        {
          WeakRetained = objc_loadWeakRetained(&self->_deferredFolderContentsSource);

          if (!WeakRetained)
          {
            v9 |= 2uLL;
          }
        }

        else
        {
          v9 |= 1uLL;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)clientBehaviorForFolderList
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lastFolderListRequestDate && ([MEMORY[0x277CBEAA8] date], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", self->_lastFolderListRequestDate), v5 = v4, -[DADClientAccountTimers deferredTimerInterval](self, "deferredTimerInterval"), v7 = v6, v3, v5 <= v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_deferredFolderListSource);
    v10 = WeakRetained == 0;

    v8 = 2 * v10;
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (int64_t)clientBehaviorForFolderContents
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lastAllFolderContentsRequestDate && ([MEMORY[0x277CBEAA8] date], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", self->_lastAllFolderContentsRequestDate), v5 = v4, -[DADClientAccountTimers deferredTimerInterval](self, "deferredTimerInterval"), v7 = v6, v3, v5 <= v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_deferredFolderContentsSource);
    v10 = WeakRetained == 0;

    v8 = 2 * v10;
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (BOOL)allowFolderWipe
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lastFolderWipeRequestDate)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:self->_lastFolderWipeRequestDate];
    v5 = v4;
    [(DADClientAccountTimers *)self deferredTimerInterval];
    v7 = v5 > v6 * 5.0;
  }

  else
  {
    v7 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (OS_dispatch_source)deferredAllFolderContentsSource
{
  WeakRetained = objc_loadWeakRetained(&self->_deferredAllFolderContentsSource);

  return WeakRetained;
}

- (OS_dispatch_source)deferredFolderListSource
{
  WeakRetained = objc_loadWeakRetained(&self->_deferredFolderListSource);

  return WeakRetained;
}

- (OS_dispatch_source)deferredFolderContentsSource
{
  WeakRetained = objc_loadWeakRetained(&self->_deferredFolderContentsSource);

  return WeakRetained;
}

@end