@interface NTKCUpNextDataSourcesManager
- (NTKCUpNextDataSourcesManagerIdentifiersDelegate)firstPartyIdentifiersDelegate;
- (NTKCUpNextDataSourcesManagerIdentifiersDelegate)sportsIdentifiersDelegate;
- (NTKCUpNextDataSourcesManagerIdentifiersDelegate)thirdPartyIdentifiersDelegate;
- (id)_dedupeAndSortFirstPartyDataSourcesFromIdentifiers:(id)a3;
- (id)_firstPartyDataSourceEntries;
- (id)_preGraceThirdPartyBundleIdentifiers;
- (id)initWatchVersion:(id *)a3;
- (void)_appsChangedNotification:(id)a3;
- (void)_buildRows;
- (void)_buildRowsAfterPrewarming;
- (void)_dataSourcesChangedNotification:(id)a3;
- (void)_fetchThirdPartyBundleIdentifiersWithCompletion:(id)a3;
- (void)_phoneDedupeFromIdentifiers:(id)a3 completion:(id)a4;
- (void)_phoneDedupedDataSourcesFromIdentifiers:(id)a3 completion:(id)a4;
- (void)_prewarmRowBuildingWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation NTKCUpNextDataSourcesManager

- (id)initWatchVersion:(id *)a3
{
  v22.receiver = self;
  v22.super_class = NTKCUpNextDataSourcesManager;
  v4 = [(NTKCUpNextDataSourcesManager *)&v22 init];
  if (v4)
  {
    v5 = +[NTKRelevanceEngineCache sharedCache];
    v6 = [v5 canonicalRelevanceEngine];
    v7 = *(v4 + 1);
    *(v4 + 1) = v6;

    v8 = *&a3->var0;
    *(v4 + 11) = a3->var2;
    *(v4 + 72) = v8;
    v9 = [MEMORY[0x277CBEA60] array];
    v10 = *(v4 + 2);
    *(v4 + 2) = v9;

    v11 = [MEMORY[0x277CBEA60] array];
    v12 = *(v4 + 4);
    *(v4 + 4) = v11;

    v13 = [MEMORY[0x277CBEA60] array];
    v14 = *(v4 + 3);
    *(v4 + 3) = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v16 = dispatch_queue_create("com.apple.upnext.datasources.fetcher", v15);
    v17 = *(v4 + 8);
    *(v4 + 8) = v16;

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v4 selector:sel__appsChangedNotification_ name:@"NTKSystemAppStateChangedNotification" object:0];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v4 selector:sel__dataSourcesChangedNotification_ name:*MEMORY[0x277D444C8] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _dataSourcesDidChange, @"com.apple.NanoTimeKit.NPS.NTKSiriDefaultsThirdPartyDataSourcesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = NTKCUpNextDataSourcesManager;
  [(NTKCUpNextDataSourcesManager *)&v4 dealloc];
}

- (void)_appsChangedNotification:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 object];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKSystemAppStateChangedNotification will rebuild rows - %@", &v7, 0xCu);
  }

  [(NTKCUpNextDataSourcesManager *)self fetchIdentifiers];
}

- (void)_dataSourcesChangedNotification:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 object];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "REAvailableDataSourceIdentifiersDidChange will rebuild rows - %@", &v7, 0xCu);
  }

  [(NTKCUpNextDataSourcesManager *)self fetchIdentifiers];
}

- (id)_preGraceThirdPartyBundleIdentifiers
{
  v2 = [MEMORY[0x277CBBAE8] activePDRDevice];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pairingID];
    v5 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__NTKCUpNextDataSourcesManager__preGraceThirdPartyBundleIdentifiers__block_invoke;
    v14[3] = &unk_2787807D8;
    v8 = v6;
    v15 = v8;
    v16 = v5;
    v17 = v4;
    v9 = v4;
    v10 = v5;
    [v7 enumerateBundlesOfType:1 block:v14];

    v11 = v17;
    v12 = v8;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB58] set];
  }

  return v12;
}

