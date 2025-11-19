@interface NTKBundleComplicationMigrationService
- (NTKBundleComplicationMigrationService)init;
- (id)_loadAndFetchClassesForBundleIdentifier:(id)a3;
- (void)_enumerateBundles:(id)a3;
- (void)_performMigrationWithDataSource:(id)a3 complication:(id)a4 family:(int64_t)a5 device:(id)a6 completion:(id)a7;
- (void)_processFallbackRequest:(id)a3 completion:(id)a4;
- (void)_processSingleRequest:(id)a3 completion:(id)a4;
- (void)generateComplicationTypeLookupForDevice:(id)a3 completion:(id)a4;
- (void)processRequest:(id)a3 completion:(id)a4;
@end

@implementation NTKBundleComplicationMigrationService

- (NTKBundleComplicationMigrationService)init
{
  v6.receiver = self;
  v6.super_class = NTKBundleComplicationMigrationService;
  v2 = [(NTKBundleComplicationMigrationService *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    NTKBundleComplicationMigrationServiceEnsureLookupDirectory();
  }

  return v2;
}

- (void)processRequest:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKBundleComplicationMigrationService *)self _processSingleRequest:v8 completion:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKBundleComplicationMigrationService *)self _processFallbackRequest:v8 completion:v6];
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.NTKBundleComplicationMigrationService" code:3 userInfo:0];
      v6[2](v6, 0, v7);
    }
  }
}

- (void)_processFallbackRequest:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationService: Begin processing fallback request %@", buf, 0xCu);
  }

  cache = self->_cache;
  v10 = [v6 complication];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__NTKBundleComplicationMigrationService__processFallbackRequest_completion___block_invoke;
  v13[3] = &unk_278781F68;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(NTKBundleComplicationIdentifierCache *)cache fetchIdentifiersForComplication:v10 completion:v13];
}

void __76__NTKBundleComplicationMigrationService__processFallbackRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v27 = a3;
  v30 = [*(a1 + 32) _loadAndFetchClassesForBundleIdentifier:?];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(a1 + 40) families];
  v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v31)
  {
    v32 = 0;
    v29 = *v39;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v38 + 1) + 8 * i) integerValue];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v8 = v30;
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v9)
        {
          v10 = v9;
          v33 = i;
          v11 = *v35;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v35 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v34 + 1) + 8 * j);
              v14 = [v13 bundleIdentifier];
              v15 = [v14 isEqualToString:v5];

              if (v15)
              {
                v16 = [*(a1 + 40) device];
                v17 = [v13 acceptsComplicationFamily:v7 forDevice:v16];

                if (v17)
                {
                  v18 = [v13 alloc];
                  v19 = [*(a1 + 40) complication];
                  v20 = [*(a1 + 40) device];
                  v21 = objc_opt_new();
                  v22 = [v18 initWithComplication:v19 family:v7 forDevice:v20 context:v21];

                  v32 = v22;
                  goto LABEL_17;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

LABEL_17:
          i = v33;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) complication];
  v25 = [v32 family];
  v26 = [*(a1 + 40) device];
  [v23 _performMigrationWithDataSource:v32 complication:v24 family:v25 device:v26 completion:*(a1 + 48)];
}

- (void)_processSingleRequest:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationService: Processing single request %@", buf, 0xCu);
  }

  cache = self->_cache;
  v10 = [v6 complication];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__NTKBundleComplicationMigrationService__processSingleRequest_completion___block_invoke;
  v13[3] = &unk_278781F68;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(NTKBundleComplicationIdentifierCache *)cache fetchIdentifiersForComplication:v10 completion:v13];
}

void __74__NTKBundleComplicationMigrationService__processSingleRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) _loadAndFetchClassesForBundleIdentifier:a3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v13 = [v10 alloc];
          v14 = [*(a1 + 40) complication];
          v15 = [*(a1 + 40) family];
          v16 = [*(a1 + 40) device];
          v17 = objc_opt_new();
          v7 = [v13 initWithComplication:v14 family:v15 forDevice:v16 context:v17];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) complication];
  v20 = [*(a1 + 40) family];
  v21 = [*(a1 + 40) device];
  [v18 _performMigrationWithDataSource:v7 complication:v19 family:v20 device:v21 completion:*(a1 + 48)];
}

