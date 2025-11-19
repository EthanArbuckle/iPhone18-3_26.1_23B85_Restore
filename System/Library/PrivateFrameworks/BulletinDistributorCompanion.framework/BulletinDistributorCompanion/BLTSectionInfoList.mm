@interface BLTSectionInfoList
- (BLTSectionInfoList)init;
- (BLTSectionInfoListDelegate)delegate;
- (BOOL)hasCustomSettingsSetForSectionID:(id)a3;
- (id)_lock_sectionInfoFromListItem:(id)a3 sectionID:(id)a4 displayName:(id *)a5;
- (id)_overriddenSectionInfoForSectionID:(id)a3 originalSectionInfo:(id *)a4 displayName:(id *)a5;
- (id)_sectionInfoFromSectionID:(id)a3 displayName:(id *)a4;
- (id)bbSectionInfoForSectionID:(id)a3;
- (id)effectiveSectionInfoForSectionID:(id)a3;
- (id)originalSettings;
- (id)overriddenSettings;
- (id)overrides;
- (id)sectionIDs;
- (id)sectionOverrideOnlyForSectionID:(id)a3;
- (id)sectionOverridesOnly;
- (id)settingsDescriptionForSectionIDs:(id)a3;
- (id)universalSectionIDForSectionID:(id)a3;
- (void)_migrateFromExternalDeviceSwitchToOverrides:(id)a3 sectionID:(id)a4;
- (void)_updateListItem:(id)a3 overrides:(id)a4 sectionID:(id)a5;
- (void)dealloc;
- (void)mapSection:(id)a3 map:(id)a4;
- (void)reloadWithCompletion:(id)a3;
- (void)removedSectionWithSectionID:(id)a3 transaction:(id)a4;
- (void)setOverrideProvider:(id)a3;
- (void)setSectionInfoProvider:(id)a3;
- (void)updateOverrides:(id)a3 forSectionID:(id)a4 transaction:(id)a5;
- (void)updateSectionInfoForSectionIDs:(id)a3 transaction:(id)a4;
@end

@implementation BLTSectionInfoList

- (BLTSectionInfoList)init
{
  v11.receiver = self;
  v11.super_class = BLTSectionInfoList;
  v2 = [(BLTSectionInfoList *)&v11 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    v4 = [MEMORY[0x277CBEB38] dictionary];
    sectionInfoListItemsBySectionID = v3->_sectionInfoListItemsBySectionID;
    v3->_sectionInfoListItemsBySectionID = v4;

    v6 = [MEMORY[0x277CBEB18] array];
    loadingCompletionHandlers = v3->_loadingCompletionHandlers;
    v3->_loadingCompletionHandlers = v6;

    v8 = [MEMORY[0x277CBEB58] set];
    sectionInfoSectionIDs = v3->_sectionInfoSectionIDs;
    v3->_sectionInfoSectionIDs = v8;
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = BLTSectionInfoList;
  [(BLTSectionInfoList *)&v3 dealloc];
}

- (id)sectionIDs
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_sectionInfoSectionIDs allObjects];
  v4 = [v3 copy];

  pthread_mutex_unlock(&self->_lock);

  return v4;
}

