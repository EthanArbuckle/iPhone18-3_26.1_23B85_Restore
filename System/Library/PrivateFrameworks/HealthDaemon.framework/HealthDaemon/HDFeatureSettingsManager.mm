@interface HDFeatureSettingsManager
- (BOOL)_performWriteTransactionAndNotifyObserversWithError:(uint64_t)a1 suppressNotificationsToObserver:(uint64_t)a2 block:(void *)a3 inaccessibilityHandler:(void *)a4;
- (BOOL)removeFeatureSettingsValueForKey:(id)a3 featureIdentifier:(id)a4 error:(id *)a5;
- (BOOL)resetFeatureSettingsForFeatureIdentifier:(id)a3 suppressNotificationsToObserver:(id)a4 error:(id *)a5;
- (BOOL)setFeatureSettingsData:(id)a3 forKey:(id)a4 featureIdentifier:(id)a5 error:(id *)a6;
- (BOOL)setFeatureSettingsNumber:(id)a3 forKey:(id)a4 featureIdentifier:(id)a5 suppressNotificationsToObserver:(id)a6 error:(id *)a7;
- (BOOL)setFeatureSettingsString:(id)a3 forKey:(id)a4 featureIdentifier:(id)a5 error:(id *)a6;
- (BOOL)setFeatureSettingsValues:(id)a3 featureIdentifier:(id)a4 suppressNotificationsToObserver:(id)a5 error:(id *)a6;
- (HDFeatureSettingsManager)initWithProfile:(id)a3;
- (id)_featureSettingsKeyValueDomainWithFeatureIdentifier:(id *)a1;
- (id)featureSettingsForFeatureIdentifier:(id)a3 error:(id *)a4;
- (uint64_t)_setFeatureSettingsValue:(void *)a3 forKey:(void *)a4 keyValueDomain:(void *)a5 error:;
- (void)_lock_unregisterObserver:(void *)a3 featureIdentifier:;
- (void)_notifyObserversOfFeatureIdentifier:(void *)a3 excludingObserver:;
- (void)_settingsDidSyncNotification:(id)a3;
- (void)invalidateAndWait;
- (void)registerObserver:(id)a3 featureIdentifier:(id)a4 queue:(id)a5;
- (void)unregisterObserver:(id)a3;
- (void)unregisterObserver:(id)a3 featureIdentifier:(id)a4;
@end

@implementation HDFeatureSettingsManager

- (HDFeatureSettingsManager)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDFeatureSettingsManager;
  v5 = [(HDFeatureSettingsManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByFeatureIdentifier = v6->_observersByFeatureIdentifier;
    v6->_observersByFeatureIdentifier = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel__settingsDidSyncNotification_ name:@"HDUnprotectedFeatureSettingsSyncEntityDidSync" object:v4];
  }

  return v6;
}

- (void)invalidateAndWait
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [v4 removeObserver:self name:@"HDUnprotectedFeatureSettingsSyncEntityDidSync" object:WeakRetained];
}

- (id)featureSettingsForFeatureIdentifier:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__HDFeatureSettingsManager_featureSettingsForFeatureIdentifier_error___block_invoke;
  v18[3] = &unk_278628C58;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  LOBYTE(v9) = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity enumerateValuesForDomain:v7 category:4 keys:0 profile:WeakRetained error:&v21 usingBlock:v18];

  v13 = v21;
  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x277CCD450]) initWithDictionary:v11 modificationDatesByKey:v12];
  }

  else
  {
    v15 = v13;
    if (v15)
    {
      if (a4)
      {
        v16 = v15;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  return v14;
}

void __70__HDFeatureSettingsManager_featureSettingsForFeatureIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
    v13 = [v10 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
    }
  }

  if (v11)
  {
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];
  }
}

