@interface BBDataProviderManager
- (BBDataProviderManager)initWithDelegate:(id)a3 queue:(id)a4;
- (id)_configureDataProvider:(id)a3 performMigration:(BOOL)a4;
- (id)_configureSectionInfo:(id)a3 forDataProvider:(id)a4;
- (id)_queue_dataProvidersForUniversalSectionID:(id)a3;
- (id)dataProviderForSectionID:(id)a3;
- (id)debugDescriptionWithChildren:(unint64_t)a3;
- (id)localSectionIdentifiersFromDismissalSectionIdentifer:(id)a3;
- (id)rebuildSectionInfo:(id)a3 forSectionID:(id)a4;
- (id)universalSectionIDForSectionID:(id)a3;
- (void)dataProviderStore:(id)a3 didAddDataProvider:(id)a4 performMigration:(BOOL)a5 completion:(id)a6;
- (void)dataProviderStore:(id)a3 didAddParentSectionFactory:(id)a4;
- (void)dataProviderStore:(id)a3 didRemoveDataProvider:(id)a4;
- (void)dealloc;
- (void)noteSettingsChanged:(id)a3 forSectionID:(id)a4;
- (void)performBlockOnDataProviders:(id)a3;
- (void)reloadIdentityForSectionID:(id)a3 withCompletion:(id)a4;
@end

@implementation BBDataProviderManager

- (BBDataProviderManager)initWithDelegate:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(BBDataProviderManager *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderManager.loadDataProviderQueue", v11);
    loadDataProviderQueue = v10->_loadDataProviderQueue;
    v10->_loadDataProviderQueue = v12;

    v10->_loadQueueSuspended = 1;
    dispatch_suspend(v10->_loadDataProviderQueue);
    v14 = [BBRemoteDataProviderConnectionResolver resolverWithDelegate:v10];
    remoteDataProviderResolver = v10->_remoteDataProviderResolver;
    v10->_remoteDataProviderResolver = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentFactoriesBySectionID = v10->_parentFactoriesBySectionID;
    v10->_parentFactoriesBySectionID = v16;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_loadQueueSuspended)
  {
    dispatch_resume(self->_loadDataProviderQueue);
  }

  v3.receiver = self;
  v3.super_class = BBDataProviderManager;
  [(BBDataProviderManager *)&v3 dealloc];
}

- (id)debugDescriptionWithChildren:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"    "];
      --v6;
    }

    while (v6);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@<%@: %p>", v5, v9, self];

  dispatch_suspend(self->_queue);
  if (self->_loadQueueSuspended)
  {
    [v10 appendFormat:@" [SUSPENDED]"];
  }

  if ([(NSMutableDictionary *)self->_parentFactoriesBySectionID count])
  {
    [v10 appendFormat:@"    %@Parent Sections", v5];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_parentFactoriesBySectionID;
    v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 appendFormat:@"        %@%@", v5, *(*(&v20 + 1) + 8 * i)];
        }

        v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  v16 = [(BBLocalDataProviderStore *)self->_localDataProviderStore debugDescriptionWithChildren:a3 + 1];
  [v10 appendFormat:@"\n%@", v16];

  v17 = [(BBRemoteDataProviderConnectionResolver *)self->_remoteDataProviderResolver debugDescriptionWithChildren:a3 + 1];
  [v10 appendFormat:@"\n%@", v17];

  dispatch_resume(self->_queue);
  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)noteSettingsChanged:(id)a3 forSectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProviderManager *)self dataProviderForSectionID:v7];
  v9 = v8;
  if (v8)
  {
    [v8 noteSectionInfoDidChange:v6];
  }

  else if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
  {
    [BBDataProviderManager noteSettingsChanged:forSectionID:];
  }
}

