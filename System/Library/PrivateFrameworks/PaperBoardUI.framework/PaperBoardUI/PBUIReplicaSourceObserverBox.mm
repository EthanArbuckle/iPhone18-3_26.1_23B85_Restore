@interface PBUIReplicaSourceObserverBox
- (PBUIReplicaSourceObserverBox)initWithIdentifier:(id)a3 activeStateDidChangeHandler:(id)a4;
- (id)registerSourceObserver:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)invalidate;
- (void)setNeedsSourceUpdate;
@end

@implementation PBUIReplicaSourceObserverBox

- (PBUIReplicaSourceObserverBox)initWithIdentifier:(id)a3 activeStateDidChangeHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PBUIReplicaSourceObserverBox;
  v8 = [(PBUIReplicaSourceObserverBox *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_wasLastActive = 0;
    if (v7)
    {
      objc_initWeak(&location, v8);
      v10 = MEMORY[0x277CF0BD0];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __79__PBUIReplicaSourceObserverBox_initWithIdentifier_activeStateDidChangeHandler___block_invoke;
      v16[3] = &unk_278363F48;
      objc_copyWeak(&v18, &location);
      v17 = v7;
      v11 = [v10 assertionWithIdentifier:v6 stateDidChangeHandler:v16];
      sharedUpdateAssertion = v9->_sharedUpdateAssertion;
      v9->_sharedUpdateAssertion = v11;

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:v6];
      v14 = v9->_sharedUpdateAssertion;
      v9->_sharedUpdateAssertion = v13;
    }
  }

  return v9;
}

void __79__PBUIReplicaSourceObserverBox_initWithIdentifier_activeStateDidChangeHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[8];
    if (v5 != [v6 isActive])
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 isActive]);
      v4[8] = 1;
    }
  }
}

- (void)dealloc
{
  sharedUpdateAssertion = self->_sharedUpdateAssertion;
  if (sharedUpdateAssertion)
  {
    [(BSCompoundAssertion *)sharedUpdateAssertion invalidate];
    v4 = self->_sharedUpdateAssertion;
    self->_sharedUpdateAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PBUIReplicaSourceObserverBox;
  [(PBUIReplicaSourceObserverBox *)&v5 dealloc];
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PBUILogSnapshot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Invalidating", &v7, 0x16u);
  }

  [(BSCompoundAssertion *)self->_sharedUpdateAssertion invalidate];
  sharedUpdateAssertion = self->_sharedUpdateAssertion;
  self->_sharedUpdateAssertion = 0;
}

- (id)registerSourceObserver:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 succinctDescriptionForObject:v5];
  v7 = [(BSCompoundAssertion *)self->_sharedUpdateAssertion acquireForReason:v6 withContext:v5];

  return v7;
}

- (void)setNeedsSourceUpdate
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self;
  v3 = [(PBUIReplicaSourceObserverBox *)v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = PBUILogRuntime();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138543874;
          v16 = v10;
          v17 = 2048;
          v18 = v2;
          v19 = 2114;
          v20 = v7;
          _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_INFO, "<%{public}@:%p> Set source needs update for observer: %{public}@", buf, 0x20u);
        }

        [v7 setNeedsSourceUpdate];
      }

      v4 = [(PBUIReplicaSourceObserverBox *)v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
    }

    while (v4);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(BSCompoundAssertion *)self->_sharedUpdateAssertion context];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

@end