- (BOOL)setFeatureSettingsValues:(id)a3 featureIdentifier:(id)a4 suppressNotificationsToObserver:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HDFeatureSettingsManager *)&self->super.isa _featureSettingsKeyValueDomainWithFeatureIdentifier:v11];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__160;
  v36 = __Block_byref_object_dispose__160;
  v37 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__HDFeatureSettingsManager_setFeatureSettingsValues_featureIdentifier_suppressNotificationsToObserver_error___block_invoke;
  block[3] = &unk_278628CA8;
  v30 = &v38;
  v31 = &v32;
  block[4] = self;
  v15 = v12;
  v26 = v15;
  v16 = v13;
  v27 = v16;
  v17 = v10;
  v28 = v17;
  v18 = v11;
  v29 = v18;
  dispatch_sync(queue, block);
  v19 = v33[5];
  if (v19)
  {
    v20 = v19;
    v21 = v20;
    if (a6)
    {
      v22 = v20;
      *a6 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v23 = *(v39 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v23;
}

- (id)_featureSettingsKeyValueDomainWithFeatureIdentifier:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [HDKeyValueDomain alloc];
    WeakRetained = objc_loadWeakRetained(v2 + 1);
    v2 = [(HDKeyValueDomain *)v4 initWithCategory:4 domainName:v3 profile:WeakRetained];
  }

  return v2;
}

void __109__HDFeatureSettingsManager_setFeatureSettingsValues_featureIdentifier_suppressNotificationsToObserver_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 80) + 8);
  v14 = *(v2 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__HDFeatureSettingsManager_setFeatureSettingsValues_featureIdentifier_suppressNotificationsToObserver_error___block_invoke_2;
  v9[3] = &unk_278628C80;
  v10 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = *(a1 + 64);
  v7 = v8;
  v13 = v8;
  LOBYTE(v3) = [HDFeatureSettingsManager _performWriteTransactionAndNotifyObserversWithError:v3 suppressNotificationsToObserver:&v14 block:v4 inaccessibilityHandler:v9];
  objc_storeStrong((v2 + 40), v14);
  *(*(*(a1 + 72) + 8) + 24) = v3;
}

