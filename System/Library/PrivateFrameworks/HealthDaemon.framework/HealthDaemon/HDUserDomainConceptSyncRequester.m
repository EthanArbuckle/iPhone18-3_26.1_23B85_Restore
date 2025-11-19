@interface HDUserDomainConceptSyncRequester
- (HDUserDomainConceptManager)userDomainConceptManager;
- (HDUserDomainConceptSyncRequester)initWithUserDomainConceptManager:(id)a3;
- (void)_triggerSyncsIfRequiredForReason:(void *)a3 userDomainConcepts:;
@end

@implementation HDUserDomainConceptSyncRequester

- (HDUserDomainConceptSyncRequester)initWithUserDomainConceptManager:(id)a3
{
  v4 = a3;
  v5 = [v4 profile];
  v9.receiver = self;
  v9.super_class = HDUserDomainConceptSyncRequester;
  v6 = [(HDSyncRequester *)&v9 initWithProfile:v5];

  if (v6)
  {
    v7 = objc_storeWeak(&v6->_userDomainConceptManager, v4);
    [v4 addUserDomainConceptObserver:v6 queue:0];
  }

  return v6;
}

- (void)_triggerSyncsIfRequiredForReason:(void *)a3 userDomainConcepts:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 profile];
    v8 = [v7 syncIdentityManager];
    v9 = [v8 currentSyncIdentity];
    v10 = [v9 entity];
    v11 = [v10 persistentID];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__HDUserDomainConceptSyncRequester__triggerSyncsIfRequiredForReason_userDomainConcepts___block_invoke;
    v12[3] = &__block_descriptor_40_e29_B16__0__HKUserDomainConcept_8l;
    v12[4] = v11;
    if ([v6 hk_containsObjectPassingTest:v12])
    {
      [a1 requestSyncsWithReason:v5];
    }
  }
}

uint64_t __88__HDUserDomainConceptSyncRequester__triggerSyncsIfRequiredForReason_userDomainConcepts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hd_syncEntityIdentity] == *(a1 + 32))
  {
    v4 = [v3 canRequestSyncUponInsertion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HDUserDomainConceptManager)userDomainConceptManager
{
  WeakRetained = objc_loadWeakRetained(&self->_userDomainConceptManager);

  return WeakRetained;
}

@end