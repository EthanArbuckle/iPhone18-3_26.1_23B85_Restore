@interface BLTSectionInfoList
- (BLTSectionInfoList)init;
- (BLTSectionInfoListDelegate)delegate;
- (BOOL)hasCustomSettingsSetForSectionID:(id)d;
- (id)_lock_sectionInfoFromListItem:(id)item sectionID:(id)d displayName:(id *)name;
- (id)_overriddenSectionInfoForSectionID:(id)d originalSectionInfo:(id *)info displayName:(id *)name;
- (id)_sectionInfoFromSectionID:(id)d displayName:(id *)name;
- (id)bbSectionInfoForSectionID:(id)d;
- (id)effectiveSectionInfoForSectionID:(id)d;
- (id)originalSettings;
- (id)overriddenSettings;
- (id)overrides;
- (id)sectionIDs;
- (id)sectionOverrideOnlyForSectionID:(id)d;
- (id)sectionOverridesOnly;
- (id)settingsDescriptionForSectionIDs:(id)ds;
- (id)universalSectionIDForSectionID:(id)d;
- (void)_migrateFromExternalDeviceSwitchToOverrides:(id)overrides sectionID:(id)d;
- (void)_updateListItem:(id)item overrides:(id)overrides sectionID:(id)d;
- (void)dealloc;
- (void)mapSection:(id)section map:(id)map;
- (void)reloadWithCompletion:(id)completion;
- (void)removedSectionWithSectionID:(id)d transaction:(id)transaction;
- (void)setOverrideProvider:(id)provider;
- (void)setSectionInfoProvider:(id)provider;
- (void)updateOverrides:(id)overrides forSectionID:(id)d transaction:(id)transaction;
- (void)updateSectionInfoForSectionIDs:(id)ds transaction:(id)transaction;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sectionInfoListItemsBySectionID = v3->_sectionInfoListItemsBySectionID;
    v3->_sectionInfoListItemsBySectionID = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    loadingCompletionHandlers = v3->_loadingCompletionHandlers;
    v3->_loadingCompletionHandlers = array;

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
  allObjects = [(NSMutableSet *)self->_sectionInfoSectionIDs allObjects];
  v4 = [allObjects copy];

  pthread_mutex_unlock(&self->_lock);

  return v4;
}

- (void)setSectionInfoProvider:(id)provider
{
  providerCopy = provider;
  p_sectionInfoProvider = &self->_sectionInfoProvider;
  if (self->_sectionInfoProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(p_sectionInfoProvider, provider);
    p_sectionInfoProvider = [(BLTSectionInfoListBBProvider *)self->_sectionInfoProvider setDelegate:self];
    providerCopy = v7;
  }

  MEMORY[0x2821F96F8](p_sectionInfoProvider, providerCopy);
}

- (void)setOverrideProvider:(id)provider
{
  providerCopy = provider;
  p_overrideProvider = &self->_overrideProvider;
  if (self->_overrideProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(p_overrideProvider, provider);
    p_overrideProvider = [(BLTSectionInfoListOverrideProvider *)self->_overrideProvider setDelegate:self];
    providerCopy = v7;
  }

  MEMORY[0x2821F96F8](p_overrideProvider, providerCopy);
}

- (void)_updateListItem:(id)item overrides:(id)overrides sectionID:(id)d
{
  itemCopy = item;
  overridesCopy = overrides;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LODWORD(self) = [WeakRetained sectionInfoList:self override:overridesCopy shouldApplyToSectionInfoForSectionID:dCopy];

  if (self)
  {
    [itemCopy setOverrides:overridesCopy];
  }
}

- (void)reloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLTWorkQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BLTSectionInfoList_reloadWithCompletion___block_invoke;
  v7[3] = &unk_278D31478;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (id)_sectionInfoFromSectionID:(id)d displayName:(id *)name
{
  v5 = [(BLTSectionInfoListBBProvider *)self->_sectionInfoProvider sectionInfoForSectionID:d];
  sectionInfo = [v5 sectionInfo];
  if (name)
  {
    *name = [v5 displayName];
  }

  return sectionInfo;
}