id __109__HDFeatureSettingsManager_setFeatureSettingsValues_featureIdentifier_suppressNotificationsToObserver_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v55 = 0;
  v7 = [v6 allValuesWithError:&v55];
  v8 = v55;
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      v10 = v8;
      v11 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }

    goto LABEL_38;
  }

  v43 = a3;
  v45 = v5;
  v12 = *(a1 + 40);
  v44 = v7;
  v13 = [v7 mutableCopy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v51 objects:v56 count:16];
  v46 = v14;
  v47 = v13;
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v52;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v51 + 1) + 8 * i);
        v21 = [v13 objectForKeyedSubscript:{v20, v43}];
        v22 = [v14 objectForKeyedSubscript:v20];
        v23 = v22;
        if (v21)
        {
          if ([v22 isEqual:v21])
          {
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          else
          {
            v28 = *(a1 + 48);
            v29 = *(a1 + 32);
            v50 = v17;
            v30 = [(HDFeatureSettingsManager *)v28 _setFeatureSettingsValue:v23 forKey:v20 keyValueDomain:v29 error:&v50];
            v31 = v50;

            *(*(*(a1 + 64) + 8) + 24) = v30;
            v17 = v31;
            v14 = v46;
            v13 = v47;
          }

          [v13 removeObjectForKey:v20];
        }

        else
        {
          v24 = *(a1 + 48);
          v25 = *(a1 + 32);
          v49 = v17;
          v26 = [(HDFeatureSettingsManager *)v24 _setFeatureSettingsValue:v23 forKey:v20 keyValueDomain:v25 error:&v49];
          v27 = v49;

          *(*(*(a1 + 64) + 8) + 24) = v26;
          v17 = v27;
          v14 = v46;
          v13 = v47;
        }

        if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
        {
          v32 = v17;
          v9 = v32;
          v7 = v44;
          v5 = v45;
          if (v32)
          {
            if (v43)
            {
              v33 = v32;
              *v43 = v9;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v38 = v46;
          v11 = 0;
          goto LABEL_37;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

  if (![v13 count])
  {
    v9 = v17;
    goto LABEL_28;
  }

  v34 = objc_alloc(MEMORY[0x277CBEB98]);
  v35 = [v13 allKeys];
  v36 = [v34 initWithArray:v35];

  v37 = *(a1 + 32);
  v48 = v17;
  LOBYTE(v34) = [v37 removeValuesForKeys:v36 error:&v48];
  v9 = v48;

  *(*(*(a1 + 64) + 8) + 24) = v34;
  if (*(*(*(a1 + 64) + 8) + 24))
  {

LABEL_28:
    v7 = v44;
    v5 = v45;
    v11 = *(a1 + 56);
    goto LABEL_36;
  }

  v39 = v9;
  v9 = v39;
  v7 = v44;
  v5 = v45;
  if (v39)
  {
    if (v43)
    {
      v40 = v39;
      *v43 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = 0;
LABEL_36:
  v38 = v46;
LABEL_37:

LABEL_38:
  v41 = *MEMORY[0x277D85DE8];

  return v11;
}

- (uint64_t)_setFeatureSettingsValue:(void *)a3 forKey:(void *)a4 keyValueDomain:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      a1 = [v11 setData:v9 forKey:v10 error:&v18];
      v12 = v18;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = 0;
        a1 = [v11 setNumber:v9 forKey:v10 error:&v17];
        v12 = v17;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__setFeatureSettingsValue_forKey_keyValueDomain_error_ format:{@"Value (%@) has an invalid type, expected NSData, NSNumber or NSString.", v9}];
          a1 = 0;
          if (v13)
          {
LABEL_9:
            if (a5)
            {
              v14 = v13;
              *a5 = v13;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

LABEL_12:

          goto LABEL_13;
        }

        v16 = 0;
        a1 = [v11 setString:v9 forKey:v10 error:&v16];
        v12 = v16;
      }
    }

    v13 = v12;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:

  return a1;
}

- (BOOL)_performWriteTransactionAndNotifyObserversWithError:(uint64_t)a1 suppressNotificationsToObserver:(uint64_t)a2 block:(void *)a3 inaccessibilityHandler:(void *)a4
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__160;
    v17[4] = __Block_byref_object_dispose__160;
    v18 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [WeakRetained database];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __141__HDFeatureSettingsManager__performWriteTransactionAndNotifyObserversWithError_suppressNotificationsToObserver_block_inaccessibilityHandler___block_invoke;
    v13[3] = &unk_278628D20;
    v16 = v17;
    v15 = v8;
    v13[4] = a1;
    v14 = v7;
    v11 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:v10 error:a2 block:v13 inaccessibilityHandler:0];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)setFeatureSettingsData:(id)a3 forKey:(id)a4 featureIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HDFeatureSettingsManager *)&self->super.isa _featureSettingsKeyValueDomainWithFeatureIdentifier:v12];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__160;
  v34 = __Block_byref_object_dispose__160;
  v35 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HDFeatureSettingsManager_setFeatureSettingsData_forKey_featureIdentifier_error___block_invoke;
  block[3] = &unk_278622020;
  v28 = &v36;
  v15 = v13;
  v25 = v15;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v29 = &v30;
  dispatch_sync(queue, block);
  v18 = v31[5];
  if (v18)
  {
    v19 = v18;
    v20 = v19;
    if (a6)
    {
      v21 = v19;
      *a6 = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (*(v37 + 24) == 1)
  {
    [(HDFeatureSettingsManager *)self _notifyObserversOfFeatureIdentifier:v12 excludingObserver:0];
    v22 = *(v37 + 24);
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v22 & 1;
}

void __82__HDFeatureSettingsManager_setFeatureSettingsData_forKey_featureIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 setData:v3 forKey:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (void)_notifyObserversOfFeatureIdentifier:(void *)a3 excludingObserver:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__HDFeatureSettingsManager__notifyObserversOfFeatureIdentifier_excludingObserver___block_invoke;
    v8[3] = &unk_278628D48;
    v9 = v6;
    v10 = a1;
    v11 = v5;
    [v7 notifyObservers:v8];

    os_unfair_lock_unlock((a1 + 24));
  }
}

