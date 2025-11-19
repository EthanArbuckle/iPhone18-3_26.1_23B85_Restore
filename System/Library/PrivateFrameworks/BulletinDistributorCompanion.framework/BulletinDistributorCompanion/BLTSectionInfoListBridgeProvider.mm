@interface BLTSectionInfoListBridgeProvider
- (BLTSectionInfoListBridgeProvider)initWithSectionConfiguration:(id)a3;
- (BLTSectionInfoListProviderDelegate)delegate;
- (id)_companionSetupNotificationSettingsDictionaryForSectionInfo:(id)a3 sectionID:(id)a4;
- (id)_loadOverridesChangedSince:(id)a3;
- (void)_reloadUpdatedOverrides;
- (void)_reloadUpdatedOverridesWithCompletion:(id)a3;
- (void)dealloc;
- (void)enableCustomSettingsForWatchSectionID:(id)a3;
- (void)reloadWithCompletion:(id)a3;
- (void)removeSectionWithSectionID:(id)a3;
- (void)setCustomSettingsWithSectionInfo:(id)a3;
- (void)setCustomSettingsWithSectionInfo:(id)a3 watchSectionID:(id)a4;
- (void)setNotificationsLevel:(int)a3 sectionID:(id)a4 forceCustom:(BOOL)a5;
@end

@implementation BLTSectionInfoListBridgeProvider

- (BLTSectionInfoListBridgeProvider)initWithSectionConfiguration:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BLTSectionInfoListBridgeProvider;
  v6 = [(BLTSectionInfoListBridgeProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionConfiguration, a3);
    v8 = objc_alloc(MEMORY[0x277D2BA58]);
    v9 = [v8 initWithDomain:*MEMORY[0x277CF33B8]];
    npsDomainAccessor = v7->_npsDomainAccessor;
    v7->_npsDomainAccessor = v9;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, BBSectionsChanged, *MEMORY[0x277CF33C0], 0, 0);
  }

  return v7;
}

- (void)reloadWithCompletion:(id)a3
{
  v6 = a3;
  pthread_mutex_lock(&self->_lock);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  lastKnownBridgeSettingsChangeDate = self->_lastKnownBridgeSettingsChangeDate;
  self->_lastKnownBridgeSettingsChangeDate = v4;

  pthread_mutex_unlock(&self->_lock);
  [(BLTSectionInfoListBridgeProvider *)self _reloadUpdatedOverridesWithCompletion:v6];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CF33C0], 0);
  v4.receiver = self;
  v4.super_class = BLTSectionInfoListBridgeProvider;
  [(BLTSectionInfoListBridgeProvider *)&v4 dealloc];
}

- (void)_reloadUpdatedOverrides
{
  v3 = [BLTTransaction transactionWithDescription:@"BLTSectionInfoListBridgeProvider _reloadUpdatedOverrides"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BLTSectionInfoListBridgeProvider__reloadUpdatedOverrides__block_invoke;
  v5[3] = &unk_278D31DE8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(BLTSectionInfoListBridgeProvider *)self _reloadUpdatedOverridesWithCompletion:v5];
}

void __59__BLTSectionInfoListBridgeProvider__reloadUpdatedOverrides__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__BLTSectionInfoListBridgeProvider__reloadUpdatedOverrides__block_invoke_2;
  v4[3] = &unk_278D31DC0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __59__BLTSectionInfoListBridgeProvider__reloadUpdatedOverrides__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  BLTAnalyticsLogMirroredNotificationsOverrides(v6, v5);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained updateOverrides:v5 forSectionID:v6 transaction:*(a1 + 40)];
}