- (void)setSectionInfoProvider:(id)a3
{
  v5 = a3;
  p_sectionInfoProvider = &self->_sectionInfoProvider;
  if (self->_sectionInfoProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(p_sectionInfoProvider, a3);
    p_sectionInfoProvider = [(BLTSectionInfoListBBProvider *)self->_sectionInfoProvider setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_sectionInfoProvider, v5);
}

- (void)setOverrideProvider:(id)a3
{
  v5 = a3;
  p_overrideProvider = &self->_overrideProvider;
  if (self->_overrideProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(p_overrideProvider, a3);
    p_overrideProvider = [(BLTSectionInfoListOverrideProvider *)self->_overrideProvider setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_overrideProvider, v5);
}

- (void)_updateListItem:(id)a3 overrides:(id)a4 sectionID:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LODWORD(self) = [WeakRetained sectionInfoList:self override:v8 shouldApplyToSectionInfoForSectionID:v9];

  if (self)
  {
    [v11 setOverrides:v8];
  }
}

- (void)reloadWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLTWorkQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke;
  v7[3] = &unk_278D31478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v4 = [v2 copy];
    [v3 addObject:v4];
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 96) & 1) == 0)
  {
    *(v5 + 96) = 1;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = *(a1 + 32);
    v8 = *(v7 + 112);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_2;
    v10[3] = &unk_278D31DE8;
    v11 = v6;
    v12 = v7;
    v9 = v6;
    [v8 reloadWithCompletion:v10];
  }
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_3;
  v12[3] = &unk_278D31DC0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = v4;
  v14 = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:v12];
  v6 = *(*(a1 + 40) + 120);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_4;
  v9[3] = &unk_278D325A0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [v6 reloadWithCompletion:v9];
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = objc_alloc_init(BLTSectionInfoListItem);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [*(a1 + 40) _updateListItem:v6 overrides:v5 sectionID:v7];
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_5;
  block[3] = &unk_278D316C8;
  v9 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_5(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_6;
  v19[3] = &unk_278D32550;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v20 = v3;
  v21 = v4;
  [v2 enumerateObjectsUsingBlock:v19];
  pthread_mutex_lock((*(a1 + 48) + 24));
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_62;
  v18[3] = &unk_278D32578;
  v5 = *(a1 + 40);
  v18[4] = *(a1 + 48);
  [v5 enumerateKeysAndObjectsUsingBlock:v18];
  pthread_mutex_unlock((*(a1 + 48) + 24));
  *(*(a1 + 48) + 97) = 1;
  *(*(a1 + 48) + 96) = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(*(a1 + 48) + 88);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = MEMORY[0x245D067A0](*(*(&v14 + 1) + 8 * v11));

        v9[2](v9);
        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 48) + 88) removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sectionID];
  if (!v4)
  {
    __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_6_cold_1();
  }

  v5 = v4;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v6)
  {
    v6 = objc_alloc_init(BLTSectionInfoListItem);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = blt_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "On reload, retrieved section info for %@", &v11, 0xCu);
  }

  pthread_mutex_lock((*(a1 + 40) + 24));
  [*(*(a1 + 40) + 16) addObject:v5];
  pthread_mutex_unlock((*(a1 + 40) + 24));
  v8 = [v3 universalSectionID];

  if (v8)
  {
    v9 = [v3 universalSectionID];
    [(BLTSectionInfoListItem *)v6 setUniversalSectionID:v9];
  }

  [*(a1 + 40) _migrateFromExternalDeviceSwitchToOverrides:v6 sectionID:v5];

  v10 = *MEMORY[0x277D85DE8];
}

void __43__BLTSectionInfoList_reloadWithCompletion___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v12];
  if (v6)
  {
    v7 = [v5 overrides];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v5 overrides];
      [v8 _updateListItem:v6 overrides:v9 sectionID:v12];
    }

    v10 = [v5 universalSectionID];

    if (v10)
    {
      v11 = [v5 universalSectionID];
      [v6 setUniversalSectionID:v11];
    }
  }

  else
  {
    [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:v12];
  }
}

- (id)_sectionInfoFromSectionID:(id)a3 displayName:(id *)a4
{
  v5 = [(BLTSectionInfoListBBProvider *)self->_sectionInfoProvider sectionInfoForSectionID:a3];
  v6 = [v5 sectionInfo];
  if (a4)
  {
    *a4 = [v5 displayName];
  }

  return v6;
}

- (id)_lock_sectionInfoFromListItem:(id)a3 sectionID:(id)a4 displayName:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 phoneSectionID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  if (v11)
  {
    v14 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v11];
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;
  if (!v14)
  {
    v24 = blt_settings_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [BLTSectionInfoList _lock_sectionInfoFromListItem:v13 sectionID:v24 displayName:?];
    }

    goto LABEL_22;
  }

  v16 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:v13 displayName:a5];
  if (!v16)
  {
    v24 = blt_settings_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      [BLTSectionInfoList _lock_sectionInfoFromListItem:v13 sectionID:v24 displayName:?];
    }

LABEL_22:

    v17 = 0;
    goto LABEL_23;
  }

  v17 = v16;
  v18 = [v8 overriddenDisplayName];

  if (a5 && v18)
  {
    v19 = [v8 overriddenDisplayName];
    *a5 = [v19 copy];
  }

  if (v11)
  {
    [v17 setSectionID:v9];
  }

  v20 = [v8 overriddenIcon];

  if (v20)
  {
    v21 = [v8 overriddenIcon];
    [v17 setIcon:v21];
  }

  v22 = [v8 overriddenFactorySectionID];

  if (v22)
  {
    v23 = [v8 overriddenFactorySectionID];
    [v17 setFactorySectionID:v23];
  }

LABEL_23:

  return v17;
}

- (id)_overriddenSectionInfoForSectionID:(id)a3 originalSectionInfo:(id *)a4 displayName:(id *)a5
{
  v8 = a3;
  v9 = objc_alloc_init(BLTSectionInfoOverrideApplier);
  pthread_mutex_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v8];
  v11 = [(BLTSectionInfoList *)self _lock_sectionInfoFromListItem:v10 sectionID:v8 displayName:a5];

  v12 = [v10 phoneSectionID];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  v15 = [v13 overrides];
  v16 = [(BLTSectionInfoOverrideApplier *)v9 applyOverrides:v15 toSectionInfo:v11];

  pthread_mutex_unlock(&self->_lock);
  if (a4)
  {
    v17 = v11;
    *a4 = v11;
  }

  return v16;
}

