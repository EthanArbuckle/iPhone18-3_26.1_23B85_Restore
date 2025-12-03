@interface HDUserDomainConceptSyncRequester
- (HDUserDomainConceptManager)userDomainConceptManager;
- (HDUserDomainConceptSyncRequester)initWithUserDomainConceptManager:(id)manager;
- (void)_triggerSyncsIfRequiredForReason:(void *)reason userDomainConcepts:;
@end

@implementation HDUserDomainConceptSyncRequester

- (HDUserDomainConceptSyncRequester)initWithUserDomainConceptManager:(id)manager
{
  managerCopy = manager;
  profile = [managerCopy profile];
  v9.receiver = self;
  v9.super_class = HDUserDomainConceptSyncRequester;
  v6 = [(HDSyncRequester *)&v9 initWithProfile:profile];

  if (v6)
  {
    v7 = objc_storeWeak(&v6->_userDomainConceptManager, managerCopy);
    [managerCopy addUserDomainConceptObserver:v6 queue:0];
  }

  return v6;
}

- (void)_triggerSyncsIfRequiredForReason:(void *)reason userDomainConcepts:
{
  v5 = a2;
  reasonCopy = reason;
  if (self)
  {
    profile = [self profile];
    syncIdentityManager = [profile syncIdentityManager];
    currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
    entity = [currentSyncIdentity entity];
    persistentID = [entity persistentID];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__HDUserDomainConceptSyncRequester__triggerSyncsIfRequiredForReason_userDomainConcepts___block_invoke;
    v12[3] = &__block_descriptor_40_e29_B16__0__HKUserDomainConcept_8l;
    v12[4] = persistentID;
    if ([reasonCopy hk_containsObjectPassingTest:v12])
    {
      [self requestSyncsWithReason:v5];
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