- (void)_reloadUpdatedOverridesWithCompletion:(id)a3
{
  v9 = a3;
  pthread_mutex_lock(&self->_lock);
  v4 = MEMORY[0x277CBEAA8];
  v5 = self->_lastKnownBridgeSettingsChangeDate;
  v6 = [v4 date];
  lastKnownBridgeSettingsChangeDate = self->_lastKnownBridgeSettingsChangeDate;
  self->_lastKnownBridgeSettingsChangeDate = v6;

  pthread_mutex_unlock(&self->_lock);
  v8 = [(BLTSectionInfoListBridgeProvider *)self _loadOverridesChangedSince:v5];

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (id)_loadOverridesChangedSince:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = blt_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v4;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Reloading Bridge settings changed after date: %@", buf, 0xCu);
  }

  v6 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
  v7 = [(NPSDomainAccessor *)self->_npsDomainAccessor copyKeyList];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = blt_settings_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = [v7 count];
      *buf = 134217984;
      v50 = v11;
      _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Bridge settings found with count: %lu", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = v7;
    obj = v7;
    v36 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v36)
    {
      v12 = *v42;
      v13 = *MEMORY[0x277CF3428];
      v33 = self;
      v34 = v4;
      v32 = *MEMORY[0x277CF3428];
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * i);
          v16 = [(NPSDomainAccessor *)self->_npsDomainAccessor dictionaryForKey:v15, v31];
          v17 = [v16 objectForKeyedSubscript:v13];
          v18 = [v17 earlierDate:v4];

          if (v18 == v4)
          {
            v19 = [(BLTSectionInfoListBridgeProvider *)self sectionConfiguration];
            v20 = [v19 additionalBridgeSectionIDsForSectionID:v15];

            if (v20)
            {
              v47 = v15;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
              v22 = [v21 arrayByAddingObjectsFromArray:v20];
            }

            else
            {
              v46 = v15;
              v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
            }

            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v23 = v22;
            v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v38;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v38 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [v8 setObject:v16 forKeyedSubscript:*(*(&v37 + 1) + 8 * j)];
                }

                v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v25);
            }

            self = v33;
            v4 = v34;
            v13 = v32;
          }
        }

        v36 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v36);
    }

    v9 = blt_settings_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v8 count];
      *buf = 134217984;
      v50 = v28;
      _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Relevant Bridge setting count: %lu", buf, 0xCu);
    }

    v7 = v31;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "No Bridge settings could be found", buf, 2u);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setNotificationsLevel:(int)a3 sectionID:(id)a4 forceCustom:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [BLTTransaction transactionWithDescription:@"BLTSectionInfoListBridgeProvider setNotificationsLevel:sectionID:forceCustom:"];
  v10 = objc_alloc(MEMORY[0x277D2BA58]);
  v11 = [v10 initWithDomain:*MEMORY[0x277CF33B8]];
  v12 = [v11 synchronize];
  v13 = [v11 dictionaryForKey:v8];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x277CF3400];
  v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  v17 = [v16 BOOLValue];

  if ((v17 & 1) != 0 || v5)
  {
    v18 = blt_settings_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v8;
      _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_INFO, "Disabling notification in bridge for %@", &v27, 0xCu);
    }

    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v15];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 2];
    [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x277CF33F8]];

    v20 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 1];
    [v14 setObject:v20 forKeyedSubscript:*MEMORY[0x277CF33F0]];

    v21 = *MEMORY[0x277CF33E8];
    v22 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF33E8]];

    if (!v22)
    {
      [v14 setObject:v8 forKeyedSubscript:v21];
    }

    v23 = [MEMORY[0x277CBEAA8] date];
    [v14 setObject:v23 forKeyedSubscript:*MEMORY[0x277CF3428]];

    [v11 setObject:v14 forKey:v8];
    v24 = [v11 synchronize];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateOverrides:v14 forSectionID:v8 transaction:v9];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setCustomSettingsWithSectionInfo:(id)a3
{
  v12 = a3;
  v4 = [BLTTransaction transactionWithDescription:@"BLTSectionInfoListBridgeProvider setCustomSettingsWithSectionInfo:"];
  v5 = [v12 sectionID];
  v6 = [(BLTSectionInfoListBridgeProvider *)self _companionSetupNotificationSettingsDictionaryForSectionInfo:v12 sectionID:v5];

  if (v6)
  {
    npsDomainAccessor = self->_npsDomainAccessor;
    v8 = [v12 sectionID];
    [(NPSDomainAccessor *)npsDomainAccessor setObject:v6 forKey:v8];

    v9 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [v12 sectionID];
    [WeakRetained updateOverrides:v6 forSectionID:v11 transaction:v4];
  }
}