- (id)bbSectionInfoForSectionID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v4];
  v6 = [(BLTSectionInfoList *)self _lock_sectionInfoFromListItem:v5 sectionID:v4 displayName:0];

  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (id)effectiveSectionInfoForSectionID:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = 0;
  v5 = [(BLTSectionInfoList *)self _overriddenSectionInfoForSectionID:v4 originalSectionInfo:&v16 displayName:&v15];
  v6 = v16;
  v7 = v15;
  pthread_mutex_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v4];
  v9 = BLTPBSectionInfoFromBBSectionInfo(v5);
  [v9 setPhoneAllowsNotifications:{objc_msgSend(v6, "allowsNotifications")}];
  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAuthorizationStatusLockScreenAndNCSettings])
  {
    [v9 setPhoneAuthorizationStatus:{objc_msgSend(v6, "authorizationStatus")}];
  }

  v10 = [v9 displayName];

  if (!v10)
  {
    [v9 setDisplayName:v7];
  }

  v11 = [v8 universalSectionID];

  if (v11)
  {
    v12 = [v8 universalSectionID];
    [v9 setUniversalSectionID:v12];
  }

  if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsEmergencyAlerts] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v9 setDisplaysCriticalBulletinsLegacy:{objc_msgSend(WeakRetained, "sectionInfoListSectionIDHadDisplayedCriticalBulletins:", v4)}];
  }

  pthread_mutex_unlock(&self->_lock);

  return v9;
}

- (id)universalSectionIDForSectionID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v4];

  v6 = [v5 universalSectionID];
  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (void)updateOverrides:(id)a3 forSectionID:(id)a4 transaction:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = a3;
  pthread_mutex_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v14];
  if (!v10)
  {
    v10 = objc_alloc_init(BLTSectionInfoListItem);
    [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID setObject:v10 forKeyedSubscript:v14];
  }

  [(BLTSectionInfoList *)self _updateListItem:v10 overrides:v9 sectionID:v14];
  pthread_mutex_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionInfoList:self receivedUpdatedSectionInfoForSectionID:v14 transaction:v8];

  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF3400]];

  if (v12 && [v12 BOOLValue])
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 sectionInfoList:self makeAuthorizationPermanentForSectionID:v14];
  }
}

- (void)updateSectionInfoForSectionIDs:(id)a3 transaction:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        pthread_mutex_lock(&self->_lock);
        sectionInfoListItemsBySectionID = self->_sectionInfoListItemsBySectionID;
        v14 = [v12 sectionID];
        v15 = [(NSMutableDictionary *)sectionInfoListItemsBySectionID objectForKeyedSubscript:v14];

        if (!v15)
        {
          v15 = objc_alloc_init(BLTSectionInfoListItem);
          v16 = self->_sectionInfoListItemsBySectionID;
          v17 = [v12 sectionID];
          [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];
        }

        sectionInfoSectionIDs = self->_sectionInfoSectionIDs;
        v19 = [v12 sectionID];
        [(NSMutableSet *)sectionInfoSectionIDs addObject:v19];

        v20 = [v12 universalSectionID];
        [(BLTSectionInfoListItem *)v15 setUniversalSectionID:v20];

        pthread_mutex_unlock(&self->_lock);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v22 = [v12 sectionID];
        [WeakRetained sectionInfoList:self receivedUpdatedSectionInfoForSectionID:v22 transaction:v7];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removedSectionWithSectionID:(id)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID removeObjectForKey:v7];
  [(NSMutableSet *)self->_sectionInfoSectionIDs removeObject:v7];
  pthread_mutex_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionInfoList:self receivedRemoveSectionWithSectionID:v7 transaction:v6];
}