void __68__NTKCUpNextDataSourcesManager__preGraceThirdPartyBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v21 = [v18 bundleIdentifier];
  v19 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v21];
  v3 = [v19 applicationType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CC1E30]];

  if ((v4 & 1) == 0)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v5 = getINAppInfoClass_softClass;
    v34 = getINAppInfoClass_softClass;
    if (!getINAppInfoClass_softClass)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __getINAppInfoClass_block_invoke;
      v30[3] = &unk_27877F258;
      v30[4] = &v31;
      __getINAppInfoClass_block_invoke(v30);
      v5 = v32[3];
    }

    v6 = v5;
    _Block_object_dispose(&v31, 8);
    v17 = [v5 appInfoWithAppProxy:v19];
    v7 = [v17 supportedActionsByExtensions];
    v8 = [v7 count] == 0;

    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = [v19 counterpartIdentifiers];
      v9 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v9)
      {
        v10 = *v27;
        do
        {
          v11 = 0;
          do
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v26 + 1) + 8 * v11);
            v13 = dispatch_group_create();
            dispatch_group_enter(v13);
            v15 = *(a1 + 40);
            v14 = *(a1 + 48);
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __68__NTKCUpNextDataSourcesManager__preGraceThirdPartyBundleIdentifiers__block_invoke_2;
            v22[3] = &unk_2787807B0;
            v23 = *(a1 + 32);
            v24 = v21;
            v25 = v13;
            v16 = v13;
            [v15 fetchApplicationOnDeviceWithPairingID:v14 withBundleID:v12 completion:v22];
            dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

            ++v11;
          }

          while (v9 != v11);
          v9 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v9);
      }
    }

    else
    {
      [*(a1 + 32) addObject:v21];
    }
  }
}

void __68__NTKCUpNextDataSourcesManager__preGraceThirdPartyBundleIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 intentsSupported];
  v4 = [v3 userActivityTypes];

  if ([v5 count] || objc_msgSend(v4, "count"))
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)_dedupeAndSortFirstPartyDataSourcesFromIdentifiers:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v61 = self;
  v5 = [(RERelevanceEngine *)self->_relevanceEngine dataSourceCatalog];
  v71 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v70 = v4;
  obj = [v4 copy];
  v7 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v90;
    v62 = *v90;
    v63 = v5;
    do
    {
      v10 = 0;
      v64 = v8;
      do
      {
        if (*v90 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v89 + 1) + 8 * v10);
        v12 = RERemoteApplicationIdentifierForLocalApplication();
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

        v15 = v14;

        v16 = [v5 localizedNameForDataSourceWithIdentifier:v15];
        if (v16)
        {
          v17 = [v5 applicationIdentifierForDataSourceWithIdentifier:v15];
          if (v17)
          {
            v68 = v17;
            v18 = [v71 objectForKeyedSubscript:v16];
            v69 = v15;
            v66 = v10;
            v67 = v16;
            if (v18)
            {
              v19 = v18;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v20 = v15;
              v21 = [MEMORY[0x277CBEB40] orderedSetWithObject:v20];
              v22 = RERemoteApplicationIdentifierForLocalApplication();
              if (v22)
              {
                [v21 addObject:v22];
              }

              v23 = RELocalApplicationIdentifierForRemoteApplication();
              if (v23)
              {
                [v21 addObject:v23];
              }

              v24 = [v21 copy];

              v25 = [v24 countByEnumeratingWithState:&v85 objects:v95 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v86;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v86 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    [v19 addObject:*(*(&v85 + 1) + 8 * i)];
                  }

                  v26 = [v24 countByEnumeratingWithState:&v85 objects:v95 count:16];
                }

                while (v26);
              }
            }

            else
            {
              v29 = v15;
              v30 = [MEMORY[0x277CBEB40] orderedSetWithObject:v29];
              v31 = RERemoteApplicationIdentifierForLocalApplication();
              if (v31)
              {
                [v30 addObject:v31];
              }

              v32 = RELocalApplicationIdentifierForRemoteApplication();
              if (v32)
              {
                [v30 addObject:v32];
              }

              v33 = [v30 copy];

              v19 = [v33 mutableCopy];
              if (![(NTKCUpNextDataSourcesManager *)v61 _isNanoWeatherAppID:v68])
              {
                [v19 addObject:v68];
              }

              [v71 setObject:v19 forKeyedSubscript:v67];
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v34 = v15;
            v35 = [MEMORY[0x277CBEB40] orderedSetWithObject:v34];
            v36 = RERemoteApplicationIdentifierForLocalApplication();
            if (v36)
            {
              [v35 addObject:v36];
            }

            v37 = RELocalApplicationIdentifierForRemoteApplication();
            if (v37)
            {
              [v35 addObject:v37];
            }

            v38 = [v35 copy];

            v39 = [v38 countByEnumeratingWithState:&v81 objects:v94 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v82;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v82 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v43 = *(*(&v81 + 1) + 8 * j);
                  if (([v43 isEqualToString:v34] & 1) == 0)
                  {
                    v44 = [v6 objectForKeyedSubscript:v43];
                    v45 = v44;
                    if (v44)
                    {
                      if (([v44 isEqualToString:v34] & 1) == 0)
                      {
                        [v70 removeObject:v43];
                        v46 = [v71 objectForKeyedSubscript:v45];
                        [v46 removeObject:v43];
                      }
                    }

                    else
                    {
                      [v6 setObject:v34 forKeyedSubscript:v43];
                    }
                  }
                }

                v40 = [v38 countByEnumeratingWithState:&v81 objects:v94 count:16];
              }

              while (v40);
            }

            v9 = v62;
            v5 = v63;
            v8 = v64;
            v10 = v66;
            v16 = v67;
            v17 = v68;
            v15 = v69;
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    }

    while (v8);
  }

  v80 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  v47 = [v70 copy];
  v48 = [v47 countByEnumeratingWithState:&v77 objects:v93 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v78;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v78 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v77 + 1) + 8 * k);
        v53 = [v5 applicationIdentifierForDataSourceWithIdentifier:v52];
        if (v53 && ([v52 isEqualToString:v53] & 1) == 0)
        {
          v54 = [v5 localizedNameForDataSourceWithIdentifier:v52];
          if (v54 && ![(NTKCUpNextDataSourcesManager *)v61 _isNanoWeatherAppID:v53])
          {
            v55 = [v71 objectForKeyedSubscript:v54];
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __83__NTKCUpNextDataSourcesManager__dedupeAndSortFirstPartyDataSourcesFromIdentifiers___block_invoke;
            v74[3] = &unk_278780808;
            v75 = v54;
            v76 = v55;
            v56 = v55;
            [v71 enumerateKeysAndObjectsUsingBlock:v74];
          }
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v77 objects:v93 count:16];
    }

    while (v49);
  }

  v57 = [MEMORY[0x277CBEB18] array];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __83__NTKCUpNextDataSourcesManager__dedupeAndSortFirstPartyDataSourcesFromIdentifiers___block_invoke_2;
  v72[3] = &unk_278780830;
  v73 = v57;
  v58 = v57;
  [v71 enumerateKeysAndObjectsUsingBlock:v72];
  v59 = [v58 sortedArrayUsingComparator:&__block_literal_global_42];

  return v59;
}