- (id)_lock_sectionInfoFromListItem:(id)item sectionID:(id)d displayName:(id *)name
{
  itemCopy = item;
  dCopy = d;
  phoneSectionID = [itemCopy phoneSectionID];
  v11 = phoneSectionID;
  if (phoneSectionID)
  {
    v12 = phoneSectionID;
  }

  else
  {
    v12 = dCopy;
  }

  v13 = v12;
  if (v11)
  {
    v14 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v11];
  }

  else
  {
    v14 = itemCopy;
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

  v16 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:v13 displayName:name];
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
  overriddenDisplayName = [itemCopy overriddenDisplayName];

  if (name && overriddenDisplayName)
  {
    overriddenDisplayName2 = [itemCopy overriddenDisplayName];
    *name = [overriddenDisplayName2 copy];
  }

  if (v11)
  {
    [v17 setSectionID:dCopy];
  }

  overriddenIcon = [itemCopy overriddenIcon];

  if (overriddenIcon)
  {
    overriddenIcon2 = [itemCopy overriddenIcon];
    [v17 setIcon:overriddenIcon2];
  }

  overriddenFactorySectionID = [itemCopy overriddenFactorySectionID];

  if (overriddenFactorySectionID)
  {
    overriddenFactorySectionID2 = [itemCopy overriddenFactorySectionID];
    [v17 setFactorySectionID:overriddenFactorySectionID2];
  }

LABEL_23:

  return v17;
}

- (id)_overriddenSectionInfoForSectionID:(id)d originalSectionInfo:(id *)info displayName:(id *)name
{
  dCopy = d;
  v9 = objc_alloc_init(BLTSectionInfoOverrideApplier);
  pthread_mutex_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];
  v11 = [(BLTSectionInfoList *)self _lock_sectionInfoFromListItem:v10 sectionID:dCopy displayName:name];

  phoneSectionID = [v10 phoneSectionID];
  if (phoneSectionID)
  {
    v13 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:phoneSectionID];
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  overrides = [v13 overrides];
  v16 = [(BLTSectionInfoOverrideApplier *)v9 applyOverrides:overrides toSectionInfo:v11];

  pthread_mutex_unlock(&self->_lock);
  if (info)
  {
    v17 = v11;
    *info = v11;
  }

  return v16;
}

- (id)bbSectionInfoForSectionID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];
  v6 = [(BLTSectionInfoList *)self _lock_sectionInfoFromListItem:v5 sectionID:dCopy displayName:0];

  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (id)effectiveSectionInfoForSectionID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = 0;
  v5 = [(BLTSectionInfoList *)self _overriddenSectionInfoForSectionID:dCopy originalSectionInfo:&v16 displayName:&v15];
  v6 = v16;
  v7 = v15;
  pthread_mutex_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];
  v9 = BLTPBSectionInfoFromBBSectionInfo(v5);
  [v9 setPhoneAllowsNotifications:{objc_msgSend(v6, "allowsNotifications")}];
  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAuthorizationStatusLockScreenAndNCSettings])
  {
    [v9 setPhoneAuthorizationStatus:{objc_msgSend(v6, "authorizationStatus")}];
  }

  displayName = [v9 displayName];

  if (!displayName)
  {
    [v9 setDisplayName:v7];
  }

  universalSectionID = [v8 universalSectionID];

  if (universalSectionID)
  {
    universalSectionID2 = [v8 universalSectionID];
    [v9 setUniversalSectionID:universalSectionID2];
  }

  if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsEmergencyAlerts] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v9 setDisplaysCriticalBulletinsLegacy:{objc_msgSend(WeakRetained, "sectionInfoListSectionIDHadDisplayedCriticalBulletins:", dCopy)}];
  }

  pthread_mutex_unlock(&self->_lock);

  return v9;
}

- (id)universalSectionIDForSectionID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];

  universalSectionID = [v5 universalSectionID];
  pthread_mutex_unlock(&self->_lock);

  return universalSectionID;
}

