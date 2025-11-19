@interface HKMCPregnancyModelProvider
- (HKMCPregnancyModelProvider)initWithHealthStore:(id)a3 startQueryImmediately:(BOOL)a4;
- (NSString)description;
- (id)getCurrentPregnancyModel;
- (void)_handlePregnancyModelQueryResult:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)registerObserver:(id)a3 isUserInitiated:(BOOL)a4;
- (void)startQuery;
@end

@implementation HKMCPregnancyModelProvider

- (HKMCPregnancyModelProvider)initWithHealthStore:(id)a3 startQueryImmediately:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v16.receiver = self;
  v16.super_class = HKMCPregnancyModelProvider;
  v8 = [(HKMCPregnancyModelProvider *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, a3);
    v10 = objc_alloc(MEMORY[0x277CCD738]);
    v11 = [v10 initWithName:@"HKMCPregnancyModelProviderObservers" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v9->_observers;
    v9->_observers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nextPregnancyModelQueryResultBlocks = v9->_nextPregnancyModelQueryResultBlocks;
    v9->_nextPregnancyModelQueryResultBlocks = v13;

    v9->_lock._os_unfair_lock_opaque = 0;
    if (v4)
    {
      [(HKMCPregnancyModelProvider *)v9 startQuery];
    }
  }

  return v9;
}

- (void)startQuery
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCPregnancyModelProvider.m" lineNumber:53 description:@"Query can only be started once"];
}

void __40__HKMCPregnancyModelProvider_startQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePregnancyModelQueryResult:v7 error:v6];
}

- (void)_handlePregnancyModelQueryResult:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (v7)
  {
    objc_storeStrong(&self->_lastPregnancyModel, a3);
    lastError = self->_lastError;
    self->_lastError = 0;

    observers = self->_observers;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__HKMCPregnancyModelProvider__handlePregnancyModelQueryResult_error___block_invoke;
    v25[3] = &unk_2796D4C48;
    v26 = v7;
    [(HKObserverSet *)observers notifyObservers:v25];
    v11 = v26;
LABEL_3:

    goto LABEL_7;
  }

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    [(HKMCPregnancyModelProvider *)v12 _handlePregnancyModelQueryResult:v8 error:?];
  }

  if (!self->_lastPregnancyModel)
  {
    if (v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Query returned with no model and no error"];
    }

    v11 = self->_lastError;
    self->_lastError = v20;
    goto LABEL_3;
  }

LABEL_7:
  v13 = [(NSMutableArray *)self->_nextPregnancyModelQueryResultBlocks copy];
  [(NSMutableArray *)self->_nextPregnancyModelQueryResultBlocks removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v21 + 1) + 8 * v18) + 16))(*(*(&v21 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKMCPregnancyModel *)self->_lastPregnancyModel copy];
  v4 = [(NSError *)self->_lastError copy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = HKSensitiveLogItem();
  v8 = [v5 stringWithFormat:@"<%@:%p pregnancyModel:%@ error:%@>", v6, self, v7, v4];

  return v8;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    pregnancyModelQuery = self->_pregnancyModelQuery;
    *buf = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = pregnancyModelQuery;
    v7 = v5;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping pregnancy model query %{public}@", buf, 0x16u);
  }

  [(HKHealthStore *)self->_healthStore stopQuery:self->_pregnancyModelQuery];
  v9.receiver = self;
  v9.super_class = HKMCPregnancyModelProvider;
  [(HKMCPregnancyModelProvider *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentPregnancyModel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKMCPregnancyModel *)self->_lastPregnancyModel copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)registerObserver:(id)a3 isUserInitiated:(BOOL)a4
{
  v5 = a3;
  [(HKObserverSet *)self->_observers registerObserver:v5];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(HKMCPregnancyModel *)self->_lastPregnancyModel copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    observers = self->_observers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__HKMCPregnancyModelProvider_registerObserver_isUserInitiated___block_invoke;
    v8[3] = &unk_2796D4C48;
    v9 = v6;
    [(HKObserverSet *)observers notifyObserver:v5 handler:v8];
  }
}

- (void)_handlePregnancyModelQueryResult:(uint64_t)a3 error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2518FC000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error in pregnancy state query: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end