- (void)_performMigrationWithDataSource:(id)a3 complication:(id)a4 family:(int64_t)a5 device:(id)a6 completion:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (([v13 supportsWidgetMigration] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v11)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.NTKBundleComplicationMigrationService" code:0 userInfo:0];
LABEL_10:
    v17 = v16;
    v14[2](v14, 0, v16);

    goto LABEL_11;
  }

  v15 = objc_opt_class();
  if (([v15 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.NTKBundleComplicationMigrationService" code:1 userInfo:0];
    goto LABEL_10;
  }

  if (([objc_opt_class() hasMigratedToWidgetForFamily:a5 device:v13] & 1) == 0)
  {
LABEL_7:
    v14[2](v14, 0, 0);
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 complicationDescriptor];
  }

  else
  {
    [MEMORY[0x277CBB718] legacyComplicationDescriptor];
  }
  v18 = ;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke;
  aBlock[3] = &unk_278781F90;
  v44 = v45;
  v43 = v14;
  v19 = _Block_copy(aBlock);
  v20 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = CLKComplicationFamilyDescription();
    v22 = [objc_opt_class() bundleIdentifier];
    *buf = 138413058;
    v48 = v12;
    v49 = 2112;
    v50 = v21;
    v51 = 2048;
    v52 = a5;
    v53 = 2112;
    v54 = v22;
    _os_log_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_DEFAULT, "Fetching migration for request <complication=%@, family=%@ (%li)> from %@", buf, 0x2Au);
  }

  v23 = [objc_opt_class() appIdentifier];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_11;
  v36[3] = &unk_278781FE0;
  v30 = v23;
  v37 = v30;
  v24 = v19;
  v40 = v24;
  v25 = v11;
  v38 = v25;
  v26 = v12;
  v39 = v26;
  v41 = a5;
  [v25 fetchWidgetMigrationForDescriptor:v18 family:a5 completion:v36];
  v27 = v18;
  v28 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_16;
  block[3] = &unk_278782008;
  v34 = v24;
  v32 = v25;
  v33 = v26;
  v35 = a5;
  v29 = v24;
  dispatch_after(v28, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v45, 8);
LABEL_11:
}

uint64_t __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(v1 + 24);
  if ((v2 & 1) == 0)
  {
    *(v1 + 24) = 1;
    (*(*(a1 + 32) + 16))();
  }

  return v2 ^ 1u;
}

void __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_2;
  v10[3] = &unk_278781FB8;
  v11 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v14 = *(a1 + 64);
  v9 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && ([v2 intentReference], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 = *(a1 + 32), v3))
  {
    v4 = [v2 intentReference];
    v5 = [v4 intent];

    [v5 _setLaunchId:*(a1 + 40)];
    if (([v5 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v6 = INIntentWithTypedIntent();

      v5 = v6;
    }

    v7 = objc_alloc(MEMORY[0x277CBBBD0]);
    v8 = [*(a1 + 32) extensionBundleIdentifier];
    v9 = [*(a1 + 32) containerBundleIdentifier];
    v10 = [*(a1 + 32) kind];
    v11 = [v7 initWithExtensionBundleIdentifier:v8 containerBundleIdentifier:v9 kind:v10 intent:v5];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = v2;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = [v11 extensionBundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 containerBundleIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = [v11 kind];

      if (v16)
      {
LABEL_11:
        v17 = (*(*(a1 + 64) + 16))();
        v18 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          v20 = [objc_opt_class() bundleIdentifier];
          v21 = *(a1 + 56);
          v22 = CLKComplicationFamilyDescription();
          v23 = *(a1 + 72);
          v31 = 138413570;
          v32 = v19;
          v33 = 2112;
          v34 = v20;
          v35 = 2112;
          v36 = v21;
          v37 = 2112;
          v38 = v22;
          v39 = 2048;
          v40 = v23;
          v41 = 1024;
          v42 = v17;
          _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "Received migration result %@ in %@ for request <complication=%@, family=%@ (%li)> (success=%d)", &v31, 0x3Au);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.NTKBundleComplicationMigrationService" code:4 userInfo:0];
  v24 = (*(*(a1 + 64) + 16))();
  v25 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    v26 = *(a1 + 32);
    v27 = [objc_opt_class() bundleIdentifier];
    v28 = *(a1 + 56);
    v29 = CLKComplicationFamilyDescription();
    v30 = *(a1 + 72);
    v31 = 138413570;
    v32 = v26;
    v33 = 2112;
    v34 = v27;
    v35 = 2112;
    v36 = v28;
    v37 = 2112;
    v38 = v29;
    v39 = 2048;
    v40 = v30;
    v41 = 1024;
    v42 = v24;
    _os_log_fault_impl(&dword_22D9C5000, v25, OS_LOG_TYPE_FAULT, "Received invalid migration result %@ in %@ for request <complication=%@, family=%@ (%li)> (first=%d)", &v31, 0x3Au);
  }

LABEL_17:
}

void __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_16(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.NTKBundleComplicationMigrationService" code:2 userInfo:0];
  if ((*(*(a1 + 48) + 16))())
  {
    v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_16_cold_1(a1, v3);
    }
  }
}

- (void)generateComplicationTypeLookupForDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBBAE8] deviceForDescriptor:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__NTKBundleComplicationMigrationService_generateComplicationTypeLookupForDevice_completion___block_invoke;
  v10[3] = &unk_278782030;
  v11 = v7;
  v12 = v6;
  v8 = v7;
  v9 = v6;
  [NTKBundleComplicationMigrationTypeLookupGenerator generateLookupUsingService:self device:v8 completion:v10];
}