- (BOOL)setFeatureSettingsNumber:(id)a3 forKey:(id)a4 featureIdentifier:(id)a5 suppressNotificationsToObserver:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(HDFeatureSettingsManager *)&self->super.isa _featureSettingsKeyValueDomainWithFeatureIdentifier:v14];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__160;
  v37 = __Block_byref_object_dispose__160;
  v38 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__HDFeatureSettingsManager_setFeatureSettingsNumber_forKey_featureIdentifier_suppressNotificationsToObserver_error___block_invoke;
  block[3] = &unk_278622020;
  v31 = &v39;
  v18 = v16;
  v28 = v18;
  v19 = v12;
  v29 = v19;
  v20 = v13;
  v30 = v20;
  v32 = &v33;
  dispatch_sync(queue, block);
  v21 = v34[5];
  if (v21)
  {
    v22 = v21;
    v23 = v22;
    if (a7)
    {
      v24 = v22;
      *a7 = v23;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (*(v40 + 24) == 1)
  {
    [(HDFeatureSettingsManager *)self _notifyObserversOfFeatureIdentifier:v14 excludingObserver:v15];
    v25 = *(v40 + 24);
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v25 & 1;
}

void __116__HDFeatureSettingsManager_setFeatureSettingsNumber_forKey_featureIdentifier_suppressNotificationsToObserver_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 setNumber:v3 forKey:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (BOOL)setFeatureSettingsString:(id)a3 forKey:(id)a4 featureIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HDFeatureSettingsManager *)&self->super.isa _featureSettingsKeyValueDomainWithFeatureIdentifier:v12];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__160;
  v34 = __Block_byref_object_dispose__160;
  v35 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HDFeatureSettingsManager_setFeatureSettingsString_forKey_featureIdentifier_error___block_invoke;
  block[3] = &unk_278622020;
  v28 = &v36;
  v15 = v13;
  v25 = v15;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v29 = &v30;
  dispatch_sync(queue, block);
  v18 = v31[5];
  if (v18)
  {
    v19 = v18;
    v20 = v19;
    if (a6)
    {
      v21 = v19;
      *a6 = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (*(v37 + 24) == 1)
  {
    [(HDFeatureSettingsManager *)self _notifyObserversOfFeatureIdentifier:v12 excludingObserver:0];
    v22 = *(v37 + 24);
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v22 & 1;
}

void __84__HDFeatureSettingsManager_setFeatureSettingsString_forKey_featureIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 setString:v3 forKey:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (BOOL)removeFeatureSettingsValueForKey:(id)a3 featureIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDFeatureSettingsManager *)&self->super.isa _featureSettingsKeyValueDomainWithFeatureIdentifier:v9];
  v11 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__160;
  v30 = __Block_byref_object_dispose__160;
  v31 = 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__HDFeatureSettingsManager_removeFeatureSettingsValueForKey_featureIdentifier_error___block_invoke;
  v21[3] = &unk_278622048;
  v24 = &v32;
  v13 = v10;
  v22 = v13;
  v14 = v11;
  v23 = v14;
  v25 = &v26;
  dispatch_sync(queue, v21);
  v15 = v27[5];
  if (v15)
  {
    v16 = v15;
    v17 = v16;
    if (a5)
    {
      v18 = v16;
      *a5 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (*(v33 + 24) == 1)
  {
    [(HDFeatureSettingsManager *)self _notifyObserversOfFeatureIdentifier:v9 excludingObserver:0];
    v19 = *(v33 + 24);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v19 & 1;
}

void __85__HDFeatureSettingsManager_removeFeatureSettingsValueForKey_featureIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 removeValuesForKeys:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)resetFeatureSettingsForFeatureIdentifier:(id)a3 suppressNotificationsToObserver:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDFeatureSettingsManager *)&self->super.isa _featureSettingsKeyValueDomainWithFeatureIdentifier:v8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__160;
  v31 = __Block_byref_object_dispose__160;
  v32 = 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __107__HDFeatureSettingsManager_resetFeatureSettingsForFeatureIdentifier_suppressNotificationsToObserver_error___block_invoke;
  v21[3] = &unk_278628CF8;
  v25 = &v33;
  v26 = &v27;
  v21[4] = self;
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  v14 = v8;
  v24 = v14;
  dispatch_sync(queue, v21);
  v15 = v28[5];
  if (v15)
  {
    v16 = v15;
    v17 = v16;
    if (a5)
    {
      v18 = v16;
      *a5 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v19;
}

void __107__HDFeatureSettingsManager_resetFeatureSettingsForFeatureIdentifier_suppressNotificationsToObserver_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 8);
  v9 = *(v2 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__HDFeatureSettingsManager_resetFeatureSettingsForFeatureIdentifier_suppressNotificationsToObserver_error___block_invoke_2;
  v5[3] = &unk_278628CD0;
  v8 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  LOBYTE(v3) = [HDFeatureSettingsManager _performWriteTransactionAndNotifyObserversWithError:v3 suppressNotificationsToObserver:&v9 block:v4 inaccessibilityHandler:v5];
  objc_storeStrong((v2 + 40), v9);
  *(*(*(a1 + 64) + 8) + 24) = v3;
}

