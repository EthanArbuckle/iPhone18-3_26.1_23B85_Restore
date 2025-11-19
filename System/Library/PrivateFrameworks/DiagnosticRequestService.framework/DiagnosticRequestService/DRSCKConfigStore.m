@interface DRSCKConfigStore
- (BOOL)resetToDefaultWithErrorOut:(id *)a3;
- (BOOL)saveConfig:(id)a3 errorOut:(id *)a4;
- (DRSCKConfigStore)initWithWorkingDirectory:(id)a3 isReadOnly:(BOOL)a4 errorOut:(id *)a5;
- (id)_currentConfig_ON_MOC_QUEUE:(id *)a3;
- (id)currentConfig:(id *)a3;
@end

@implementation DRSCKConfigStore

- (DRSCKConfigStore)initWithWorkingDirectory:(id)a3 isReadOnly:(BOOL)a4 errorOut:(id *)a5
{
  v9 = a3;
  v24.receiver = self;
  v24.super_class = DRSCKConfigStore;
  v10 = [(DRSCKConfigStore *)&v24 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v10->_workingDirectory, a3);
  v11->_isReadOnly = a4;
  v12 = [(DRSCKConfigStore *)v11 workingDirectory];
  v23 = 0;
  v13 = DRSCKConfigPersistentContainer(v12, [(DRSCKConfigStore *)v11 isReadOnly], &v23);
  v14 = v23;

  if (!v14)
  {
    container = v11->_container;
    v11->_container = v13;
    v18 = v13;

    v19 = [(DRSCKConfigStore *)v11 container];
    v20 = [v19 newBackgroundContext];
    context = v11->_context;
    v11->_context = v20;

LABEL_5:
    v16 = v11;
    goto LABEL_6;
  }

  v15 = v14;
  *a5 = v14;

  v16 = 0;
LABEL_6:

  return v16;
}

- (id)_currentConfig_ON_MOC_QUEUE:(id *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [(DRSCKConfigStore *)self context];
  v6 = +[DRSCKConfigMO fetchRequest];
  v47 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v47];
  v8 = v47;

  if (!v8)
  {
    if ([v7 count])
    {
      if ([v7 count] < 2)
      {
        v37 = [v7 firstObject];
        v24 = v37;
        if (v37)
        {
          if ([v37 overridesDefault] & 1) != 0 || (+[DRSCKConfig defaultConfig](DRSCKConfig, "defaultConfig"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v24, "isEqual:", v38), v38, (v39))
          {
            v13 = 0;
            goto LABEL_36;
          }
        }

LABEL_22:
        v25 = DPLogHandle_CKConfig();
        if (os_signpost_enabled(v25))
        {
          v26 = +[DRSCKConfig defaultConfig];
          v27 = [v26 debugDescription];
          *buf = 138543362;
          v50 = v27;
          _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PopulatingDefaultConfig", "Populating config entry with default (%{public}@", buf, 0xCu);
        }

        v28 = +[DRSCKConfig defaultConfig];
        v29 = [(DRSCKConfigStore *)self context];
        v30 = [v28 newConfigMOInContext_ON_MOC_QUEUE:v29];

        v31 = [(DRSCKConfigStore *)self context];
        v42 = 0;
        LOBYTE(v28) = [v31 save:&v42];
        v13 = v42;

        if ((v28 & 1) == 0)
        {
          v32 = DPLogHandle_CoreDataError();
          if (os_signpost_enabled(v32))
          {
            v33 = [v13 localizedDescription];
            v34 = v33;
            v35 = @"Unknown";
            if (v33)
            {
              v35 = v33;
            }

            *buf = 138543362;
            v50 = v35;
            _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToSaveCKConfig", "Failed a CK Config managed object due to error: %{public}@", buf, 0xCu);
          }

          if (a3)
          {
            v36 = v13;
            v14 = 0;
            *a3 = v13;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_38;
        }

        v24 = v30;
LABEL_36:
        v30 = v24;
        v14 = v30;
LABEL_38:

        goto LABEL_39;
      }

      v15 = DPLogHandle_CKConfigError();
      if (os_signpost_enabled(v15))
      {
        v16 = [v7 count];
        *buf = 67109120;
        LODWORD(v50) = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NonUniqueCKConfig", "Found %u configs. Attempting to delete and recover from state.", buf, 8u);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = v7;
      v18 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v43 + 1) + 8 * i);
            v23 = [(DRSCKConfigStore *)self context];
            [v23 deleteObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v17 = DPLogHandle_CKConfig();
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigManagedObjectFetchMiss", "No cached CK Config", buf, 2u);
      }
    }

    v24 = 0;
    goto LABEL_22;
  }

  v9 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v9))
  {
    v10 = [v8 localizedDescription];
    v11 = v10;
    v12 = @"Unknown";
    if (v10)
    {
      v12 = v10;
    }

    *buf = 138543362;
    v50 = v12;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigMOFetch", "Failed to fetch a CK Config managed object due to error: %{public}@", buf, 0xCu);
  }

  v13 = v8;
  v14 = 0;
LABEL_39:

  v40 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)saveConfig:(id)a3 errorOut:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v7 = [(DRSCKConfigStore *)self context];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __40__DRSCKConfigStore_saveConfig_errorOut___block_invoke;
  v19 = &unk_27899F1C0;
  v20 = self;
  v22 = &v24;
  v23 = &v30;
  v8 = v6;
  v21 = v8;
  [v7 performBlockAndWait:&v16];

  if ((v31[3] & 1) == 0)
  {
    v9 = DPLogHandle_CKConfigError();
    if (os_signpost_enabled(v9))
    {
      v10 = [v25[5] localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138543362;
      v35 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SaveConfigFailed", "Failed due to error: %{public}@", buf, 0xCu);
    }
  }

  if (a4)
  {
    *a4 = v25[5];
  }

  v13 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __40__DRSCKConfigStore_saveConfig_errorOut___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _currentConfig_ON_MOC_QUEUE:&v11];
  v4 = v11;
  v5 = v11;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  if (v3)
  {
    [v3 setContainerEnvironment:{objc_msgSend(*(a1 + 40), "containerEnvironment")}];
    [v3 setRapidEnvironment:{objc_msgSend(*(a1 + 40), "rapidEnvironment")}];
    [v3 setOverridesDefault:{objc_msgSend(*(a1 + 40), "overridesDefault")}];
    v6 = [*(a1 + 32) context];
    v10 = v5;
    v7 = [v6 save:&v10];
    v8 = v10;
    v9 = v10;

    *(*(*(a1 + 56) + 8) + 24) = v7;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    v5 = v9;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)resetToDefaultWithErrorOut:(id *)a3
{
  v5 = +[DRSCKConfig defaultConfig];
  LOBYTE(a3) = [(DRSCKConfigStore *)self saveConfig:v5 errorOut:a3];

  return a3;
}

- (id)currentConfig:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v5 = [(DRSCKConfigStore *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__DRSCKConfigStore_currentConfig___block_invoke;
  v8[3] = &unk_27899F1E8;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v15;
  [v5 performBlockAndWait:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __34__DRSCKConfigStore_currentConfig___block_invoke(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _currentConfig_ON_MOC_QUEUE:&v9];
  v4 = v9;
  v5 = v9;
  objc_storeStrong((*(a1[5] + 8) + 40), v4);
  if (v3)
  {
    v6 = [DRSCKConfig _configWithConfigMO_ON_MOC_QUEUE:v3];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

@end