- (id)overrides
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  pthread_mutex_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 overrides];

        if (v10)
        {
          v11 = [v9 overrides];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  pthread_mutex_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)originalSettings
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(BLTSectionInfoList *)self sectionIDs];
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:*(*(&v13 + 1) + 8 * i) displayName:0, v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)overriddenSettings
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  pthread_mutex_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID copy];
  pthread_mutex_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(BLTSectionInfoList *)self overriddenSectionInfoForSectionID:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)settingsDescriptionForSectionIDs:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n---\n", v10];
        [v5 appendString:v11];

        pthread_mutex_lock(&self->_lock);
        v12 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v10];
        v13 = [v12 overrides];

        if (v13)
        {
          v14 = MEMORY[0x277CCACA8];
          v15 = [v12 overrides];
          v16 = [v14 stringWithFormat:@"overrides: %@\n", v15];
          [v5 appendString:v16];
        }

        pthread_mutex_unlock(&self->_lock);
        v24 = 0;
        v17 = [(BLTSectionInfoList *)self _overriddenSectionInfoForSectionID:v10 originalSectionInfo:&v24 displayName:0];
        v18 = v24;
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"originalSettings: %@\n", v18];
        [v5 appendString:v19];

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"overriddenSettings: %@\n---\n\n", v17];
        [v5 appendString:v20];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)sectionOverridesOnly
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  pthread_mutex_lock(&self->_lock);
  v4 = MEMORY[0x277CBEB58];
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID allKeys];
  v6 = [v4 setWithArray:v5];

  [v6 minusSet:self->_sectionInfoSectionIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__BLTSectionInfoList_sectionOverridesOnly__block_invoke;
  v11[3] = &unk_278D325C8;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [v6 enumerateObjectsUsingBlock:v11];
  pthread_mutex_unlock(&self->_lock);
  v8 = v12;
  v9 = v7;

  return v7;
}

void __42__BLTSectionInfoList_sectionOverridesOnly__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v10];
  v4 = [*(a1 + 32) _sectionInfoFromSectionID:v10 displayName:0];
  v5 = [v3 overrides];

  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [BLTSectionInfoOverride alloc];
    v8 = [v3 overrides];
    v9 = [(BLTSectionInfoOverride *)v7 initWithOverrides:v8];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
  }
}

- (id)sectionOverrideOnlyForSectionID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v4];
  v6 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:v4 displayName:0];

  v7 = [v5 overrides];

  v8 = 0;
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [BLTSectionInfoOverride alloc];
    v11 = [v5 overrides];
    v8 = [(BLTSectionInfoOverride *)v10 initWithOverrides:v11];
  }

  pthread_mutex_unlock(&self->_lock);

  return v8;
}

- (BOOL)hasCustomSettingsSetForSectionID:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v4];

  v6 = [v5 phoneSectionID];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = [v7 overrides];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  v11 = [v10 BOOLValue];

  pthread_mutex_unlock(&self->_lock);
  return v11;
}

- (void)_migrateFromExternalDeviceSwitchToOverrides:(id)a3 sectionID:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 overrides];

  if (!v7)
  {
    v8 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:v6 displayName:0];
    v9 = v8;
    if (v8 && ([v8 showsOnExternalDevices] & 1) == 0 && (objc_msgSend(v9, "suppressFromSettings") & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      v11 = [v9 sectionID];
      [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CF33E8]];

      [v10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CF33F8]];
      v12 = MEMORY[0x277CBEC38];
      [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF3400]];
      v13 = [MEMORY[0x277CBEAA8] date];
      [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277CF3428]];

      [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277CF3408]];
      v14 = objc_alloc(MEMORY[0x277D2BA58]);
      v15 = [v14 initWithDomain:*MEMORY[0x277CF33B8]];
      v16 = [v9 sectionID];
      [v15 setObject:v10 forKey:v16];

      v17 = [v15 synchronize];
      v18 = [v9 sectionID];
      [(BLTSectionInfoList *)self _updateListItem:v19 overrides:v10 sectionID:v18];
    }
  }
}

- (void)mapSection:(id)a3 map:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 mappedSectionID];
  if (v7)
  {
    pthread_mutex_lock(&self->_lock);
    v8 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = objc_alloc_init(BLTSectionInfoListItem);
      [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID setObject:v8 forKeyedSubscript:v7];
    }

    [(NSMutableSet *)self->_sectionInfoSectionIDs addObject:v7];
    v9 = [v6 mappedParentSectionID];
    [(BLTSectionInfoListItem *)v8 setOverriddenFactorySectionID:v9];

    [(BLTSectionInfoListItem *)v8 setPhoneSectionID:v12];
    v10 = [v6 displayName];
    [(BLTSectionInfoListItem *)v8 setOverriddenDisplayName:v10];

    v11 = [v6 icon];
    [(BLTSectionInfoListItem *)v8 setOverriddenIcon:v11];

    pthread_mutex_unlock(&self->_lock);
  }
}

- (BLTSectionInfoListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_lock_sectionInfoFromListItem:(uint64_t)a1 sectionID:(NSObject *)a2 displayName:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, 0x90u, "Section info list item contains ID but BulletinBoard does not have section info for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_sectionInfoFromListItem:(uint64_t)a1 sectionID:(NSObject *)a2 displayName:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Requesting section info for unknown section %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end