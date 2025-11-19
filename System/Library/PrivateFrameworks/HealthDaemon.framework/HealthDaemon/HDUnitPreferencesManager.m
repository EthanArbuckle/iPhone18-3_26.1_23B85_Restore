@interface HDUnitPreferencesManager
- (BOOL)removePreferredUnitForType:(id)a3 error:(id *)a4;
- (BOOL)setPreferredUnit:(id)a3 forType:(id)a4 error:(id *)a5;
- (HDUnitPreferencesManager)initWithProfile:(id)a3;
- (__CFString)_domainForVersion:(__CFString *)a1;
- (id)_lock_generateVersionedUnitPreferencesWithError:(uint64_t)a1;
- (id)_lock_unitForType:(void *)a3 versionedUnitPreferences:(uint64_t)a4 version:(void *)a5 locale:;
- (id)_stringFromQuantityType:(void *)a1;
- (id)preferredUnitForType:(id)a3 error:(id *)a4;
- (id)unitPreferencesDictionaryForTypes:(id)a3 version:(int64_t)a4 authorizationOracle:(id)a5 error:(id *)a6;
- (uint64_t)_lock_notifyObserversWithUnitPreferences;
- (void)_localeDidChange:(id)a3;
- (void)_lock_setUnit:(void *)a3 forType:;
- (void)dealloc;
- (void)setPreferredUnitToDefaultIfNotSetForType:(id)a3;
- (void)unitTesting_resetUnits;
@end

@implementation HDUnitPreferencesManager

- (HDUnitPreferencesManager)initWithProfile:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDUnitPreferencesManager;
  v5 = [(HDUnitPreferencesManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = HKLogInfrastructure();
    v11 = [v7 initWithName:v9 loggingCategory:v10];
    observers = v6->_observers;
    v6->_observers = v11;

    v6->_lock._os_unfair_lock_opaque = 0;
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v6 selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = HDUnitPreferencesManager;
  [(HDUnitPreferencesManager *)&v4 dealloc];
}

- (id)unitPreferencesDictionaryForTypes:(id)a3 version:(int64_t)a4 authorizationOracle:(id)a5 error:(id *)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v51;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 format:{@"Object (%@) is not of class %@", v15, objc_opt_class()}];
          v24 = 0;
          v23 = v10;
          goto LABEL_39;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = v10;
  v17 = v9;
  v18 = v17;
  v19 = self;
  if (!self)
  {
    v23 = 0;
    goto LABEL_21;
  }

  v54 = 0;
  v20 = [v17 isAuthorizationStatusDeterminedForTypes:v16 error:&v54];
  v21 = v54;
  v22 = v21;
  if (v20)
  {
    v23 = [v18 authorizationStatusRecordsForTypes:v16 error:a6];
    goto LABEL_16;
  }

  if (!v21)
  {
    v22 = [MEMORY[0x277CCA9B8] hk_error:5 description:@"Authorization status is not determined for all types provided."];
    v23 = 0;
LABEL_16:
    v25 = v22;
    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v25 = v21;
  v23 = 0;
LABEL_17:
  if (a6)
  {
    v26 = v25;
    *a6 = v25;
  }

  else
  {
    _HKLogDroppedError();
  }

LABEL_21:
  if (!v23)
  {
    v24 = 0;
    goto LABEL_39;
  }

  os_unfair_lock_lock(&self->_lock);
  v41 = v10;
  v42 = v9;
  if (self)
  {
    versionedUnitPreferences = self->_versionedUnitPreferences;
    if (versionedUnitPreferences)
    {
      v43 = versionedUnitPreferences;
LABEL_27:
      v30 = [MEMORY[0x277CBEAF8] currentLocale];
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v31 = v16;
      v32 = [v31 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v47;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v46 + 1) + 8 * j);
            v37 = [v23 objectForKey:v36];
            if ([v37 canRead])
            {
              [(HDUnitPreferencesManager *)self _lock_unitForType:v36 versionedUnitPreferences:v43 version:a4 locale:v30];
            }

            else
            {
              _HKGenerateDefaultUnitForQuantityTypeWithVersion();
            }
            v38 = ;
            [v24 setObject:v38 forKeyedSubscript:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v33);
      }

      v19 = self;
      goto LABEL_38;
    }

    v28 = [(HDUnitPreferencesManager *)self _lock_generateVersionedUnitPreferencesWithError:a6];
    v29 = self->_versionedUnitPreferences;
    self->_versionedUnitPreferences = v28;

    v43 = self->_versionedUnitPreferences;
    if (v43)
    {
      goto LABEL_27;
    }
  }

  v43 = 0;
  v24 = 0;
LABEL_38:
  os_unfair_lock_unlock(&v19->_lock);

  v10 = v41;
  v9 = v42;