void __83__NTKCUpNextDataSourcesManager__dedupeAndSortFirstPartyDataSourcesFromIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) minusOrderedSet:v5];
  }
}

void __83__NTKCUpNextDataSourcesManager__dedupeAndSortFirstPartyDataSourcesFromIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [NTKUpNextDataSourceEntry alloc];
  v9 = [v5 set];

  v8 = [(NTKUpNextDataSourceEntry *)v7 initWithDataSourceIdentifiers:v9 localizedName:v6 isDonation:0];
  [v4 addObject:v8];
}

uint64_t __83__NTKCUpNextDataSourcesManager__dedupeAndSortFirstPartyDataSourcesFromIdentifiers___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_firstPartyDataSourceEntries
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(RERelevanceEngine *)self->_relevanceEngine dataSourceCatalog];
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28418ADF8];
  if (NTKInternalBuild(v4, v5))
  {
    v6 = [v4 setByAddingObjectsFromArray:&unk_28418AE10];

    v4 = v6;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  [(NTKCUpNextDataSourcesManager *)self watchVersion];
  v7 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (v3)
        {
          [v3 minimumSupportedSystemVersionForDataSourceWithIdentifier:v13];
        }

        if (v22 >= 0 && ([v13 isEqualToString:@"com.apple.upnext.siri.sports"] & 1) == 0)
        {
          v14 = [v3 localizedNameForDataSourceWithIdentifier:v13];

          if (v14)
          {
            v15 = [v3 applicationIdentifierForDataSourceWithIdentifier:v13];

            if (v15)
            {
              [v7 addObject:v13];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [(NTKCUpNextDataSourcesManager *)self _dedupeAndSortFirstPartyDataSourcesFromIdentifiers:v7];

  return v16;
}

- (void)_phoneDedupedDataSourcesFromIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 count])
    {
      v8 = [(RERelevanceEngine *)self->_relevanceEngine dataSourceCatalog];
      v9 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__NTKCUpNextDataSourcesManager__phoneDedupedDataSourcesFromIdentifiers_completion___block_invoke;
      block[3] = &unk_27877DC88;
      v12 = v6;
      v13 = v8;
      v14 = v7;
      v10 = v8;
      dispatch_async(v9, block);
    }

    else
    {
      v10 = [MEMORY[0x277CBEAC0] dictionary];
      (*(v7 + 2))(v7, v10);
    }
  }
}