void __92__NTKBundleComplicationMigrationService_generateComplicationTypeLookupForDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = NTKBundleComplicationMigrationCurrentVersion();
  [v4 setBuildVersion:v5];

  [v4 setDictionary:v3];
  v15 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = NTKBundleComplicationMigrationServiceLookupPathForDevice(*(a1 + 32));
    v14 = v7;
    v9 = [v6 writeToFile:v8 options:1 error:&v14];
    v10 = v14;

    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = NTKBundleComplicationMigrationCurrentVersion();
      LOBYTE(v11) = NTKBundleComplicationMigrationServiceSetLookupVersion(v11, v12);

      if ((v11 & 1) == 0)
      {
        v13 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          NTKBundleComplicationMigrationServiceSetLookupVersion_cold_1(v8, v13);
        }
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v10 = v7;
  }
}

- (void)_enumerateBundles:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_enumerateBundles__onceToken != -1)
  {
    [NTKBundleComplicationMigrationService _enumerateBundles:];
  }

  NTKBundleComplicationDirectoryURLs();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v16 = 0u;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = _enumerateBundles___complicationBundleLoader;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __59__NTKBundleComplicationMigrationService__enumerateBundles___block_invoke_2;
        v11[3] = &unk_278782058;
        v12 = v3;
        [v9 enumerateBundlesFromDirectoryURL:v8 enumerator:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void __59__NTKBundleComplicationMigrationService__enumerateBundles___block_invoke()
{
  v0 = objc_alloc_init(NTKBundleLoader);
  v1 = _enumerateBundles___complicationBundleLoader;
  _enumerateBundles___complicationBundleLoader = v0;
}

uint64_t __59__NTKBundleComplicationMigrationService__enumerateBundles___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 infoDictionary];
  v5 = NTKBundleComplicationMigrationStatusForInfoDictionary(v4);

  if (!v5)
  {
    v9 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v3 bundleIdentifier];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_INFO, "NTKBundleComplicationMigrationService: Skipping bundle %{public}@, not migrated", &v12, 0xCu);
    }

    goto LABEL_12;
  }

  if (([v3 isLoaded] & 1) == 0)
  {
    v6 = [v3 objectForInfoDictionaryKey:@"NSPrincipalClass"];
    if (v6)
    {

      goto LABEL_5;
    }

    v9 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__NTKBundleComplicationMigrationService__enumerateBundles___block_invoke_2_cold_1(v3, v9);
    }

LABEL_12:

    v8 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (id)_loadAndFetchClassesForBundleIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__27;
  v15 = __Block_byref_object_dispose__27;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__NTKBundleComplicationMigrationService__loadAndFetchClassesForBundleIdentifier___block_invoke;
  v8[3] = &unk_278782080;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NTKBundleComplicationMigrationService *)self _enumerateBundles:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __81__NTKBundleComplicationMigrationService__loadAndFetchClassesForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    if (([v3 isLoaded] & 1) == 0)
    {
      [v3 load];
      v6 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 bundleIdentifier];
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationService: Loading bundle for identifier %{public}@", &v11, 0xCu);
      }
    }

    v8 = NTKBundleComplicationDataSourceClassesFromBundle(v3);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __111__NTKBundleComplicationMigrationService__performMigrationWithDataSource_complication_family_device_completion___block_invoke_16_cold_1(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() bundleIdentifier];
  v5 = *(a1 + 40);
  v6 = CLKComplicationFamilyDescription();
  v7 = *(a1 + 56);
  v8 = 138413058;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  _os_log_fault_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_FAULT, "Timed out requesting migration from %@ with request <complication=%@, family=%@ (%li)>", &v8, 0x2Au);
}

void __59__NTKBundleComplicationMigrationService__enumerateBundles___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKBundleComplicationMigrationService: Bundle %{public}@ missing principal class", &v4, 0xCu);
}

@end