LABEL_39:

  v39 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_lock_unitForType:(void *)a3 versionedUnitPreferences:(uint64_t)a4 version:(void *)a5 locale:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    if (a4 < 0)
    {
LABEL_7:
      a1 = _HKGenerateDefaultUnitForQuantityTypeWithVersion();
    }

    else
    {
      v12 = a4;
      while (1)
      {
        v13 = [v10 objectAtIndexedSubscript:v12];
        a1 = [v13 objectForKeyedSubscript:v9];

        if (a1)
        {
          break;
        }

        if (v12-- <= 0)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return a1;
}

- (BOOL)setPreferredUnit:(id)a3 forType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 isCompatibleWithUnit:v8];
  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    [(HDUnitPreferencesManager *)self _lock_setUnit:v8 forType:v9];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"Unit (%@) is not compatible with the provided type (%@)", v8, v9}];
  }

  return v10;
}

- (void)_lock_setUnit:(void *)a3 forType:
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = a3;
  v5 = _HKUnitPreferencesVersionToUnitDictionaryForQuantityType();
  v6 = v4;
  v7 = [(HDUnitPreferencesManager *)a1 _lock_generateVersionedUnitPreferencesWithError:?];
  v8 = [v7 mutableCopy];

  v9 = 0x277CCA000uLL;
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndex:v10];
      v12 = [v11 mutableCopy];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
      v14 = [v5 objectForKeyedSubscript:v13];

      if (v14)
      {
        [v12 setObject:v14 forKey:v6];
      }

      else
      {
        [v12 removeObjectForKey:v6];
      }

      [v8 setObject:v12 atIndexedSubscript:v10];

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  v15 = *(a1 + 16);
  *(a1 + 16) = v8;

  v35 = v5;
  v33 = v6;
  v34 = [HDUnitPreferencesManager _stringFromQuantityType:v6];
  v16 = 0;
  for (i = 0; i != 3; ++i)
  {
    v18 = [(HDUnitPreferencesManager *)a1 _domainForVersion:?];
    v19 = [*(v9 + 2992) numberWithInteger:i];
    v20 = [v35 objectForKeyedSubscript:v19];

    if (v20)
    {
      [v20 unitString];
      v22 = v21 = v9;
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v37 = v16;
      v24 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity setString:v22 forKey:v34 domain:v18 category:104 profile:WeakRetained error:&v37];
      v25 = v37;

      v9 = v21;
      v16 = v25;
      if (v24)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v26 = objc_loadWeakRetained((a1 + 8));
      v36 = v16;
      v27 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity setString:0 forKey:v34 domain:v18 category:104 profile:v26 error:&v36];
      v28 = v36;

      v16 = v28;
      if (v27)
      {
        goto LABEL_16;
      }
    }

    _HKInitializeLogging();
    v29 = HKLogInfrastructure();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138543618;
      v39 = v30;
      v40 = 2114;
      v41 = v16;
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Error persisting unit preferences: %{public}@", buf, 0x16u);
    }

LABEL_16:
  }

  [(HDUnitPreferencesManager *)a1 _lock_notifyObserversWithUnitPreferences];
  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)removePreferredUnitForType:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = v6;
  v8 = v7;
  if (self)
  {
    v9 = [HDUnitPreferencesManager _stringFromQuantityType:v7];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v11 = [WeakRetained database];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __67__HDUnitPreferencesManager__lock_removePreferredUnitForType_error___block_invoke;
    v23 = &unk_278613218;
    v24 = self;
    v12 = v9;
    v25 = v12;
    v13 = [(HDHealthEntity *)HDProtectedKeyValueEntity performWriteTransactionWithHealthDatabase:v11 error:a4 block:&v20];

    if (v13)
    {
      v14 = [(NSArray *)self->_versionedUnitPreferences mutableCopy:v20];
      if ([(NSArray *)v14 count])
      {
        v15 = 0;
        do
        {
          v16 = [(NSArray *)v14 objectAtIndexedSubscript:v15];
          v17 = [v16 mutableCopy];

          [v17 removeObjectForKey:v8];
          [(NSArray *)v14 setObject:v17 atIndexedSubscript:v15];

          ++v15;
        }

        while (v15 < [(NSArray *)v14 count]);
      }

      versionedUnitPreferences = self->_versionedUnitPreferences;
      self->_versionedUnitPreferences = v14;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v13;
}

- (void)setPreferredUnitToDefaultIfNotSetForType:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = [(HDUnitPreferencesManager *)self _lock_generateVersionedUnitPreferencesWithError:?];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = v16;
      if (self)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v6 = v6;
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v6);
              }

              v12 = [*(*(&v17 + 1) + 8 * i) objectForKey:v7];

              if (v12)
              {

                goto LABEL_15;
              }
            }

            v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = _HKGenerateDefaultUnitForQuantityTypeWithVersion();

      [(HDUnitPreferencesManager *)self _lock_setUnit:v14 forType:v7];
    }