void __83__NTKCUpNextDataSourcesManager__phoneDedupedDataSourcesFromIdentifiers_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(a1 + 32) copy];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = RERemoteApplicationIdentifierForLocalApplication();
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }

        v12 = v11;

        v13 = [*(a1 + 40) localizedNameForApplicationWithIdentifier:v12];
        if (v13)
        {
          v14 = [v2 objectForKey:v13];
          if (!v14)
          {
            v14 = [MEMORY[0x277CBEB58] set];
            [v2 setObject:v14 forKey:v13];
          }

          [v14 addObject:v12];
          [v14 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = *(a1 + 48);
  v16 = [v2 copy];
  (*(v15 + 16))(v15, v16);
}

- (void)_phoneDedupeFromIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke;
  v9[3] = &unk_2787808A0;
  v10 = v6;
  v8 = v6;
  [(NTKCUpNextDataSourcesManager *)self _phoneDedupedDataSourcesFromIdentifiers:v7 completion:v9];
}

void __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke_2;
  v5[3] = &unk_27877FF60;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke_3;
  v7[3] = &unk_278780878;
  v4 = v2;
  v8 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_151_0];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [NTKUpNextDataSourceEntry alloc];
  v9 = [v5 copy];

  v8 = [(NTKUpNextDataSourceEntry *)v7 initWithDataSourceIdentifiers:v9 localizedName:v6 isDonation:1];
  [v4 addObject:v8];
}

uint64_t __71__NTKCUpNextDataSourcesManager__phoneDedupeFromIdentifiers_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_fetchThirdPartyBundleIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NTKSiriDefaults sharedInstance];
  v6 = [v5 watchHasMigratedAvailableDataSources];

  v7 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *v16 = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Watch has migrated available data sources. Using defaults.", v16, 2u);
    }

    v9 = [MEMORY[0x277CBEB58] set];
    v10 = +[NTKSiriDefaults sharedInstance];
    v11 = [v10 watchThirdPartyDataSources];
    v12 = [v11 allObjects];
    [v9 addObjectsFromArray:v12];

    v13 = +[NTKSiriDefaults sharedInstance];
    v14 = [v13 phoneThirdPartyDataSources];
    v15 = [v14 allObjects];
    [v9 addObjectsFromArray:v15];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Watch has not migrated available data sources. Using legacy path.", buf, 2u);
    }

    v9 = [(NTKCUpNextDataSourcesManager *)self _preGraceThirdPartyBundleIdentifiers];
  }

  [(NTKCUpNextDataSourcesManager *)self _dedupeAndSortThirdPartyDataSourcesFromIdentifiers:v9 completion:v4];
}

- (void)_buildRows
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NTKCUpNextDataSourcesManager__buildRows__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__NTKCUpNextDataSourcesManager__buildRows__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__NTKCUpNextDataSourcesManager__buildRows__block_invoke_2;
  v3[3] = &unk_27877DB10;
  v3[4] = v1;
  return [v1 _prewarmRowBuildingWithCompletion:v3];
}

- (void)_prewarmRowBuildingWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(RERelevanceEngine *)self->_relevanceEngine dataSourceCatalog];
  v6 = [v5 dataSourceIdentifiers];
  v7 = [v6 copy];

  v8 = dispatch_get_global_queue(2, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__NTKCUpNextDataSourcesManager__prewarmRowBuildingWithCompletion___block_invoke;
  v12[3] = &unk_2787808C8;
  v13 = v7;
  v14 = v5;
  v15 = self;
  v16 = v4;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  dispatch_async(v8, v12);
}

