@interface HDOnboardingCompletionManager
- (BOOL)_performWriteTransactionAndNotifyObserversWithError:(void *)a3 block:(void *)a4 inaccessibilityHandler:;
- (BOOL)insertCodableOnboardingCompletions:(id)a3 syncProvenance:(int64_t)a4 error:(id *)a5;
- (BOOL)insertOnboardingCompletion:(id)a3 error:(id *)a4;
- (BOOL)resetOnboardingCompletionsForFeature:(id)a3 error:(id *)a4;
- (HDOnboardingCompletionManager)initWithProfile:(id)a3;
- (id)onboardingCompletionsForHighestVersionOfFeatureIdentifier:(id)a3 error:(id *)a4;
- (id)onboardingCompletionsForLowestVersionOfFeatureIdentifier:(id)a3 error:(id *)a4;
- (void)_lock_unregisterObserver:(void *)a3 featureIdentifier:;
- (void)registerObserver:(id)a3 featureIdentifier:(id)a4 queue:(id)a5;
- (void)unregisterObserver:(id)a3;
- (void)unregisterObserver:(id)a3 featureIdentifier:(id)a4;
@end

@implementation HDOnboardingCompletionManager

- (HDOnboardingCompletionManager)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDOnboardingCompletionManager;
  v5 = [(HDOnboardingCompletionManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByFeatureIdentifier = v6->_observersByFeatureIdentifier;
    v6->_observersByFeatureIdentifier = v7;
  }

  return v6;
}

- (id)onboardingCompletionsForHighestVersionOfFeatureIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HDOnboardingCompletionManager_onboardingCompletionsForHighestVersionOfFeatureIdentifier_error___block_invoke;
  v13[3] = &unk_278619398;
  v15 = &v16;
  v9 = v6;
  v14 = v9;
  LODWORD(a4) = [(HDHealthEntity *)HDOnboardingCompletionEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __97__HDOnboardingCompletionManager_onboardingCompletionsForHighestVersionOfFeatureIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDOnboardingCompletionEntity onboardingCompletionsForHighestVersionOfFeatureIdentifier:*(a1 + 32) transaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)onboardingCompletionsForLowestVersionOfFeatureIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDOnboardingCompletionManager_onboardingCompletionsForLowestVersionOfFeatureIdentifier_error___block_invoke;
  v13[3] = &unk_278619398;
  v15 = &v16;
  v9 = v6;
  v14 = v9;
  LODWORD(a4) = [(HDHealthEntity *)HDOnboardingCompletionEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __96__HDOnboardingCompletionManager_onboardingCompletionsForLowestVersionOfFeatureIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDOnboardingCompletionEntity onboardingCompletionsForLowestVersionOfFeatureIdentifier:*(a1 + 32) transaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (BOOL)insertOnboardingCompletion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDOnboardingCompletionManager_insertOnboardingCompletion_error___block_invoke;
  v9[3] = &unk_27861B008;
  v10 = v6;
  v11 = self;
  v7 = v6;
  LOBYTE(a4) = [(HDOnboardingCompletionManager *)self _performWriteTransactionAndNotifyObserversWithError:a4 block:v9 inaccessibilityHandler:0];

  return a4;
}

id __66__HDOnboardingCompletionManager_insertOnboardingCompletion_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v6 + 8));
  v9 = [WeakRetained syncIdentityManager];
  v10 = [v9 currentSyncIdentity];
  v11 = [v10 entity];
  v12 = +[HDOnboardingCompletionEntity insertOnboardingCompletion:syncIdentity:transaction:error:](HDOnboardingCompletionEntity, "insertOnboardingCompletion:syncIdentity:transaction:error:", v5, [v11 persistentID], v7, a3);

  if (v12)
  {
    v13 = MEMORY[0x277CBEB98];
    v14 = [*(a1 + 32) featureIdentifier];
    v15 = [v13 setWithObject:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_performWriteTransactionAndNotifyObserversWithError:(void *)a3 block:(void *)a4 inaccessibilityHandler:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__55;
    v16[4] = __Block_byref_object_dispose__55;
    v17 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [WeakRetained database];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __114__HDOnboardingCompletionManager__performWriteTransactionAndNotifyObserversWithError_block_inaccessibilityHandler___block_invoke;
    v13[3] = &unk_27861B030;
    v15 = v16;
    v13[4] = a1;
    v14 = v7;
    v11 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:v10 error:a2 block:v13 inaccessibilityHandler:v8];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)resetOnboardingCompletionsForFeature:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDOnboardingCompletionManager_resetOnboardingCompletionsForFeature_error___block_invoke;
  v9[3] = &unk_27861B008;
  v10 = v6;
  v11 = self;
  v7 = v6;
  LOBYTE(a4) = [(HDOnboardingCompletionManager *)self _performWriteTransactionAndNotifyObserversWithError:a4 block:v9 inaccessibilityHandler:0];

  return a4;
}