id __107__HDFeatureSettingsManager_resetFeatureSettingsForFeatureIdentifier_suppressNotificationsToObserver_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v11 = 0;
  v6 = [v5 setValueForAllKeys:0 error:&v11];
  v7 = v11;
  *(*(*(a1 + 48) + 8) + 24) = v6;
  if (v7)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = *(a1 + 40);
  }

  return v9;
}

BOOL __141__HDFeatureSettingsManager__performWriteTransactionAndNotifyObserversWithError_suppressNotificationsToObserver_block_inaccessibilityHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, v7, a3);
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __141__HDFeatureSettingsManager__performWriteTransactionAndNotifyObserversWithError_suppressNotificationsToObserver_block_inaccessibilityHandler___block_invoke_2;
  v15[3] = &unk_278620DF8;
  v11 = a1[7];
  v12 = a1[5];
  v15[4] = a1[4];
  v17 = v11;
  v16 = v12;
  [v7 onCommit:v15 orRollback:0];

  v13 = *(*(a1[7] + 8) + 40) != 0;
  return v13;
}

void __82__HDFeatureSettingsManager__notifyObserversOfFeatureIdentifier_excludingObserver___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1[4] && [v3 isEqual:?])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
    {
      v6 = a1[5];
      v7 = v5;
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v4;
      v8 = v11;
      _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Observer %{public}@ was skipped", &v10, 0x16u);
    }
  }

  else
  {
    [v4 featureSettingsManager:a1[5] didUpdateSettingsForFeatureIdentifier:a1[6]];
  }

  v9 = *MEMORY[0x277D85DE8];
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
  [(HDFeatureSettingsManager *)self _lock_unregisterObserver:v7 featureIdentifier:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_unregisterObserver:(void *)a3 featureIdentifier:
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    os_unfair_lock_assert_owner((a1 + 24));
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

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

        [(HDFeatureSettingsManager *)self _lock_unregisterObserver:v4 featureIdentifier:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_settingsDidSyncNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 name];
    *buf = 138543618;
    v24 = v7;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature settings notification received (%{public}@)", buf, 0x16u);
  }

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"HDUnprotectedFeatureSettingsSyncEntityDidSyncNotificationDomainNamesKey"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HDFeatureSettingsManager *)self _notifyObserversOfFeatureIdentifier:0 excludingObserver:?];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end