void __66__NTKCUpNextDataSourcesManager__prewarmRowBuildingWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) localizedNameForApplicationWithIdentifier:*(*(&v11 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__NTKCUpNextDataSourcesManager__prewarmRowBuildingWithCompletion___block_invoke_2;
  v9[3] = &unk_27877FF60;
  v8 = *(a1 + 56);
  v9[4] = *(a1 + 48);
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __66__NTKCUpNextDataSourcesManager__prewarmRowBuildingWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _buildRowsAfterPrewarming];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_buildRowsAfterPrewarming
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NTKCUpNextDataSourcesManager *)self _firstPartyDataSourceEntries];
  [(NTKCUpNextDataSourcesManager *)self setFirstPartyDataSourceEntries:v3];

  v4 = [(NTKCUpNextDataSourcesManager *)self firstPartyIdentifiersDelegate];
  v5 = [(NTKCUpNextDataSourcesManager *)self firstPartyDataSourceEntries];
  [v4 manager:self didUpdateDataSourceEntries:v5];

  [(NTKCUpNextDataSourcesManager *)self watchVersion];
  if (v8[5] >= 5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke;
    v8[3] = &unk_27877EC80;
    v8[4] = self;
    [(NTKCUpNextDataSourcesManager *)self _fetchThirdPartyBundleIdentifiersWithCompletion:v8];
    fetchQueue = self->_fetchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_3;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(fetchQueue, block);
  }
}

void __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_2;
  v5[3] = &unk_27877E438;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setThirdPartyDataSourceEntries:*(a1 + 40)];
  v4 = [*(a1 + 32) thirdPartyIdentifiersDelegate];
  v2 = *(a1 + 32);
  v3 = [v2 thirdPartyDataSourceEntries];
  [v4 manager:v2 didUpdateDataSourceEntries:v3];
}

void __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_3(uint64_t a1)
{
  if (WatchListKitLibraryCore())
  {
    v9 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getWLKIsSportsEnabledSymbolLoc_ptr;
    v14 = getWLKIsSportsEnabledSymbolLoc_ptr;
    if (!getWLKIsSportsEnabledSymbolLoc_ptr)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getWLKIsSportsEnabledSymbolLoc_block_invoke;
      v10[3] = &unk_27877F258;
      v10[4] = &v11;
      __getWLKIsSportsEnabledSymbolLoc_block_invoke(v10);
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      v6 = __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_3_cold_2();
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(v6);
    }

    v3 = v2(&v9);
    v4 = v9;
    if (v4)
    {
      v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_3_cold_1(v4, v5);
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_155;
  v7[3] = &unk_27877F7E8;
  v7[4] = *(a1 + 32);
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_155(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) dataSourceCatalog];
  v3 = [v2 dataSourceIdentifiers];
  v4 = [v3 containsObject:@"com.apple.upnext.siri.sports"];

  if (*(a1 + 40) == 1 && v4 != 0)
  {
    v6 = [v2 localizedNameForDataSourceWithIdentifier:@"com.apple.upnext.siri.sports"];
    v7 = [NTKUpNextDataSourceEntry alloc];
    v8 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.upnext.siri.sports"];
    v9 = [(NTKUpNextDataSourceEntry *)v7 initWithDataSourceIdentifiers:v8 localizedName:v6 isDonation:0];

    v10 = *(a1 + 32);
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v10 setSportsDataSourceEntries:v11];

    v12 = [*(a1 + 32) sportsIdentifiersDelegate];
    v13 = *(a1 + 32);
    v14 = [v13 sportsDataSourceEntries];
    [v12 manager:v13 didUpdateDataSourceEntries:v14];
  }
}

- (NTKCUpNextDataSourcesManagerIdentifiersDelegate)firstPartyIdentifiersDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_firstPartyIdentifiersDelegate);

  return WeakRetained;
}

- (NTKCUpNextDataSourcesManagerIdentifiersDelegate)thirdPartyIdentifiersDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_thirdPartyIdentifiersDelegate);

  return WeakRetained;
}

- (NTKCUpNextDataSourcesManagerIdentifiersDelegate)sportsIdentifiersDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sportsIdentifiersDelegate);

  return WeakRetained;
}

void __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Error checking sports: %@", &v2, 0xCu);
}

uint64_t __57__NTKCUpNextDataSourcesManager__buildRowsAfterPrewarming__block_invoke_3_cold_2()
{
  dlerror();
  abort_report_np();
  return __getINAppInfoClass_block_invoke_cold_1();
}

@end