- (void)updateOverrides:(id)overrides forSectionID:(id)d transaction:(id)transaction
{
  dCopy = d;
  transactionCopy = transaction;
  overridesCopy = overrides;
  pthread_mutex_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(BLTSectionInfoListItem);
    [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID setObject:v10 forKeyedSubscript:dCopy];
  }

  [(BLTSectionInfoList *)self _updateListItem:v10 overrides:overridesCopy sectionID:dCopy];
  pthread_mutex_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionInfoList:self receivedUpdatedSectionInfoForSectionID:dCopy transaction:transactionCopy];

  v12 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF3400]];

  if (v12 && [v12 BOOLValue])
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 sectionInfoList:self makeAuthorizationPermanentForSectionID:dCopy];
  }
}

- (void)updateSectionInfoForSectionIDs:(id)ds transaction:(id)transaction
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  transactionCopy = transaction;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [dsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        pthread_mutex_lock(&self->_lock);
        sectionInfoListItemsBySectionID = self->_sectionInfoListItemsBySectionID;
        sectionID = [v12 sectionID];
        v15 = [(NSMutableDictionary *)sectionInfoListItemsBySectionID objectForKeyedSubscript:sectionID];

        if (!v15)
        {
          v15 = objc_alloc_init(BLTSectionInfoListItem);
          v16 = self->_sectionInfoListItemsBySectionID;
          sectionID2 = [v12 sectionID];
          [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:sectionID2];
        }

        sectionInfoSectionIDs = self->_sectionInfoSectionIDs;
        sectionID3 = [v12 sectionID];
        [(NSMutableSet *)sectionInfoSectionIDs addObject:sectionID3];

        universalSectionID = [v12 universalSectionID];
        [(BLTSectionInfoListItem *)v15 setUniversalSectionID:universalSectionID];

        pthread_mutex_unlock(&self->_lock);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        sectionID4 = [v12 sectionID];
        [WeakRetained sectionInfoList:self receivedUpdatedSectionInfoForSectionID:sectionID4 transaction:transactionCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [dsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removedSectionWithSectionID:(id)d transaction:(id)transaction
{
  transactionCopy = transaction;
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID removeObjectForKey:dCopy];
  [(NSMutableSet *)self->_sectionInfoSectionIDs removeObject:dCopy];
  pthread_mutex_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionInfoList:self receivedRemoveSectionWithSectionID:dCopy transaction:transactionCopy];
}

- (id)overrides
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  pthread_mutex_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID allValues];
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        overrides = [v9 overrides];

        if (overrides)
        {
          overrides2 = [v9 overrides];
          [array addObject:overrides2];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  pthread_mutex_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)originalSettings
{
  v18 = *MEMORY[0x277D85DE8];
  sectionIDs = [(BLTSectionInfoList *)self sectionIDs];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = sectionIDs;
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
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)overriddenSettings
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  pthread_mutex_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID copy];
  pthread_mutex_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = [(BLTSectionInfoList *)self overriddenSectionInfoForSectionID:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [array addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)settingsDescriptionForSectionIDs:(id)ds
{
  v30 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  string = [MEMORY[0x277CCAB68] string];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = dsCopy;
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
        [string appendString:v11];

        pthread_mutex_lock(&self->_lock);
        v12 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:v10];
        overrides = [v12 overrides];

        if (overrides)
        {
          v14 = MEMORY[0x277CCACA8];
          overrides2 = [v12 overrides];
          v16 = [v14 stringWithFormat:@"overrides: %@\n", overrides2];
          [string appendString:v16];
        }

        pthread_mutex_unlock(&self->_lock);
        v24 = 0;
        v17 = [(BLTSectionInfoList *)self _overriddenSectionInfoForSectionID:v10 originalSectionInfo:&v24 displayName:0];
        v18 = v24;
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"originalSettings: %@\n", v18];
        [string appendString:v19];

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"overriddenSettings: %@\n---\n\n", v17];
        [string appendString:v20];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)sectionOverridesOnly
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pthread_mutex_lock(&self->_lock);
  v4 = MEMORY[0x277CBEB58];
  allKeys = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID allKeys];
  v6 = [v4 setWithArray:allKeys];

  [v6 minusSet:self->_sectionInfoSectionIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__BLTSectionInfoList_sectionOverridesOnly__block_invoke;
  v11[3] = &unk_278D325C8;
  v11[4] = self;
  v7 = dictionary;
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

- (id)sectionOverrideOnlyForSectionID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];
  v6 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:dCopy displayName:0];

  overrides = [v5 overrides];

  v8 = 0;
  if (overrides)
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
    overrides2 = [v5 overrides];
    v8 = [(BLTSectionInfoOverride *)v10 initWithOverrides:overrides2];
  }

  pthread_mutex_unlock(&self->_lock);

  return v8;
}

