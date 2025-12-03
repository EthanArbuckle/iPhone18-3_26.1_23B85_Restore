@interface HDMedicationCountProvider
+ (uint64_t)_medicationCountForCurrentCountNumber:(uint64_t)number addedCount:;
- (HDDaemon)daemon;
- (HDMedicationCountProvider)init;
- (HDMedicationCountProvider)initWithDaemon:(id)daemon;
- (id)_countOfOntologyBackedMedicationsForTransaction:(uint64_t)transaction error:;
- (int64_t)ontologyBackedMedicationCountInProfile:(id)profile;
- (uint64_t)_getAndSetReadyProfile:(uint64_t)result;
- (uint64_t)_isReadyProfile:(uint64_t)result;
- (uint64_t)_lock_lookupAndUpdateCountForProfile:(void *)profile transaction:(uint64_t)transaction error:;
- (uint64_t)_updateAndReturnCountForProfile:(uint64_t)profile;
- (uint64_t)_updateCountForReadyProfile:(uint64_t)profile;
- (void)_lock_updateCountAndNotifyIfRequiredForProfile:(void *)profile currentCountNumber:(uint64_t)number newCount:;
- (void)_lock_updateOntologyBackedMedicationCountWithAddedCount:(void *)count profile:;
- (void)_monitorMedicationCountsInProfile:(uint64_t)profile;
- (void)_updateOntologyBackedMedicationCountWithAddedCount:(void *)count profile:;
- (void)monitorMedicationCountsInProfile:(id)profile;
- (void)profileDidBecomeReady:(id)ready;
- (void)userDomainConceptManager:(id)manager didAddUserDomainConcepts:(id)concepts;
- (void)userDomainConceptManager:(id)manager didDeleteUserDomainConcepts:(id)concepts;
@end

@implementation HDMedicationCountProvider

- (HDMedicationCountProvider)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationCountProvider)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v12.receiver = self;
  v12.super_class = HDMedicationCountProvider;
  v5 = [(HDMedicationCountProvider *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogHealthOntology();
    v9 = [v7 initWithName:@"HDMedicationCountObserver" loggingCategory:v8];
    observers = v6->_observers;
    v6->_observers = v9;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)monitorMedicationCountsInProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock(&self->_lock);
  isProfileReadyByProfile = self->_isProfileReadyByProfile;
  if (!isProfileReadyByProfile)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v6 = self->_isProfileReadyByProfile;
    self->_isProfileReadyByProfile = weakToStrongObjectsMapTable;

    isProfileReadyByProfile = self->_isProfileReadyByProfile;
  }

  v7 = [(NSMapTable *)isProfileReadyByProfile objectForKey:profileCopy];
  if (v7)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(NSMapTable *)self->_isProfileReadyByProfile setObject:MEMORY[0x277CBEC28] forKey:profileCopy];
    os_unfair_lock_unlock(&self->_lock);
    [(HDMedicationCountProvider *)self _monitorMedicationCountsInProfile:profileCopy];
    [profileCopy registerProfileReadyObserver:self queue:0];
  }
}

- (int64_t)ontologyBackedMedicationCountInProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_ontologyBackedMedicationCountByProfile objectForKey:profileCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    integerValue = [v5 integerValue];
    if (integerValue == -1)
    {
      integerValue = [(HDMedicationCountProvider *)self _updateAndReturnCountForProfile:profileCopy];
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  if (([(HDMedicationCountProvider *)self _getAndSetReadyProfile:readyCopy]& 1) == 0)
  {
    [(HDMedicationCountProvider *)self _updateCountForReadyProfile:readyCopy];
  }
}

- (uint64_t)_updateCountForReadyProfile:(uint64_t)profile
{
  v3 = a2;
  v4 = v3;
  if (profile)
  {
    userDomainConceptManager = [v3 userDomainConceptManager];

    if (userDomainConceptManager)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = -1;
      v6 = MEMORY[0x277D10920];
      database = [v4 database];
      v14 = &v16;
      v15 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__HDMedicationCountProvider__updateCountForReadyProfile___block_invoke;
      v12[3] = &unk_2796CDEA8;
      v12[4] = profile;
      v13 = v4;
      v8 = [v6 performReadTransactionWithHealthDatabase:database error:&v15 block:v12];
      v9 = v15;

      if ((v8 & 1) == 0 && (HKIsUnitTesting() & 1) == 0)
      {
        _HKInitializeLogging();
        v10 = HKLogHealthOntology();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(HDMedicationCountProvider *)profile _updateCountForReadyProfile:v9, v10];
        }
      }

      profile = v17[3];

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      profile = 0;
    }
  }

  return profile;
}

- (void)userDomainConceptManager:(id)manager didAddUserDomainConcepts:(id)concepts
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  conceptsCopy = concepts;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [conceptsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(conceptsCopy);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firstOntologyCoding = [v13 firstOntologyCoding];

          if (firstOntologyCoding)
          {
            ++v10;
          }
        }
      }

      v9 = [conceptsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
    if (v10 >= 1)
    {
      profile = [managerCopy profile];
      [(HDMedicationCountProvider *)self _updateOntologyBackedMedicationCountWithAddedCount:v10 profile:profile];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __57__HDMedicationCountProvider__updateCountForReadyProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  os_unfair_lock_lock(v5 + 4);
  v7 = [(HDMedicationCountProvider *)*(a1 + 32) _lock_lookupAndUpdateCountForProfile:v6 transaction:a3 error:?];

  *(*(*(a1 + 48) + 8) + 24) = v7;
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  return *(*(*(a1 + 48) + 8) + 24) != -1;
}

+ (uint64_t)_medicationCountForCurrentCountNumber:(uint64_t)number addedCount:
{
  v4 = a2;
  objc_opt_self();
  if (number)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  if (number == 1)
  {
    v5 = 1;
  }

  if (number >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue > v6)
    {
      v6 = integerValue;
    }
  }

  return v6;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)_monitorMedicationCountsInProfile:(uint64_t)profile
{
  if (profile)
  {
    v3 = a2;
    os_unfair_lock_lock((profile + 16));
    v4 = *(profile + 24);
    if (!v4)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v6 = *(profile + 24);
      *(profile + 24) = weakToStrongObjectsMapTable;

      v4 = *(profile + 24);
    }

    [v4 setObject:&unk_2863C29C0 forKey:v3];
    os_unfair_lock_unlock((profile + 16));
    userDomainConceptManager = [v3 userDomainConceptManager];

    [userDomainConceptManager addUserDomainConceptObserver:profile queue:0];
  }
}