- (id)rebuildSectionInfo:(id)a3 forSectionID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProviderManager *)self dataProviderForSectionID:v7];
  if (!v8)
  {
    v9 = [(BBDataProviderManager *)self _queue_getSectionInfoForSectionID:v7];
    v10 = v9;
    if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [v9 dataProviderIDs];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(BBDataProviderManager *)self rebuildSectionInfo:v6 forSectionID:*(*(&v20 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }

    else if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
    {
      [BBDataProviderManager rebuildSectionInfo:forSectionID:];
    }
  }

  v17 = [(BBDataProviderManager *)self _configureSectionInfo:v6 forDataProvider:v8];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)reloadIdentityForSectionID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProviderManager *)self dataProviderForSectionID:v6];
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke;
    v9[3] = &unk_278D2B870;
    v9[4] = self;
    v11 = v7;
    v10 = v8;
    [v10 reloadIdentityWithCompletion:v9];
  }

  else if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
  {
    [BBDataProviderManager reloadIdentityForSectionID:withCompletion:];
  }
}

void __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke_2;
  v3[3] = &unk_278D2A900;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)localSectionIdentifiersFromDismissalSectionIdentifer:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [(BBDataProviderManager *)self _queue_dataProvidersForUniversalSectionID:v4];
  if ([v6 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) sectionIdentifier];
          [v5 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else if ([v4 length])
  {
    [v5 addObject:v4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)performBlockOnDataProviders:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(BBDataProviderManager *)a2 performBlockOnDataProviders:?];
  }

  localDataProviderStore = self->_localDataProviderStore;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke;
  v12[3] = &unk_278D2C180;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  [(BBLocalDataProviderStore *)localDataProviderStore performBlockOnDataProviders:v12];
  remoteDataProviderResolver = self->_remoteDataProviderResolver;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_3;
  v10[3] = &unk_278D2C180;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(BBRemoteDataProviderConnectionResolver *)remoteDataProviderResolver performBlockOnDataProviders:v10];
}

void __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_4;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)dataProviderForSectionID:(id)a3
{
  v4 = a3;
  v5 = [(BBLocalDataProviderStore *)self->_localDataProviderStore dataProviderForSectionID:v4];
  if (!v5)
  {
    v5 = [(BBRemoteDataProviderConnectionResolver *)self->_remoteDataProviderResolver dataProviderForSectionID:v4];
  }

  return v5;
}

- (id)universalSectionIDForSectionID:(id)a3
{
  v4 = a3;
  v5 = [(BBDataProviderManager *)self dataProviderForSectionID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 universalSectionIdentifier];
  }

  else
  {
    v8 = [(BBDataProviderManager *)self parentSectionDataProviderFactoryForSectionID:v4];
    v7 = [v8 universalSectionIdentifier];
  }

  return v7;
}

- (id)_queue_dataProvidersForUniversalSectionID:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(BBLocalDataProviderStore *)self->_localDataProviderStore dataProvidersForUniversalSectionID:v5];
  v8 = [(BBRemoteDataProviderConnectionResolver *)self->_remoteDataProviderResolver dataProvidersForUniversalSectionID:v5];

  [v6 unionSet:v7];
  [v6 unionSet:v8];

  return v6;
}

- (void)dataProviderStore:(id)a3 didAddParentSectionFactory:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__BBDataProviderManager_dataProviderStore_didAddParentSectionFactory___block_invoke;
  v8[3] = &unk_278D2A628;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __70__BBDataProviderManager_dataProviderStore_didAddParentSectionFactory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionIdentifier];
  if (v2)
  {
    v6 = v2;
    [*(*(a1 + 40) + 56) setObject:*(a1 + 32) forKeyedSubscript:v2];
    v3 = [*(a1 + 40) _queue_getSectionInfoForSectionID:v6];
    if (v3)
    {
      v4 = [*(a1 + 32) sectionInfo];
      [v3 updateWithDefaultSectionInfo:v4];

      [*(a1 + 32) setSectionInfo:v3];
    }

    [*(*(a1 + 40) + 8) dpManager:*(a1 + 40) addParentSectionFactory:*(a1 + 32)];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)dataProviderStore:(id)a3 didAddDataProvider:(id)a4 performMigration:(BOOL)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  loadDataProviderQueue = self->_loadDataProviderQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke;
  v14[3] = &unk_278D2C1A8;
  v14[4] = self;
  v15 = v9;
  v17 = a5;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(loadDataProviderQueue, v14);
}

