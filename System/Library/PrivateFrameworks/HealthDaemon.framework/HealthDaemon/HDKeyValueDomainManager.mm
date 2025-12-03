@interface HDKeyValueDomainManager
- (HDKeyValueDomainManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_observerKeyForDomain:(id)domain;
- (void)_notifyObserversFor:(id)for;
- (void)batchNotificationForDomain:(id)domain category:(int64_t)category forTransaction:(id)transaction;
- (void)startObservationForDomain:(id)domain;
- (void)stopObservationForDomain:(id)domain;
@end

@implementation HDKeyValueDomainManager

- (HDKeyValueDomainManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDKeyValueDomainManager;
  v5 = [(HDKeyValueDomainManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
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

- (id)_observerKeyForDomain:(id)domain
{
  domainCopy = domain;
  domainName = [domainCopy domainName];
  category = [domainCopy category];

  v7 = [(HDKeyValueDomainManager *)self _observerKeyForDomainName:domainName category:category];

  return v7;
}

- (void)startObservationForDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(HDKeyValueDomainManager *)self _observerKeyForDomain:domainCopy];
  [(_HKWeakObserversMap *)self->_observers addObserver:domainCopy forKey:v5];
}

- (void)stopObservationForDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(HDKeyValueDomainManager *)self _observerKeyForDomain:domainCopy];
  [(_HKWeakObserversMap *)self->_observers removeObserver:domainCopy forKey:v5];
}

- (void)_notifyObserversFor:(id)for
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__HDKeyValueDomainManager__notifyObserversFor___block_invoke;
  v3[3] = &unk_27861D2F8;
  v3[4] = self;
  [for enumerateObjectsUsingBlock:v3];
}

- (void)batchNotificationForDomain:(id)domain category:(int64_t)category forTransaction:(id)transaction
{
  transactionCopy = transaction;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__HDKeyValueDomainManager_batchNotificationForDomain_category_forTransaction___block_invoke;
  aBlock[3] = &unk_278613968;
  aBlock[4] = self;
  domainCopy = domain;
  v10 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HDKeyValueDomainManager_batchNotificationForDomain_category_forTransaction___block_invoke_2;
  v13[3] = &unk_2786138D0;
  v13[4] = self;
  v11 = _Block_copy(v13);
  v12 = [(HDKeyValueDomainManager *)self _observerKeyForDomainName:domainCopy category:category];

  os_unfair_lock_lock(&self->_pendingNotificationLock);
  [(NSMutableSet *)self->_pendingNotificationKeys addObject:v12];
  if (!self->_hasAddedTransactionOnCommitBlock)
  {
    self->_hasAddedTransactionOnCommitBlock = 1;
    [transactionCopy onCommit:v10 orRollback:v11];
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