- (void)setCustomSettingsWithSectionInfo:(id)a3 watchSectionID:(id)a4
{
  v6 = a4;
  v7 = [(BLTSectionInfoListBridgeProvider *)self _companionSetupNotificationSettingsDictionaryForSectionInfo:a3 sectionID:v6];
  v8 = v7;
  if (a3 && v7)
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CF3400]];
    v9 = BLTWorkQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__BLTSectionInfoListBridgeProvider_setCustomSettingsWithSectionInfo_watchSectionID___block_invoke;
    block[3] = &unk_278D316C8;
    block[4] = self;
    v11 = v8;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (id)_companionSetupNotificationSettingsDictionaryForSectionInfo:(id)a3 sectionID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
    v9 = [(NPSDomainAccessor *)self->_npsDomainAccessor dictionaryForKey:v7];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v11 = blt_settings_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v7;
        _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_INFO, "Creating new settings for app %@", &v24, 0xCu);
      }

      v10 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF3400]];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "blt_overrideShowsAlerts")}];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277CF33F8]];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "blt_overrideSendToNotificationCenter")}];
    [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277CF33F0]];

    v14 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v6, "pushSettings") >> 4) & 1}];
    [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x277CF3410]];

    if ([v6 criticalAlertSetting])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "criticalAlertSetting") == 2}];
      [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x277CF33E0]];
    }

    else
    {
      [v10 removeObjectForKey:*MEMORY[0x277CF33E0]];
    }

    v17 = [v6 bulletinGroupingSetting];
    v18 = &unk_28544B550;
    if (v17 == 1)
    {
      v18 = &unk_28544B538;
    }

    if (v17 == 2)
    {
      v19 = &unk_28544B520;
    }

    else
    {
      v19 = v18;
    }

    [v10 setObject:v19 forKeyedSubscript:*MEMORY[0x277CF33D8]];
    v20 = *MEMORY[0x277CF33E8];
    v21 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF33E8]];

    if (!v21)
    {
      [v10 setObject:v7 forKeyedSubscript:v20];
    }

    v16 = [MEMORY[0x277CBEAA8] date];
    [v10 setObject:v16 forKeyedSubscript:*MEMORY[0x277CF3428]];
  }

  else
  {
    v16 = blt_settings_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BLTSectionInfoListBridgeProvider _companionSetupNotificationSettingsDictionaryForSectionInfo:v16 sectionID:?];
    }

    v10 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)enableCustomSettingsForWatchSectionID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
    v6 = [(NPSDomainAccessor *)self->_npsDomainAccessor dictionaryForKey:v4];
    v7 = [v6 mutableCopy];

    if (v7)
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF3400]];
      [(NPSDomainAccessor *)self->_npsDomainAccessor setObject:v7 forKey:v4];
      v8 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
    }

    else
    {
      v9 = blt_settings_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(BLTSectionInfoListBridgeProvider *)v4 enableCustomSettingsForWatchSectionID:v9];
      }
    }
  }

  else
  {
    v7 = blt_settings_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BLTSectionInfoListBridgeProvider _companionSetupNotificationSettingsDictionaryForSectionInfo:v7 sectionID:?];
    }
  }
}

- (void)removeSectionWithSectionID:(id)a3
{
  npsDomainAccessor = self->_npsDomainAccessor;
  v5 = a3;
  v6 = [(NPSDomainAccessor *)npsDomainAccessor synchronize];
  [(NPSDomainAccessor *)self->_npsDomainAccessor removeObjectForKey:v5];

  v7 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
}

- (BLTSectionInfoListProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)enableCustomSettingsForWatchSectionID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Settings not found for app %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end