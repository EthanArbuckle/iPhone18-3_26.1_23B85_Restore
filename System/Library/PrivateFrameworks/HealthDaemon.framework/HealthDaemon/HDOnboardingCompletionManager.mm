@interface HDOnboardingCompletionManager
- (BOOL)_performWriteTransactionAndNotifyObserversWithError:(void *)error block:(void *)block inaccessibilityHandler:;
- (BOOL)insertCodableOnboardingCompletions:(id)completions syncProvenance:(int64_t)provenance error:(id *)error;
- (BOOL)insertOnboardingCompletion:(id)completion error:(id *)error;
- (BOOL)resetOnboardingCompletionsForFeature:(id)feature error:(id *)error;
- (HDOnboardingCompletionManager)initWithProfile:(id)profile;
- (id)onboardingCompletionsForHighestVersionOfFeatureIdentifier:(id)identifier error:(id *)error;
- (id)onboardingCompletionsForLowestVersionOfFeatureIdentifier:(id)identifier error:(id *)error;
- (void)_lock_unregisterObserver:(void *)observer featureIdentifier:;
- (void)registerObserver:(id)observer featureIdentifier:(id)identifier queue:(id)queue;
- (void)unregisterObserver:(id)observer;
- (void)unregisterObserver:(id)observer featureIdentifier:(id)identifier;
@end

@implementation HDOnboardingCompletionManager

- (HDOnboardingCompletionManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDOnboardingCompletionManager;
  v5 = [(HDOnboardingCompletionManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByFeatureIdentifier = v6->_observersByFeatureIdentifier;
    v6->_observersByFeatureIdentifier = v7;
  }

  return v6;
}

- (id)onboardingCompletionsForHighestVersionOfFeatureIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HDOnboardingCompletionManager_onboardingCompletionsForHighestVersionOfFeatureIdentifier_error___block_invoke;
  v13[3] = &unk_278619398;
  v15 = &v16;
  v9 = identifierCopy;
  v14 = v9;
  LODWORD(error) = [(HDHealthEntity *)HDOnboardingCompletionEntity performReadTransactionWithHealthDatabase:database error:error block:v13];

  if (error)
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

- (id)onboardingCompletionsForLowestVersionOfFeatureIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDOnboardingCompletionManager_onboardingCompletionsForLowestVersionOfFeatureIdentifier_error___block_invoke;
  v13[3] = &unk_278619398;
  v15 = &v16;
  v9 = identifierCopy;
  v14 = v9;
  LODWORD(error) = [(HDHealthEntity *)HDOnboardingCompletionEntity performReadTransactionWithHealthDatabase:database error:error block:v13];

  if (error)
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

- (BOOL)insertOnboardingCompletion:(id)completion error:(id *)error
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDOnboardingCompletionManager_insertOnboardingCompletion_error___block_invoke;
  v9[3] = &unk_27861B008;
  v10 = completionCopy;
  selfCopy = self;
  v7 = completionCopy;
  LOBYTE(error) = [(HDOnboardingCompletionManager *)self _performWriteTransactionAndNotifyObserversWithError:error block:v9 inaccessibilityHandler:0];

  return error;
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

- (BOOL)_performWriteTransactionAndNotifyObserversWithError:(void *)error block:(void *)block inaccessibilityHandler:
{
  errorCopy = error;
  blockCopy = block;
  if (self)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__55;
    v16[4] = __Block_byref_object_dispose__55;
    v17 = 0;
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __114__HDOnboardingCompletionManager__performWriteTransactionAndNotifyObserversWithError_block_inaccessibilityHandler___block_invoke;
    v13[3] = &unk_27861B030;
    v15 = v16;
    v13[4] = self;
    v14 = errorCopy;
    v11 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:database error:a2 block:v13 inaccessibilityHandler:blockCopy];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)resetOnboardingCompletionsForFeature:(id)feature error:(id *)error
{
  featureCopy = feature;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDOnboardingCompletionManager_resetOnboardingCompletionsForFeature_error___block_invoke;
  v9[3] = &unk_27861B008;
  v10 = featureCopy;
  selfCopy = self;
  v7 = featureCopy;
  LOBYTE(error) = [(HDOnboardingCompletionManager *)self _performWriteTransactionAndNotifyObserversWithError:error block:v9 inaccessibilityHandler:0];

  return error;
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

- (BOOL)insertCodableOnboardingCompletions:(id)completions syncProvenance:(int64_t)provenance error:(id *)error
{
  completionsCopy = completions;
  v9 = [[HDOnboardingCompletionJournalOperation alloc] initWithCodableOnboardingCompletions:completionsCopy syncProvenance:provenance];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(HDOnboardingCompletionJournalOperation *)v9 performOrJournalWithProfile:WeakRetained error:error];

  return error;
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

- (void)registerObserver:(id)observer featureIdentifier:(id)identifier queue:(id)queue
{
  observerCopy = observer;
  identifierCopy = identifier;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_observersByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = HKLogInfrastructure();
    v10 = [v11 initWithName:identifierCopy loggingCategory:v12];

    [(NSMutableDictionary *)self->_observersByFeatureIdentifier setObject:v10 forKeyedSubscript:identifierCopy];
  }

  [v10 registerObserver:observerCopy queue:queueCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)observer featureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(HDOnboardingCompletionManager *)self _lock_unregisterObserver:observerCopy featureIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_unregisterObserver:(void *)observer featureIdentifier:
{
  if (self)
  {
    observerCopy = observer;
    v6 = a2;
    os_unfair_lock_assert_owner((self + 16));
    v7 = [*(self + 24) objectForKeyedSubscript:observerCopy];

    [v7 unregisterObserver:v6];
  }
}

- (void)unregisterObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_observersByFeatureIdentifier allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(HDOnboardingCompletionManager *)self _lock_unregisterObserver:observerCopy featureIdentifier:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

@end