void __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke_2;
  v5[3] = &unk_278D2C1A8;
  v5[4] = v3;
  v6 = v2;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

void __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    *v11 = 138543618;
    *&v11[4] = v5;
    *&v11[12] = 2114;
    *&v11[14] = v6;
    v7 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ adding data provider %{public}@ to BBServer", v11, 0x16u);
  }

  v8 = [*(a1 + 32) _configureDataProvider:*(a1 + 40) performMigration:{*(a1 + 56), *v11, *&v11[16], v12}];
  [*(a1 + 40) startWatchdog];
  [*(*(a1 + 32) + 8) dpManager:*(a1 + 32) addDataProvider:*(a1 + 40) withSectionInfo:v8];
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dataProviderStore:(id)a3 didRemoveDataProvider:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BBDataProviderManager_dataProviderStore_didRemoveDataProvider___block_invoke;
  v8[3] = &unk_278D2A628;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __65__BBDataProviderManager_dataProviderStore_didRemoveDataProvider___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    *v20 = 138543618;
    *&v20[4] = v5;
    *&v20[12] = 2114;
    *&v20[14] = v6;
    v7 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing data provider %{public}@ from BBServer", v20, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) sectionIdentifier];
  v10 = [v8 _queue_getSectionInfoForSectionID:v9];

  v11 = [v10 factorySectionID];

  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = [v10 factorySectionID];
    v14 = [v12 _queue_getSectionInfoForSectionID:v13];

    if (v14)
    {
      [v14 _dissociateDataProviderSectionInfo:v10];
    }
  }

  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(v16 + 8);
  v18 = [v15 sectionIdentifier];
  [v17 dpManager:v16 removeDataProviderSectionID:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_configureDataProvider:(id)a3 performMigration:(BOOL)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 sectionIdentifier];
  if (!a4)
  {
    v10 = [(BBDataProviderManager *)self _queue_getSectionInfoForSectionID:v7];
    goto LABEL_5;
  }

  v8 = [v6 canPerformMigration];
  v9 = [(BBDataProviderManager *)self _queue_getSectionInfoForSectionID:v7];
  v10 = v9;
  if (!v8)
  {
LABEL_5:
    v12 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = [v9 copy];
  v12 = 1;
LABEL_6:
  v13 = [(BBDataProviderManager *)self _configureSectionInfo:v10 forDataProvider:v6];
  v14 = v13;
  if (v12 && v11)
  {
    v15 = [v13 copy];
    if ([v6 migrateSectionInfo:v15 oldSectionInfo:v11])
    {
      v16 = BBLogMigration;
      if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138544130;
        v21 = v7;
        v22 = 2114;
        v23 = v11;
        v24 = 2114;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Data provider <%{public}@> performed settings migration.\n\tPrevious build settings:   %{public}@\n\tPre-migration settings:    %{public}@\n\tMigrated (final) settings: %{public}@", &v20, 0x2Au);
      }

      goto LABEL_16;
    }
  }

  v17 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Section settings for data provider %{public}@: %{public}@", &v20, 0x16u);
  }

  v15 = v14;
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_configureSectionInfo:(id)a3 forDataProvider:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v56 = [v6 sectionIdentifier];
  v58 = v6;
  v7 = [BBSectionInfo defaultSectionInfoForSection:v6];
  v8 = v7;
  if (v5 || !v7)
  {
    [v5 updateWithDefaultSectionInfo:v7];
  }

  if ([v8 suppressFromSettings])
  {

    v5 = 0;
  }

  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [v58 defaultSubsectionInfos];
  if ([v11 count])
  {
  }

  else
  {
    v12 = [v10 subsections];
    v13 = [v12 count];

    if (!v13)
    {
      v57 = 0;
      goto LABEL_57;
    }
  }

  v55 = v8;
  v57 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB58] set];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v16 = [v58 defaultSubsectionInfos];
  v17 = [v16 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v68;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v68 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v67 + 1) + 8 * i);
        v22 = [v21 subsectionID];
        if (v22 && ([v15 containsObject:v22] & 1) == 0)
        {
          [v14 addObject:v21];
          [v15 addObject:v22];
        }

        else
        {
          v23 = BBLogDataProvider;
          if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v74 = v22;
            v75 = 2112;
            v76 = v56;
            _os_log_error_impl(&dword_241EFF000, v23, OS_LOG_TYPE_ERROR, "BBServer: Ignoring empty or duplicate subsectionID (%@) from data provider %@.", buf, 0x16u);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v18);
  }

  v24 = [MEMORY[0x277CBEB38] dictionary];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v25 = [v10 subsections];
  v26 = [v25 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v64;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v64 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v63 + 1) + 8 * j);
        v31 = [v30 subsectionID];
        [v24 setObject:v30 forKey:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v27);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v32 = v14;
  v33 = [v32 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v60;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v60 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v59 + 1) + 8 * k);
        v38 = [v37 subsectionID];
        if (!v38)
        {
          v42 = BBLogDataProvider;
          if (!os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 138412290;
          v74 = v56;
          v43 = v42;
          v44 = "BBServer: Ignoring subsection with no subsectionID, from data provider %@.";
          v45 = 12;
LABEL_48:
          _os_log_error_impl(&dword_241EFF000, v43, OS_LOG_TYPE_ERROR, v44, buf, v45);
          goto LABEL_51;
        }

        if ([v37 sectionType] != 2)
        {
          v46 = BBLogDataProvider;
          if (!os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 138412546;
          v74 = v38;
          v75 = 2112;
          v76 = v56;
          v43 = v46;
          v44 = "BBServer: Ignoring subsection (%@) not flagged as BBSectionTypeSubsection from data provider %@.";
          v45 = 22;
          goto LABEL_48;
        }

        v39 = [v24 objectForKey:v38];
        if (v37)
        {
          v40 = v39 == 0;
        }

        else
        {
          v40 = 0;
        }

        if (v40)
        {
          [v37 setSectionID:v56];
          [v10 _addSubsection:v37];
          v41 = v37;
          [v24 removeObjectForKey:v38];
LABEL_50:
          [v57 addObject:v41];
          v47 = [v58 displayNameForSubsectionID:v38];
          [v41 setDisplayName:v47];

          goto LABEL_51;
        }

        v41 = v39;
        [v39 updateWithDefaultSectionInfo:v37];
        [v24 removeObjectForKey:v38];
        if (v41)
        {
          goto LABEL_50;
        }

LABEL_51:
      }

      v34 = [v32 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v34);
  }

  if ([v24 count])
  {
    v48 = BBLogDataProvider;
    if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
      v50 = [v24 allKeys];
      *buf = 138543618;
      v74 = v56;
      v75 = 2114;
      v76 = v50;
      _os_log_impl(&dword_241EFF000, v49, OS_LOG_TYPE_DEFAULT, "Abandoned subsections for data provider <%{public}@>, removing them: %{public}@", buf, 0x16u);
    }
  }

  v8 = v55;
LABEL_57:
  if ([v57 count])
  {
    v51 = v57;
  }

  else
  {
    v51 = 0;
  }

  [v10 setSubsections:v51];
  v52 = v10;

  v53 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)noteSettingsChanged:forSectionID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_241EFF000, v0, v1, "%s no data provider found for: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)rebuildSectionInfo:forSectionID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_241EFF000, v0, v1, "%s no data provider found for: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reloadIdentityForSectionID:withCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_241EFF000, v0, v1, "%s no data provider found for: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performBlockOnDataProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBDataProviderManager.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end