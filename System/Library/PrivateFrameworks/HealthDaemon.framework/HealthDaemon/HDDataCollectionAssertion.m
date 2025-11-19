@interface HDDataCollectionAssertion
- (id)description;
- (void)setObserverState:(id)a3;
@end

@implementation HDDataCollectionAssertion

- (void)setObserverState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([v15 isEqual:self->_observerState])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [v15 copy];
    observerState = self->_observerState;
    self->_observerState = v4;

    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);
    v7 = self;
    v8 = v15;
    if (WeakRetained)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = WeakRetained;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        *&buf[22] = 2114;
        v17 = v8;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Data collection observer %{public}@ changed to state %{public}@", buf, 0x20u);
      }

      if (!v8)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        [v14 handleFailureInMethod:sel__dataCollectionObserver_didChangeState_ object:WeakRetained file:@"HDDataCollectionManager.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];
      }

      v10 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:WeakRetained activityName:@"ObserverDidChangeState"];
      v11 = WeakRetained[19];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __66__HDDataCollectionManager__dataCollectionObserver_didChangeState___block_invoke;
      v17 = &unk_278616D68;
      v18 = WeakRetained;
      v19 = v7;
      v20 = v8;
      v21 = v10;
      v12 = v10;
      dispatch_async(v11, buf);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDDataCollectionAssertion;
  v4 = [(HDAssertion *)&v8 description];
  sampleTypes = self->_sampleTypes;
  v6 = [v3 stringWithFormat:@"<%@: %@, %@>", v4, sampleTypes, self->_observerState];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

@end