@interface HDDrugInteractionFactorStateProvider
- (HDDaemon)daemon;
- (HDDrugInteractionFactorStateProvider)init;
- (HDDrugInteractionFactorStateProvider)initWithDaemon:(id)a3;
- (int64_t)hasDrugInteractionFactorInProfile:(id)a3;
- (uint64_t)_lock_initalizeDrugInteractionFactorStates;
- (uint64_t)_lock_startMonitoringKeyValueDomain;
- (uint64_t)_lock_updateDrugInteractionFactorForKey:(char)a3 newValue:;
- (uint64_t)_notifyObserversWithHasDrugInteractionFactor:(uint64_t)result;
- (void)_lock_updateChangeForKey:(uint64_t)a1;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)monitorDrugInteractionFactorsInProfile:(id)a3;
@end

@implementation HDDrugInteractionFactorStateProvider

- (HDDrugInteractionFactorStateProvider)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDrugInteractionFactorStateProvider)initWithDaemon:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDDrugInteractionFactorStateProvider;
  v5 = [(HDDrugInteractionFactorStateProvider *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogHealthOntology();
    v9 = [v7 initWithName:@"HDDrugInteractionFactorStateObserver" loggingCategory:v8];
    observers = v6->_observers;
    v6->_observers = v9;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)monitorDrugInteractionFactorsInProfile:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_medicationsKeyValueDomain)
  {
    v4 = [MEMORY[0x277D10718] hdmd_defaultDomainWithProfile:v6];
    lock_medicationsKeyValueDomain = self->_lock_medicationsKeyValueDomain;
    self->_lock_medicationsKeyValueDomain = v4;

    [(HDDrugInteractionFactorStateProvider *)self _lock_startMonitoringKeyValueDomain];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __85__HDDrugInteractionFactorStateProvider__notifyObserversWithHasDrugInteractionFactor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 40));
  v5 = [WeakRetained primaryProfile];
  [v4 drugInteractionFactorStateProvider:v3 didObserveChangeForProfile:v5 hasDrugInteractionFactor:*(a1 + 40)];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = OUTLINED_FUNCTION_0_5(self);
  os_unfair_lock_lock(v3);
  if (v2)
  {
    os_unfair_lock_assert_owner(v2 + 4);
    [OUTLINED_FUNCTION_1_6() stopObservation:?];
  }

  os_unfair_lock_unlock(v2 + 4);
  v4.receiver = v2;
  v4.super_class = HDDrugInteractionFactorStateProvider;
  [(HDDrugInteractionFactorStateProvider *)&v4 dealloc];
}

- (uint64_t)_lock_startMonitoringKeyValueDomain
{
  if (result)
  {
    v2 = OUTLINED_FUNCTION_0_5(result);
    os_unfair_lock_assert_owner(v2);
    os_unfair_lock_assert_owner(v1 + 4);
    [OUTLINED_FUNCTION_1_6() startObservation:?];

    return [(HDDrugInteractionFactorStateProvider *)v1 _lock_initalizeDrugInteractionFactorStates];
  }

  return result;
}

- (int64_t)hasDrugInteractionFactorInProfile:(id)a3
{
  v4 = OUTLINED_FUNCTION_0_5(self);
  os_unfair_lock_lock(v4);
  if (v3)
  {
    os_unfair_lock_assert_owner((v3 + 16));
    if (*(v3 + 32) & 1) != 0 || (*(v3 + 33))
    {
      v5 = 1;
    }

    else
    {
      v5 = *(v3 + 34);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 16));
  if (v6)
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

- (uint64_t)_lock_initalizeDrugInteractionFactorStates
{
  if (result)
  {
    v2 = OUTLINED_FUNCTION_0_5(result);
    os_unfair_lock_assert_owner(v2);
    *(v1 + 32) = [*(v1 + 24) hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11418]];
    *(v1 + 33) = [*(v1 + 24) hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11450]];
    result = [*(v1 + 24) hdmd_numberValueAsBoolForKey:*MEMORY[0x277D114C0]];
    *(v1 + 34) = result;
  }

  return result;
}

- (void)didUpdateKeyValueDomain:(id)a3
{
  v4 = OUTLINED_FUNCTION_0_5(self);
  os_unfair_lock_lock(v4);
  if (v3)
  {
    os_unfair_lock_assert_owner((v3 + 16));
    if (*(v3 + 32) & 1) != 0 || (*(v3 + 33))
    {
      v5 = 1;
    }

    else
    {
      v5 = *(v3 + 34);
    }
  }

  else
  {
    v5 = 0;
  }

  [(HDDrugInteractionFactorStateProvider *)v3 _lock_updateChangeForKey:?];
  [(HDDrugInteractionFactorStateProvider *)v3 _lock_updateChangeForKey:?];
  [(HDDrugInteractionFactorStateProvider *)v3 _lock_updateChangeForKey:?];
  v6 = (v3 + 16);
  if (v3)
  {
    os_unfair_lock_assert_owner(v6);
    if ((*(v3 + 32) & 1) != 0 || *(v3 + 33) == 1)
    {
      os_unfair_lock_unlock((v3 + 16));
      if (v5)
      {
        return;
      }

      v7 = 1;
    }

    else
    {
      v7 = *(v3 + 34);
      os_unfair_lock_unlock((v3 + 16));
      if ((v5 & 1) == v7)
      {
        return;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(v6);
    if ((v5 & 1) == 0)
    {
      return;
    }

    v7 = 0;
  }

  [(HDDrugInteractionFactorStateProvider *)v3 _notifyObserversWithHasDrugInteractionFactor:v7];
}

- (void)_lock_updateChangeForKey:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = a2;
    -[HDDrugInteractionFactorStateProvider _lock_updateDrugInteractionFactorForKey:newValue:](a1, v4, [v3 hdmd_numberValueAsBoolForKey:v4]);
  }
}

- (uint64_t)_notifyObserversWithHasDrugInteractionFactor:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __85__HDDrugInteractionFactorStateProvider__notifyObserversWithHasDrugInteractionFactor___block_invoke;
    v3[3] = &unk_2796CE138;
    v3[4] = result;
    v3[5] = a2;
    return [v2 notifyObservers:v3];
  }

  return result;
}

- (uint64_t)_lock_updateDrugInteractionFactorForKey:(char)a3 newValue:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v9 = v5;
    os_unfair_lock_assert_owner(a1 + 4);
    v6 = v9;
    if (*MEMORY[0x277D11418] == v9 || *MEMORY[0x277D11418] && (v5 = [v9 isEqualToString:?], v6 = v9, (v5 & 1) != 0))
    {
      v7 = 32;
LABEL_14:
      *(&a1->_os_unfair_lock_opaque + v7) = a3;
      goto LABEL_15;
    }

    if (*MEMORY[0x277D11450] == v6 || *MEMORY[0x277D11450] && (v5 = [v6 isEqualToString:?], v6 = v9, (v5 & 1) != 0))
    {
      v7 = 33;
      goto LABEL_14;
    }

    if (*MEMORY[0x277D114C0] == v6 || *MEMORY[0x277D114C0] && (v5 = [v6 isEqualToString:?], v6 = v9, v5))
    {
      v7 = 34;
      goto LABEL_14;
    }
  }

LABEL_15:

  return MEMORY[0x2821F96F8](v5, v6);
}

@end