- (uint64_t)_updateAndReturnCountForProfile:(uint64_t)profile
{
  v3 = a2;
  if (profile)
  {
    os_unfair_lock_assert_not_owner((profile + 16));
    if ([(HDMedicationCountProvider *)profile _isReadyProfile:v3])
    {
      profile = [(HDMedicationCountProvider *)profile _updateCountForReadyProfile:v3];
    }

    else
    {
      profile = -1;
    }
  }

  return profile;
}

- (uint64_t)_getAndSetReadyProfile:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    os_unfair_lock_lock((v2 + 16));
    v4 = [*(v2 + 32) objectForKey:v3];
    bOOLValue = [v4 BOOLValue];

    [*(v2 + 32) setObject:MEMORY[0x277CBEC38] forKey:v3];
    os_unfair_lock_unlock((v2 + 16));
    return bOOLValue;
  }

  return result;
}

- (void)_updateOntologyBackedMedicationCountWithAddedCount:(void *)count profile:
{
  if (self)
  {
    countCopy = count;
    os_unfair_lock_lock(self + 4);
    [(HDMedicationCountProvider *)self _lock_updateOntologyBackedMedicationCountWithAddedCount:a2 profile:countCopy];
    os_unfair_lock_unlock(self + 4);
    [(HDMedicationCountProvider *)self _updateAndReturnCountForProfile:countCopy];
  }
}

- (void)userDomainConceptManager:(id)manager didDeleteUserDomainConcepts:(id)concepts
{
  profile = [manager profile];
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_ontologyBackedMedicationCountByProfile setObject:&unk_2863C29C0 forKey:profile];
  os_unfair_lock_unlock(&self->_lock);
  [(HDMedicationCountProvider *)self _updateAndReturnCountForProfile:profile];
}

- (uint64_t)_isReadyProfile:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    os_unfair_lock_lock((v2 + 16));
    v4 = [*(v2 + 32) objectForKey:v3];

    bOOLValue = [v4 BOOLValue];
    os_unfair_lock_unlock((v2 + 16));
    return bOOLValue;
  }

  return result;
}

- (uint64_t)_lock_lookupAndUpdateCountForProfile:(void *)profile transaction:(uint64_t)transaction error:
{
  v7 = a2;
  if (self)
  {
    v8 = [(HDMedicationCountProvider *)self _countOfOntologyBackedMedicationsForTransaction:profile error:transaction];
    v9 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
      if (integerValue)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      if (integerValue == 1)
      {
        v13 = 1;
      }

      if (integerValue >= 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = v13;
      }

      v14 = [*(self + 24) objectForKey:v7];
      [(HDMedicationCountProvider *)self _lock_updateCountAndNotifyIfRequiredForProfile:v7 currentCountNumber:v14 newCount:v10];
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_lock_updateOntologyBackedMedicationCountWithAddedCount:(void *)count profile:
{
  if (self)
  {
    countCopy = count;
    os_unfair_lock_assert_owner((self + 16));
    v7 = [*(self + 24) objectForKey:countCopy];
    v6 = [HDMedicationCountProvider _medicationCountForCurrentCountNumber:v7 addedCount:a2];
    [(HDMedicationCountProvider *)self _lock_updateCountAndNotifyIfRequiredForProfile:countCopy currentCountNumber:v7 newCount:v6];
  }
}

- (id)_countOfOntologyBackedMedicationsForTransaction:(uint64_t)transaction error:
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v4 = MEMORY[0x277D10B20];
    v5 = MEMORY[0x277CCDB50];
    v6 = a2;
    medicationUserDomainConceptTypeIdentifier = [v5 medicationUserDomainConceptTypeIdentifier];
    v8 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
    v15[0] = v8;
    v9 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10520] equalToValue:*MEMORY[0x277CCC348]];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v4 predicateMatchingAllPredicates:v10];

    v12 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v11 options:0 transaction:v6 error:transaction];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_lock_updateCountAndNotifyIfRequiredForProfile:(void *)profile currentCountNumber:(uint64_t)number newCount:
{
  v7 = a2;
  profileCopy = profile;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 16));
    integerValue = [profileCopy integerValue];
    if (integerValue)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (integerValue == 1)
    {
      v10 = 1;
    }

    if (integerValue >= 2)
    {
      v10 = 2;
    }

    if (v10 != number)
    {
      v11 = *(self + 24);
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:number];
      [v11 setObject:v12 forKey:v7];

      v13 = *(self + 8);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __104__HDMedicationCountProvider__lock_updateCountAndNotifyIfRequiredForProfile_currentCountNumber_newCount___block_invoke;
      v14[3] = &unk_2796CDED0;
      v14[4] = self;
      v15 = v7;
      numberCopy = number;
      [v13 notifyObservers:v14];
    }
  }
}

- (void)_updateCountForReadyProfile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to determine if profile has ontology backed medications: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end