- (BOOL)hasCustomSettingsSetForSectionID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:dCopy];

  phoneSectionID = [v5 phoneSectionID];
  if (phoneSectionID)
  {
    v7 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:phoneSectionID];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  overrides = [v7 overrides];
  v10 = [overrides objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  bOOLValue = [v10 BOOLValue];

  pthread_mutex_unlock(&self->_lock);
  return bOOLValue;
}

- (void)_migrateFromExternalDeviceSwitchToOverrides:(id)overrides sectionID:(id)d
{
  overridesCopy = overrides;
  dCopy = d;
  overrides = [overridesCopy overrides];

  if (!overrides)
  {
    v8 = [(BLTSectionInfoList *)self _sectionInfoFromSectionID:dCopy displayName:0];
    v9 = v8;
    if (v8 && ([v8 showsOnExternalDevices] & 1) == 0 && (objc_msgSend(v9, "suppressFromSettings") & 1) == 0)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      sectionID = [v9 sectionID];
      [dictionary setObject:sectionID forKeyedSubscript:*MEMORY[0x277CF33E8]];

      [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CF33F8]];
      v12 = MEMORY[0x277CBEC38];
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF3400]];
      date = [MEMORY[0x277CBEAA8] date];
      [dictionary setObject:date forKeyedSubscript:*MEMORY[0x277CF3428]];

      [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CF3408]];
      v14 = objc_alloc(MEMORY[0x277D2BA58]);
      v15 = [v14 initWithDomain:*MEMORY[0x277CF33B8]];
      sectionID2 = [v9 sectionID];
      [v15 setObject:dictionary forKey:sectionID2];

      synchronize = [v15 synchronize];
      sectionID3 = [v9 sectionID];
      [(BLTSectionInfoList *)self _updateListItem:overridesCopy overrides:dictionary sectionID:sectionID3];
    }
  }
}

- (void)mapSection:(id)section map:(id)map
{
  sectionCopy = section;
  mapCopy = map;
  mappedSectionID = [mapCopy mappedSectionID];
  if (mappedSectionID)
  {
    pthread_mutex_lock(&self->_lock);
    v8 = [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID objectForKeyedSubscript:mappedSectionID];
    if (!v8)
    {
      v8 = objc_alloc_init(BLTSectionInfoListItem);
      [(NSMutableDictionary *)self->_sectionInfoListItemsBySectionID setObject:v8 forKeyedSubscript:mappedSectionID];
    }

    [(NSMutableSet *)self->_sectionInfoSectionIDs addObject:mappedSectionID];
    mappedParentSectionID = [mapCopy mappedParentSectionID];
    [(BLTSectionInfoListItem *)v8 setOverriddenFactorySectionID:mappedParentSectionID];

    [(BLTSectionInfoListItem *)v8 setPhoneSectionID:sectionCopy];
    displayName = [mapCopy displayName];
    [(BLTSectionInfoListItem *)v8 setOverriddenDisplayName:displayName];

    icon = [mapCopy icon];
    [(BLTSectionInfoListItem *)v8 setOverriddenIcon:icon];

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