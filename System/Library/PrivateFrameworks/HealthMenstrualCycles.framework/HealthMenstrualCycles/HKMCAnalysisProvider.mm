@interface HKMCAnalysisProvider
- (HKMCAnalysisProvider)initWithHealthStore:(id)store startAnalysisQueryImmediately:(BOOL)immediately;
- (id)description;
- (void)_handleAnalysisQueryResult:(id)result error:(id)error;
- (void)analysisWithCompletion:(id)completion;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)startAnalysisQuery;
@end

@implementation HKMCAnalysisProvider

- (HKMCAnalysisProvider)initWithHealthStore:(id)store startAnalysisQueryImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = HKMCAnalysisProvider;
  v8 = [(HKMCAnalysisProvider *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
    v10 = objc_alloc(MEMORY[0x277CCD738]);
    v11 = [v10 initWithName:@"HKMCAnalysisProviderObservers" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v9->_observers;
    v9->_observers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nextAnalysisQueryResultBlocks = v9->_nextAnalysisQueryResultBlocks;
    v9->_nextAnalysisQueryResultBlocks = v13;

    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_queue, MEMORY[0x277D85CD0]);
    if (immediatelyCopy)
    {
      [(HKMCAnalysisProvider *)v9 startAnalysisQuery];
    }
  }

  return v9;
}

- (void)startAnalysisQuery
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKMCAnalysisProvider.m" lineNumber:57 description:@"Analysis query can only be started once"];
}

void __42__HKMCAnalysisProvider_startAnalysisQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAnalysisQueryResult:v7 error:v6];
}

- (void)_handleAnalysisQueryResult:(id)result error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (resultCopy)
  {
    objc_storeStrong(&self->_lastAnalysis, result);
    lastError = self->_lastError;
    self->_lastError = 0;

    observers = self->_observers;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__HKMCAnalysisProvider__handleAnalysisQueryResult_error___block_invoke;
    v25[3] = &unk_2796D5210;
    v25[4] = self;
    v26 = resultCopy;
    [(HKObserverSet *)observers notifyObservers:v25];
    v11 = v26;
LABEL_3:

    goto LABEL_9;
  }

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    [(HKMCAnalysisProvider *)v12 _handleAnalysisQueryResult:errorCopy error:?];
  }

  if (!self->_lastAnalysis)
  {
    if (!errorCopy)
    {
      v20 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Query returned with no analysis and no error"];
      v11 = self->_lastError;
      self->_lastError = v20;
      goto LABEL_3;
    }

    objc_storeStrong(&self->_lastError, error);
  }

LABEL_9:
  v13 = [(NSMutableArray *)self->_nextAnalysisQueryResultBlocks copy];
  [(NSMutableArray *)self->_nextAnalysisQueryResultBlocks removeAllObjects];
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

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKMCAnalysis *)self->_lastAnalysis copy];
  v4 = [(NSError *)self->_lastError copy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p analysis:%@ error:%@>", objc_opt_class(), self, v3, v4];

  return v5;
}

- (void)dealloc
{
  [(HKHealthStore *)self->_healthStore stopQuery:self->_analysisQuery];
  v3.receiver = self;
  v3.super_class = HKMCAnalysisProvider;
  [(HKMCAnalysisProvider *)&v3 dealloc];
}

- (void)analysisWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(HKMCAnalysis *)self->_lastAnalysis copy];
  v5 = [(NSError *)self->_lastError copy];
  if (v4 | v5)
  {
    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy, v4, v5);
  }

  else
  {
    nextAnalysisQueryResultBlocks = self->_nextAnalysisQueryResultBlocks;
    v7 = MEMORY[0x253087260](completionCopy);
    [(NSMutableArray *)nextAnalysisQueryResultBlocks addObject:v7];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  [(HKObserverSet *)self->_observers registerObserver:observerCopy queue:self->_queue];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKMCAnalysis *)self->_lastAnalysis copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    observers = self->_observers;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__HKMCAnalysisProvider_registerObserver___block_invoke;
    v7[3] = &unk_2796D5210;
    v7[4] = self;
    v8 = v5;
    [(HKObserverSet *)observers notifyObserver:observerCopy handler:v7];
  }
}

- (void)_handleAnalysisQueryResult:(uint64_t)a3 error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2518FC000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error in analysis query: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end