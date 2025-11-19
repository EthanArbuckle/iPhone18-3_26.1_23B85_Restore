@interface HDKeyValueDomainManager
- (HDKeyValueDomainManager)initWithProfile:(id)a3;
- (HDProfile)profile;
- (id)_observerKeyForDomain:(id)a3;
- (void)_notifyObserversFor:(id)a3;
- (void)batchNotificationForDomain:(id)a3 category:(int64_t)a4 forTransaction:(id)a5;
- (void)startObservationForDomain:(id)a3;
- (void)stopObservationForDomain:(id)a3;
@end

@implementation HDKeyValueDomainManager

- (HDKeyValueDomainManager)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDKeyValueDomainManager;
  v5 = [(HDKeyValueDomainManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc_init(MEMORY[0x277CCDE48]);
    observers = v6->_observers;
    v6->_observers = v7;

    v6->_pendingNotificationLock._os_unfair_lock_opaque = 0;
    v9 = [MEMORY[0x277CBEB58] set];
    pendingNotificationKeys = v6->_pendingNotificationKeys;
    v6->_pendingNotificationKeys = v9;

    v6->_hasAddedTransactionOnCommitBlock = 0;
  }

  return v6;
}

- (id)_observerKeyForDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 domainName];
  v6 = [v4 category];

  v7 = [(HDKeyValueDomainManager *)self _observerKeyForDomainName:v5 category:v6];

  return v7;
}

- (void)startObservationForDomain:(id)a3
{
  v4 = a3;
  v5 = [(HDKeyValueDomainManager *)self _observerKeyForDomain:v4];
  [(_HKWeakObserversMap *)self->_observers addObserver:v4 forKey:v5];
}

- (void)stopObservationForDomain:(id)a3
{
  v4 = a3;
  v5 = [(HDKeyValueDomainManager *)self _observerKeyForDomain:v4];
  [(_HKWeakObserversMap *)self->_observers removeObserver:v4 forKey:v5];
}

- (void)_notifyObserversFor:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__HDKeyValueDomainManager__notifyObserversFor___block_invoke;
  v3[3] = &unk_27861D2F8;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)batchNotificationForDomain:(id)a3 category:(int64_t)a4 forTransaction:(id)a5
{
  v8 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__HDKeyValueDomainManager_batchNotificationForDomain_category_forTransaction___block_invoke;
  aBlock[3] = &unk_278613968;
  aBlock[4] = self;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HDKeyValueDomainManager_batchNotificationForDomain_category_forTransaction___block_invoke_2;
  v13[3] = &unk_2786138D0;
  v13[4] = self;
  v11 = _Block_copy(v13);
  v12 = [(HDKeyValueDomainManager *)self _observerKeyForDomainName:v9 category:a4];

  os_unfair_lock_lock(&self->_pendingNotificationLock);
  [(NSMutableSet *)self->_pendingNotificationKeys addObject:v12];
  if (!self->_hasAddedTransactionOnCommitBlock)
  {
    self->_hasAddedTransactionOnCommitBlock = 1;
    [v8 onCommit:v10 orRollback:v11];
  }

  os_unfair_lock_unlock(&self->_pendingNotificationLock);
}

void __78__HDKeyValueDomainManager_batchNotificationForDomain_category_forTransaction___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = [*(*(a1 + 32) + 24) copy];
  [*(*(a1 + 32) + 24) removeAllObjects];
  *(*(a1 + 32) + 32) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  [*(a1 + 32) _notifyObserversFor:v2];
}

void __78__HDKeyValueDomainManager_batchNotificationForDomain_category_forTransaction___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(*(a1 + 32) + 24) removeAllObjects];
  *(*(a1 + 32) + 32) = 0;
  v2 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v2);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end