id __76__HDOnboardingCompletionManager_resetOnboardingCompletionsForFeature_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v6 + 8));
  v9 = [WeakRetained syncIdentityManager];
  v10 = [v9 currentSyncIdentity];
  v11 = [v10 entity];
  LODWORD(a3) = +[HDOnboardingCompletionEntity deleteAllCompletionsForFeatureIdentifier:syncIdentity:transaction:error:](HDOnboardingCompletionEntity, "deleteAllCompletionsForFeatureIdentifier:syncIdentity:transaction:error:", v5, [v11 persistentID], v7, a3);

  if (a3)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __114__HDOnboardingCompletionManager__performWriteTransactionAndNotifyObserversWithError_block_inaccessibilityHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, v7, a3);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__HDOnboardingCompletionManager__performWriteTransactionAndNotifyObserversWithError_block_inaccessibilityHandler___block_invoke_2;
  v13[3] = &unk_278617198;
  v11 = a1[6];
  v13[4] = a1[4];
  v13[5] = v11;
  [v7 onCommit:v13 orRollback:0];

  return *(*(a1[6] + 8) + 40) != 0;
}

void __114__HDOnboardingCompletionManager__performWriteTransactionAndNotifyObserversWithError_block_inaccessibilityHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    os_unfair_lock_lock((v1 + 16));
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [*(v1 + 24) objectForKeyedSubscript:v8];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __70__HDOnboardingCompletionManager__notifyObserversOfFeatureIdentifiers___block_invoke;
          v12[3] = &unk_27861B058;
          v12[4] = v1;
          v12[5] = v8;
          [v9 notifyObservers:v12];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock((v1 + 16));
    v2 = v11;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)insertCodableOnboardingCompletions:(id)a3 syncProvenance:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [[HDOnboardingCompletionJournalOperation alloc] initWithCodableOnboardingCompletions:v8 syncProvenance:a4];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a5) = [(HDOnboardingCompletionJournalOperation *)v9 performOrJournalWithProfile:WeakRetained error:a5];

  return a5;
}

id __113__HDOnboardingCompletionManager__insertCodableOnboardingCompletions_syncProvenance_error_inaccessabilityHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 8));
  v9 = [HDOnboardingCompletionEntity insertCodableOnboardingCompletions:v6 syncProvenance:v4 profile:WeakRetained transaction:v7 error:a3];

  return v9;
}

- (void)registerObserver:(id)a3 featureIdentifier:(id)a4 queue:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_observersByFeatureIdentifier objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = HKLogInfrastructure();
    v10 = [v11 initWithName:v8 loggingCategory:v12];

    [(NSMutableDictionary *)self->_observersByFeatureIdentifier setObject:v10 forKeyedSubscript:v8];
  }

  [v10 registerObserver:v13 queue:v9];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3 featureIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HDOnboardingCompletionManager *)self _lock_unregisterObserver:v7 featureIdentifier:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_unregisterObserver:(void *)a3 featureIdentifier:
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    os_unfair_lock_assert_owner((a1 + 16));
    v7 = [*(a1 + 24) objectForKeyedSubscript:v5];

    [v7 unregisterObserver:v6];
  }
}

- (void)unregisterObserver:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMutableDictionary *)self->_observersByFeatureIdentifier allKeys];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDOnboardingCompletionManager *)self _lock_unregisterObserver:v4 featureIdentifier:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

@end