LABEL_15:
    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_lock_generateVersionedUnitPreferencesWithError:(uint64_t)a1
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = 0;
  while (1)
  {
    v5 = [(HDUnitPreferencesManager *)a1 _domainForVersion:v4];
    v23 = 0;
    v6 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v8 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity allValuesForDomain:v6 category:104 profile:WeakRetained error:&v23];

    if (v8)
    {
      v9 = MEMORY[0x277CBEB38];
      v10 = v8;
      v11 = objc_alloc_init(v9);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __77__HDUnitPreferencesManager__unitPreferencesDictionaryFromKeyValueDictionary___block_invoke;
      v25 = &unk_27861AE68;
      v26 = a1;
      v12 = v11;
      v27 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:buf];

      v13 = v27;
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v23;
    v16 = v15;
    if (!v14)
    {
      break;
    }

    [v3 addObject:v14];
LABEL_9:

    if (++v4 == 3)
    {
      v17 = [v3 copy];
      goto LABEL_17;
    }
  }

  if (!v15)
  {
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v18 = HKLogInfrastructure();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    *&buf[4] = a1;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Received error when getting unit preferences for domain %{public}@: %{public}@", buf, 0x20u);
  }

  if (a2)
  {
    v19 = v16;
    *a2 = v16;
  }

  else
  {
    _HKLogDroppedError();
  }

  v17 = 0;
LABEL_17:

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)preferredUnitForType:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(HDUnitPreferencesManager *)self _lock_generateVersionedUnitPreferencesWithError:a4];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [(HDUnitPreferencesManager *)self _lock_unitForType:v6 versionedUnitPreferences:v7 version:2 locale:v8];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)unitTesting_resetUnits
{
  os_unfair_lock_lock(&self->_lock);
  versionedUnitPreferences = self->_versionedUnitPreferences;
  self->_versionedUnitPreferences = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (uint64_t)_lock_notifyObserversWithUnitPreferences
{
  if (result)
  {
    v1 = *(result + 24);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __68__HDUnitPreferencesManager__lock_notifyObserversWithUnitPreferences__block_invoke;
    v2[3] = &unk_27861AE40;
    v2[4] = result;
    return [v1 notifyObservers:v2];
  }

  return result;
}

- (id)_stringFromQuantityType:(void *)a1
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 code];

  v5 = [v3 initWithFormat:@"%ld", v4];

  return v5;
}

BOOL __67__HDUnitPreferencesManager__lock_removePreferredUnitForType_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v21 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v7 = [(HDUnitPreferencesManager *)*(a1 + 32) _domainForVersion:v6];
    v8 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v10 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity setString:0 forKey:v8 domain:v7 category:104 profile:WeakRetained error:a3];

    if (!v10)
    {
      break;
    }

    v5 = v6++ > 1;
    if (v6 == 3)
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  _HKInitializeLogging();
  v11 = HKLogInfrastructure();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = *a3;
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v16;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Error removing unit preferences: %{public}@", &v17, 0x16u);
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (__CFString)_domainForVersion:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2)
  {
    a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", @"Version", a2];
    v2 = vars8;
    goto LABEL_4;
  }

  a1 = &stru_283BF39C8;

  return a1;
}

void __77__HDUnitPreferencesManager__unitPreferencesDictionaryFromKeyValueDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 32))
    {
      v6 = MEMORY[0x277CCAC80];
      v7 = v19;
      v8 = [[v6 alloc] initWithString:v7];

      *buf = -1;
      if ([v8 scanInteger:buf] && (_HKValidDataTypeCode() & 1) != 0)
      {
        v9 = [MEMORY[0x277CCD830] _quantityTypeWithCode:*buf];

        if (v9)
        {
          v10 = *(a1 + 32);
          v11 = v5;
          v12 = v9;
          if (v10)
          {
            v13 = [MEMORY[0x277CCDAB0] unitFromString:v11];
            if ([v12 isCompatibleWithUnit:v13])
            {
LABEL_14:

              if (v13)
              {
                [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];
              }

              goto LABEL_19;
            }

            _HKInitializeLogging();
            v14 = HKLogInfrastructure();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

            if (v15)
            {
              v16 = HKLogInfrastructure();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v18 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v18;
                v21 = 2112;
                v22 = v11;
                v23 = 2112;
                v24 = v12;
                _os_log_debug_impl(&dword_228986000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Unit string (%@) not compatible with quantity type (%@)", buf, 0x20u);
              }
            }
          }

          v13 = 0;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v12 = 0;
LABEL_19:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_localeDidChange:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HDUnitPreferencesManager *)self _lock_notifyObserversWithUnitPreferences];

  os_unfair_lock_unlock(&self->_lock);
}

@end