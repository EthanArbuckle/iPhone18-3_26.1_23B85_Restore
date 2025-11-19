@interface DSSharingPermissions
+ (void)initialize;
- (BOOL)shouldAllowBundleIDWithNoPolicy:(id)a3;
- (DSSharingPermissions)init;
- (NSArray)allPeople;
- (NSArray)allPublicSharingTypes;
- (NSArray)allReadOnlySharingPeople;
- (NSArray)allReadOnlySharingTypes;
- (NSArray)allSharingTypes;
- (NSDictionary)elapsedUnfinishedFetchesBySource;
- (id)person:(int64_t)a3 withFilter:(BOOL)a4;
- (id)publicSharingType:(int64_t)a3;
- (id)readOnlySharingPerson:(int64_t)a3 withFilter:(BOOL)a4;
- (id)readOnlySharingType:(int64_t)a3 withFilter:(BOOL)a4;
- (id)sharingType:(int64_t)a3 withFilter:(BOOL)a4;
- (int64_t)peopleCountWithFilter:(BOOL)a3;
- (int64_t)publicSharingTypesCount;
- (int64_t)readOnlySharingPeopleCountWithFilter:(BOOL)a3;
- (int64_t)readOnlySharingTypesCountWithFilter:(BOOL)a3;
- (int64_t)sharingTypesCountWithFilter:(BOOL)a3;
- (void)_trackResourceForPublicAccess:(id)a3 source:(id)a4;
- (void)addParticipant:(id)a3 forSource:(id)a4 sharedResource:(id)a5 deviceOwnerRole:(int64_t)a6;
- (void)fetchCompletedForSource:(id)a3;
- (void)fetchPermissionsFromSources:(id)a3 includingErrors:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)fetchPermissionsOnQueue:(id)a3 completion:(id)a4;
- (void)fetchStartedForSource:(id)a3;
- (void)filterPeopleWithPredicate:(id)a3;
- (void)filterReadOnlySharingPeopleWithPredicate:(id)a3;
- (void)filterReadOnlySharingTypesWithPredicate:(id)a3;
- (void)filterSharingTypesWithPredicate:(id)a3;
- (void)removePerson:(id)a3;
- (void)removePerson:(id)a3 sources:(id)a4;
- (void)removePublicSharingType:(id)a3;
- (void)removeSharingType:(id)a3;
- (void)removeSharingType:(id)a3 people:(id)a4;
- (void)sort;
- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4;
- (void)verifyDataUsagePoliciesForSources:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation DSSharingPermissions

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogSharingPermissions = os_log_create("com.apple.DigitalSeparation", "DSSharingPermissions");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSharingPermissions)init
{
  v16.receiver = self;
  v16.super_class = DSSharingPermissions;
  v2 = [(DSSharingPermissions *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_permissionsLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setPeople:v4];

    v5 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setReadOnlySharingPeople:v5];

    v6 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setSharingTypes:v6];

    v7 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setPublicSharingTypes:v7];

    v8 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setReadOnlySharingTypes:v8];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [(DSSharingPermissions *)v3 setFetchStartTimesBySource:v9];

    v10 = dispatch_queue_create("com.apple.DigitalSeparation.SharingPermissions", 0);
    [(DSSharingPermissions *)v3 setWorkQueue:v10];

    v11 = dispatch_queue_create("com.apple.DigitalSeparation.DataUsageQueue", 0);
    [(DSSharingPermissions *)v3 setDataUsageQueue:v11];

    v12 = [(DSSharingPermissions *)v3 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__DSSharingPermissions_init__block_invoke;
    block[3] = &unk_278F72AC0;
    v15 = v3;
    dispatch_async(v12, block);
  }

  return v3;
}

void __28__DSSharingPermissions_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(DSMe);
  [*(a1 + 32) setMe:v2];
}

- (BOOL)shouldAllowBundleIDWithNoPolicy:(id)a3
{
  v3 = a3;
  v4 = +[DSUtilities allApps];
  v5 = ![v3 isEqualToString:@"com.apple.Health"] || objc_msgSend(v4, "containsObject:", v3);

  return v5;
}

- (void)verifyDataUsagePoliciesForSources:(id)a3 queue:(id)a4 completion:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a3;
  queue = a4;
  v37 = a5;
  v41 = [MEMORY[0x277CBEB18] array];
  v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = [v14 name];
        v16 = [DSSourceDescriptor sourceDescriptorForSource:v15];

        v17 = [v16 dataUsageBundleIdentifier];
        if (v17 && [(DSSharingPermissions *)self shouldAllowBundleIDWithNoPolicy:v17])
        {
          v18 = [v14 name];
          [v42 setObject:v18 forKeyedSubscript:v17];
        }

        v19 = [v14 name];
        [v8 setObject:v14 forKeyedSubscript:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v11);
  }

  v20 = v42;
  if ([v42 count])
  {
    v36 = v9;
    v21 = objc_alloc(MEMORY[0x277CC37B0]);
    v22 = [(DSSharingPermissions *)self dataUsageQueue];
    v23 = [v21 initWithQueue:v22];

    v24 = dispatch_group_create();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obja = [v42 allKeys];
    v25 = [obja countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(obja);
          }

          v29 = *(*(&v53 + 1) + 8 * j);
          dispatch_group_enter(v24);
          v30 = [MEMORY[0x277CBEB98] setWithObject:v29];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __75__DSSharingPermissions_verifyDataUsagePoliciesForSources_queue_completion___block_invoke;
          v47[3] = &unk_278F72AE8;
          v48 = v42;
          v49 = v29;
          v50 = v41;
          v51 = v24;
          v52 = v8;
          [v23 getLocalPolicies:v30 completion:v47];
        }

        v26 = [obja countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v26);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__DSSharingPermissions_verifyDataUsagePoliciesForSources_queue_completion___block_invoke_18;
    block[3] = &unk_278F72628;
    v31 = v37;
    v46 = v37;
    v44 = v8;
    v32 = v41;
    v45 = v41;
    v33 = queue;
    dispatch_group_notify(v24, queue, block);

    v20 = v42;
    v9 = v36;
  }

  else
  {
    v34 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C40000, v34, OS_LOG_TYPE_INFO, "All sources have required data usage policies", buf, 2u);
    }

    v31 = v37;
    v32 = v41;
    (*(v37 + 2))(v37, v9, v41);
    v33 = queue;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __75__DSSharingPermissions_verifyDataUsagePoliciesForSources_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  obj = v5;
  if (v6)
  {
    v7 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_ERROR))
    {
      __75__DSSharingPermissions_verifyDataUsagePoliciesForSources_queue_completion___block_invoke_cold_1(a1, v6, v7);
    }

    v8 = [DSError errorWithCode:5];
    v9 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v38[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v11 = [DSError errorWithCode:1 sourceName:v9 underlyingErrors:v10];

    [*(a1 + 48) addObject:v11];
    dispatch_group_leave(*(a1 + 56));

    v5 = obj;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = *(a1 + 32);
          v18 = [v16 bundleId];
          v19 = [v17 objectForKeyedSubscript:v18];

          v20 = DSLogSharingPermissions;
          if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v34 = v19;
            v35 = 2114;
            v36 = v16;
            _os_log_impl(&dword_248C40000, v20, OS_LOG_TYPE_INFO, "Got data usage policy for %{public}@: %{public}@", buf, 0x16u);
          }

          v21 = [MEMORY[0x277CC3658] ds_DataUsagePolicyWithPolicy:v16 sourceName:v19];
          if (v21)
          {
            v22 = DSLogSharingPermissions;
            if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v34 = v21;
              v35 = 2114;
              v36 = v19;
              _os_log_impl(&dword_248C40000, v22, OS_LOG_TYPE_DEFAULT, "Required policy %{public}@ for %{public}@ not met.", buf, 0x16u);
            }

            [*(a1 + 64) setObject:0 forKeyedSubscript:v19];
            v23 = [DSError errorWithCode:5];
            v32 = v23;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
            v25 = [DSError errorWithCode:1 sourceName:v19 underlyingErrors:v24];

            [*(a1 + 48) addObject:v25];
          }
        }

        v5 = obj;
        v13 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v13);
    }

    dispatch_group_leave(*(a1 + 56));
    v6 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __75__DSSharingPermissions_verifyDataUsagePoliciesForSources_queue_completion___block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) allValues];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

- (void)fetchPermissionsFromSources:(id)a3 includingErrors:(id)a4 queue:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v27 = a4;
  queue = a5;
  v11 = a6;
  v12 = os_signpost_id_generate(DSLogSharingPermissions);
  v13 = DSLogSharingPermissions;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "fetch", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithArray:v27];
  v16 = dispatch_group_create();
  objc_initWeak(&location, self);
  v17 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v40 = v10;
    _os_log_impl(&dword_248C40000, v17, OS_LOG_TYPE_INFO, "Fetching sharing permissions from sources: %{public}@", buf, 0xCu);
  }

  v18 = [v10 count];
  v19 = [(DSSharingPermissions *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke;
  block[3] = &unk_278F72B88;
  v33 = v16;
  v34 = v10;
  v20 = v10;
  v21 = v16;
  objc_copyWeak(&v37, &location);
  v22 = v15;
  v35 = v22;
  v36 = self;
  dispatch_apply(v18, v19, block);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_40;
  v28[3] = &unk_278F72BB0;
  v30 = v11;
  v31 = v12;
  v29 = v22;
  v23 = v11;
  v24 = v22;
  dispatch_group_notify(v21, queue, v28);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = os_signpost_id_generate(DSLogSharingPermissions);
  v6 = [v4 name];
  v7 = [v6 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

  if (v7)
  {
    v8 = DSLogSharingPermissions;
    v9 = v8;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Calendars", " enableTelemetry=YES ", buf, 2u);
    }

LABEL_55:

    goto LABEL_61;
  }

  v10 = [v4 name];
  v11 = [v10 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

  if (v11)
  {
    v12 = DSLogSharingPermissions;
    v9 = v12;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.FindMy", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v13 = [v4 name];
  v14 = [v13 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

  if (v14)
  {
    v15 = DSLogSharingPermissions;
    v9 = v15;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Photos", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v16 = [v4 name];
  v17 = [v16 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

  if (v17)
  {
    v18 = DSLogSharingPermissions;
    v9 = v18;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Home", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v19 = [v4 name];
  v20 = [v19 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

  if (v20)
  {
    v21 = DSLogSharingPermissions;
    v9 = v21;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Health", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v22 = [v4 name];
  v23 = [v22 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

  if (v23)
  {
    v24 = DSLogSharingPermissions;
    v9 = v24;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v25 = [v4 name];
  v26 = [v25 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

  if (v26)
  {
    v27 = DSLogSharingPermissions;
    v9 = v27;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Zelkova", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v28 = [v4 name];
  v29 = [v28 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

  if (v29)
  {
    v30 = DSLogSharingPermissions;
    v9 = v30;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Activity", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v31 = [v4 name];
  v32 = [v31 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

  if (v32)
  {
    v33 = DSLogSharingPermissions;
    v9 = v33;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Passkeys", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v34 = [v4 name];
  v35 = [v34 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

  if (v35)
  {
    v36 = DSLogSharingPermissions;
    v9 = v36;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.ItemSharing", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v37 = [v4 name];
  v38 = [v37 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

  v39 = DSLogSharingPermissions;
  v9 = v39;
  if (v38)
  {
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Maps", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch.Notes", " enableTelemetry=YES ", buf, 2u);
  }

  v40 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
  {
    __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_cold_1(v40, v4);
  }

LABEL_61:
  v41 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v56 = v4;
    _os_log_impl(&dword_248C40000, v41, OS_LOG_TYPE_INFO, "Fetching sharing permissions from %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v43 = [v4 name];
  [WeakRetained fetchStartedForSource:v43];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19;
  v48[3] = &unk_278F72B60;
  v44 = v4;
  v49 = v44;
  v50 = WeakRetained;
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  v51 = v45;
  v52 = v46;
  v53 = *(a1 + 32);
  objc_copyWeak(v54, (a1 + 64));
  v54[1] = v5;
  [v44 fetchSharedResourcesWithCompletion:v48];
  objc_destroyWeak(v54);

  v47 = *MEMORY[0x277D85DE8];
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 name];
    *buf = 138543875;
    v120 = v10;
    v121 = 2113;
    v122 = v5;
    v123 = 2050;
    v124 = [v5 count];
    _os_log_impl(&dword_248C40000, v9, OS_LOG_TYPE_INFO, "Finished fetching sharing permissions from %{public}@ with %{private}@ resources (%{public}lu)", buf, 0x20u);
  }

  v11 = *(a1 + 40);
  v12 = (a1 + 32);
  v13 = [*(a1 + 32) name];
  [v11 fetchCompletedForSource:v13];

  v14 = MEMORY[0x277CCA9B8];
  v15 = [*(a1 + 32) name];
  v16 = [v14 ds_errorFromIgnorableError:v6 sourceName:v15];

  if (v16)
  {
    v17 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_ERROR))
    {
      __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_1((a1 + 32), v17);
    }

    v18 = [*(a1 + 32) name];
    v118 = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
    v20 = [DSError errorWithCode:1 sourceName:v18 underlyingErrors:v19];

    [*(a1 + 48) addObject:v20];
    v109 = MEMORY[0x277D85DD0];
    v110 = 3221225472;
    v111 = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_24;
    v112 = &unk_278F72B10;
    v113 = v16;
    v114 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }

  else
  {
    v104 = MEMORY[0x277D85DD0];
    v105 = 3221225472;
    v106 = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_2;
    v107 = &unk_278F72B38;
    v108 = *v12;
    AnalyticsSendEventLazy();
    v20 = v108;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v21 = v5;
  v85 = [v21 countByEnumeratingWithState:&v100 objects:v117 count:16];
  if (v85)
  {
    v22 = *v101;
    v87 = v21;
    v88 = v16;
    v84 = *v101;
    do
    {
      v23 = 0;
      do
      {
        if (*v101 != v22)
        {
          objc_enumerationMutation(v21);
        }

        v86 = v23;
        v24 = *(*(&v100 + 1) + 8 * v23);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v25 = [v24 participants];
        v26 = [v25 countByEnumeratingWithState:&v96 objects:v116 count:16];
        if (v26)
        {
          v27 = v26;
          v90 = 0;
          v28 = 0;
          v91 = *v97;
          obj = v25;
          while (2)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v97 != v91)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v96 + 1) + 8 * i);
              v31 = [[DSSharingPerson alloc] initWithSource:*(a1 + 32) sharedResource:v24 participant:v30 deviceOwnerRole:v28];
              v32 = [*(a1 + 56) me];

              if (!v32)
              {
                if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
                {
                  __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_2();
                }

                dispatch_group_leave(*(a1 + 64));

                v21 = v87;
                v16 = v88;
                goto LABEL_89;
              }

              v33 = [*(a1 + 56) me];
              v34 = [(DSSharingPerson *)v31 isMe:v33];

              v35 = [v30 role];
              if (v34)
              {
                if (v35 == 2)
                {
                  if (v28 == 1)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = 2;
                  }
                }

                else if (v35 == 1)
                {
                  v28 = 1;
                }
              }

              else
              {
                v90 |= v35 == 1;
              }
            }

            v27 = [obj countByEnumeratingWithState:&v96 objects:v116 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }

          v36 = 1;
          if (v90)
          {
            v36 = 2;
          }

          if (!v28)
          {
            v28 = v36;
          }
        }

        else
        {

          v28 = 1;
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v37 = [v24 participants];
        v38 = [v37 countByEnumeratingWithState:&v92 objects:v115 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v93;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v93 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v92 + 1) + 8 * j);
              WeakRetained = objc_loadWeakRetained((a1 + 72));
              [WeakRetained addParticipant:v42 forSource:*v12 sharedResource:v24 deviceOwnerRole:v28];
            }

            v39 = [v37 countByEnumeratingWithState:&v92 objects:v115 count:16];
          }

          while (v39);
        }

        [*(a1 + 56) _trackResourceForPublicAccess:v24 source:*(a1 + 32)];
        v23 = v86 + 1;
        v21 = v87;
        v16 = v88;
        v22 = v84;
      }

      while (v86 + 1 != v85);
      v85 = [v87 countByEnumeratingWithState:&v100 objects:v117 count:16];
    }

    while (v85);
  }

  v44 = [*v12 name];
  v45 = [v44 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

  if (v45)
  {
    v46 = DSLogSharingPermissions;
    v47 = v46;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v46))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Calendars";
    goto LABEL_86;
  }

  v50 = [*v12 name];
  v51 = [v50 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

  if (v51)
  {
    v52 = DSLogSharingPermissions;
    v47 = v52;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v52))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.FindMy";
    goto LABEL_86;
  }

  v53 = [*v12 name];
  v54 = [v53 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

  if (v54)
  {
    v55 = DSLogSharingPermissions;
    v47 = v55;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v55))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Photos";
    goto LABEL_86;
  }

  v56 = [*v12 name];
  v57 = [v56 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

  if (v57)
  {
    v58 = DSLogSharingPermissions;
    v47 = v58;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v58))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Home";
    goto LABEL_86;
  }

  v59 = [*v12 name];
  v60 = [v59 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

  if (v60)
  {
    v61 = DSLogSharingPermissions;
    v47 = v61;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v61))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Health";
    goto LABEL_86;
  }

  v62 = [*v12 name];
  v63 = [v62 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

  if (v63)
  {
    v64 = DSLogSharingPermissions;
    v47 = v64;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v64))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Notes";
    goto LABEL_86;
  }

  v65 = [*v12 name];
  v66 = [v65 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

  if (v66)
  {
    v67 = DSLogSharingPermissions;
    v47 = v67;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v67))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Zelkova";
    goto LABEL_86;
  }

  v68 = [*v12 name];
  v69 = [v68 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

  if (v69)
  {
    v70 = DSLogSharingPermissions;
    v47 = v70;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v70))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Activity";
    goto LABEL_86;
  }

  v71 = [*v12 name];
  v72 = [v71 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

  if (v72)
  {
    v73 = DSLogSharingPermissions;
    v47 = v73;
    v48 = *(a1 + 80);
    if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v73))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v49 = "fetch.Passkeys";
    goto LABEL_86;
  }

  v74 = [*v12 name];
  v75 = [v74 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

  if (!v75)
  {
    v78 = [*(a1 + 32) name];
    v79 = [v78 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

    v80 = DSLogSharingPermissions;
    v81 = v80;
    v82 = *(a1 + 80);
    if (v79)
    {
      if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_248C40000, v81, OS_SIGNPOST_INTERVAL_END, v82, "fetch.Maps", " enableTelemetry=YES ", buf, 2u);
      }
    }

    else
    {
      if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_248C40000, v81, OS_SIGNPOST_INTERVAL_END, v82, "fetch.Notes", " enableTelemetry=YES ", buf, 2u);
      }

      v83 = DSLogSharingPermissions;
      if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
      {
        __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_3((a1 + 32), v83);
      }
    }

    goto LABEL_88;
  }

  v76 = DSLogSharingPermissions;
  v47 = v76;
  v48 = *(a1 + 80);
  if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
  {
    *buf = 0;
    v49 = "fetch.ItemSharing";
LABEL_86:
    _os_signpost_emit_with_name_impl(&dword_248C40000, v47, OS_SIGNPOST_INTERVAL_END, v48, v49, " enableTelemetry=YES ", buf, 2u);
  }

LABEL_87:

LABEL_88:
  dispatch_group_leave(*(a1 + 64));
LABEL_89:

  v77 = *MEMORY[0x277D85DE8];
}

id __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_24(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"errorCode";
  v2 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(a1 + 32), "code")}];
  v9[0] = v2;
  v8[1] = @"errorDomain";
  v3 = [*(a1 + 32) domain];
  v9[1] = v3;
  v8[2] = @"sourceName";
  v4 = [*(a1 + 40) name];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"sourceName";
  v1 = [*(a1 + 32) name];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_40(uint64_t a1)
{
  v2 = DSLogSharingPermissions;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetch", " enableTelemetry=YES ", v6, 2u);
  }

  if ([*(a1 + 32) count])
  {
    v5 = [DSError errorWithCode:1 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPermissionsOnQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(DSSourceRepository);
  [(DSSharingPermissions *)self setRepo:v8];

  os_unfair_lock_lock(&self->_permissionsLock);
  v9 = [(DSSharingPermissions *)self people];
  [v9 removeAllObjects];

  v10 = [(DSSharingPermissions *)self readOnlySharingPeople];
  [v10 removeAllObjects];

  v11 = [(DSSharingPermissions *)self sharingTypes];
  [v11 removeAllObjects];

  v12 = [(DSSharingPermissions *)self publicSharingTypes];
  [v12 removeAllObjects];

  v13 = [(DSSharingPermissions *)self readOnlySharingTypes];
  [v13 removeAllObjects];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (MGGetBoolAnswer())
  {
    objc_initWeak(&location, self);
    v14 = [(DSSharingPermissions *)self repo];
    v15 = [v14 sources];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__DSSharingPermissions_fetchPermissionsOnQueue_completion___block_invoke;
    v18[3] = &unk_278F72BD8;
    objc_copyWeak(&v21, &location);
    v19 = v6;
    v20 = v7;
    [(DSSharingPermissions *)self verifyDataUsagePoliciesForSources:v15 queue:v19 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [(DSSharingPermissions *)self repo];
    v17 = [v16 sources];
    [(DSSharingPermissions *)self fetchPermissionsFromSources:v17 includingErrors:MEMORY[0x277CBEBF8] queue:v6 completion:v7];
  }
}

void __59__DSSharingPermissions_fetchPermissionsOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained fetchPermissionsFromSources:v6 includingErrors:v5 queue:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_trackResourceForPublicAccess:(id)a3 source:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 visibility] == 2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 participationAccess] & 2) != 0)
  {
    v9 = v6;

    v8 = v9;
  }

  if (v8)
  {
    os_unfair_lock_lock(&self->_permissionsLock);
    v10 = [[DSPublicSharingType alloc] initWithSource:v7];
    v11 = [(DSSharingPermissions *)self publicSharingTypes];
    v12 = [v11 indexOfObject:v10];

    v13 = [(DSSharingPermissions *)self publicSharingTypes];
    v14 = v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v13 addObject:v10];

      [(DSPublicSharingType *)v10 addPublicResource:v8];
      v15 = DSLogSharingPermissions;
      if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
      {
        v19 = 138478083;
        v20 = v8;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&dword_248C40000, v15, OS_LOG_TYPE_INFO, "Adding public resource %{private}@ to new sharing type %{public}@", &v19, 0x16u);
      }
    }

    else
    {
      v16 = [v13 objectAtIndexedSubscript:v12];

      [(DSPublicSharingType *)v16 addPublicResource:v8];
      v17 = DSLogSharingPermissions;
      if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
      {
        v19 = 138478083;
        v20 = v8;
        v21 = 2114;
        v22 = v16;
        _os_log_impl(&dword_248C40000, v17, OS_LOG_TYPE_INFO, "Adding public resource %{private}@ to existing sharing type %{public}@", &v19, 0x16u);
      }
    }

    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)sort
{
  os_unfair_lock_lock(&self->_permissionsLock);
  v3 = [(DSSharingPermissions *)self people];
  [v3 sortUsingComparator:&__block_literal_global_1];

  v4 = [(DSSharingPermissions *)self sharingTypes];
  [v4 sortUsingComparator:&__block_literal_global_52];

  v5 = [(DSSharingPermissions *)self publicSharingTypes];
  [v5 sortUsingComparator:&__block_literal_global_55];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

uint64_t __28__DSSharingPermissions_sort__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 score];
  if (v6 >= [v5 score])
  {
    v8 = [v4 score];
    if (v8 <= [v5 score])
    {
      v9 = [v4 displayName];
      v10 = [v5 displayName];
      v7 = [v9 localizedStandardCompare:v10];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __28__DSSharingPermissions_sort__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 score];
  if (v6 >= [v5 score])
  {
    v8 = [v4 score];
    if (v8 <= [v5 score])
    {
      v9 = [v4 displayName];
      v10 = [v5 displayName];
      v7 = [v9 localizedStandardCompare:v10];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __28__DSSharingPermissions_sort__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 score];
  if (v6 >= [v5 score])
  {
    v8 = [v4 score];
    if (v8 <= [v5 score])
    {
      v9 = [v4 displayName];
      v10 = [v5 displayName];
      v7 = [v9 localizedStandardCompare:v10];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)addParticipant:(id)a3 forSource:(id)a4 sharedResource:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [[DSSharingPerson alloc] initWithSource:v11 sharedResource:v12 participant:v10 deviceOwnerRole:a6];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__DSSharingPermissions_addParticipant_forSource_sharedResource_deviceOwnerRole___block_invoke;
  v23[3] = &unk_278F72C40;
  objc_copyWeak(v29, &location);
  v14 = v13;
  v24 = v14;
  v25 = self;
  v15 = v10;
  v26 = v15;
  v16 = v11;
  v27 = v16;
  v17 = v12;
  v28 = v17;
  v29[1] = a6;
  v18 = MEMORY[0x24C1E7EB0](v23);
  v19 = [(DSSharingPermissions *)self me];

  if (v19)
  {
    v18[2](v18);
  }

  else
  {
    v20 = [(DSSharingPermissions *)self workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__DSSharingPermissions_addParticipant_forSource_sharedResource_deviceOwnerRole___block_invoke_57;
    v21[3] = &unk_278F726C8;
    v21[4] = self;
    v22 = v18;
    dispatch_async(v20, v21);
  }

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

void __80__DSSharingPermissions_addParticipant_forSource_sharedResource_deviceOwnerRole___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) me];
  LODWORD(v3) = [v3 isMe:v4];

  if (v3)
  {
    v5 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = v5;
      v9 = [v6 name];
      v36 = 138478083;
      v37 = v7;
      v38 = 2114;
      v39 = v9;
      v10 = "Skipping participant %{private}@ for source %{public}@ because they match the me card";
LABEL_9:
      _os_log_impl(&dword_248C40000, v8, OS_LOG_TYPE_DEFAULT, v10, &v36, 0x16u);

LABEL_19:
    }
  }

  else
  {
    v11 = [*(a1 + 32) displayName];

    if (v11)
    {
      os_unfair_lock_lock(WeakRetained + 2);
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) people];
      v14 = [v13 indexOfObject:*(a1 + 32)];

      v15 = [*(a1 + 40) people];
      v16 = v15;
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v15 addObject:v12];

        v8 = v12;
      }

      else
      {
        v8 = [v15 objectAtIndexedSubscript:v14];

        [v8 addSource:*(a1 + 56) sharedResource:*(a1 + 64) participant:*(a1 + 48) deviceOwnerRole:*(a1 + 80)];
        v20 = DSLogSharingPermissions;
        if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 48);
          v21 = *(a1 + 56);
          v23 = v20;
          v24 = [v21 name];
          v36 = 138478339;
          v37 = v22;
          v38 = 2114;
          v39 = v8;
          v40 = 2114;
          v41 = v24;
          _os_log_impl(&dword_248C40000, v23, OS_LOG_TYPE_INFO, "Adding participant %{private}@ to existing person %{public}@ for source %{public}@", &v36, 0x20u);
        }
      }

      v25 = [[DSSharingType alloc] initWithSource:*(a1 + 56)];
      v26 = [*(a1 + 40) sharingTypes];
      v27 = [v26 indexOfObject:v25];

      v28 = [*(a1 + 40) sharingTypes];
      v29 = v28;
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v28 addObject:v25];

        [(DSSharingType *)v25 addPerson:v8];
        v30 = DSLogSharingPermissions;
        if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
        {
          v31 = *(a1 + 32);
          v36 = 138478083;
          v37 = v31;
          v38 = 2114;
          v39 = v25;
          _os_log_impl(&dword_248C40000, v30, OS_LOG_TYPE_INFO, "Adding person %{private}@ to new sharing type %{public}@", &v36, 0x16u);
        }
      }

      else
      {
        v32 = [v28 objectAtIndexedSubscript:v27];

        [(DSSharingType *)v32 addPerson:v8];
        v33 = DSLogSharingPermissions;
        if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
        {
          v34 = *(a1 + 32);
          v36 = 138478083;
          v37 = v34;
          v38 = 2114;
          v39 = v32;
          _os_log_impl(&dword_248C40000, v33, OS_LOG_TYPE_INFO, "Adding person %{private}@ to existing sharing type %{public}@", &v36, 0x16u);
        }
      }

      os_unfair_lock_unlock(WeakRetained + 2);

      goto LABEL_19;
    }

    v17 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v18 = *(a1 + 56);
      v8 = v17;
      v9 = [v18 name];
      v36 = 138478083;
      v37 = v19;
      v38 = 2114;
      v39 = v9;
      v10 = "Skipping participant %{private}@ for source %{public}@ because they do not have a display name";
      goto LABEL_9;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __80__DSSharingPermissions_addParticipant_forSource_sharedResource_deviceOwnerRole___block_invoke_57(uint64_t a1)
{
  v2 = [*(a1 + 32) me];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = MEMORY[0x277D85CD0];

    dispatch_async(v4, v3);
  }

  else if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
  {
    __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_2();
  }
}

- (void)removePerson:(id)a3
{
  v4 = a3;
  v5 = [v4 allSources];
  [(DSSharingPermissions *)self removePerson:v4 sources:v5];
}

- (void)removePerson:(id)a3 sources:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  v28 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_permissionsLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[DSSharingType alloc] initWithSource:*(*(&v34 + 1) + 8 * v11)];
        v13 = [(DSSharingPermissions *)self sharingTypes];
        v14 = [v13 indexOfObject:v12];

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v12;
        }

        else
        {
          v16 = [(DSSharingPermissions *)self sharingTypes];
          v15 = [v16 objectAtIndexedSubscript:v14];

          [v15 removePerson:v29];
          v17 = [v15 allPeople];
          v18 = [v17 count];

          if (!v18)
          {
            [v28 addObject:v15];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v19 = [v29 allSources];
  v20 = [v19 count];

  if (!v20)
  {
    v21 = [(DSSharingPermissions *)self people];
    [v21 removeObject:v29];
  }

  os_unfair_lock_unlock(&self->_permissionsLock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v28;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(DSSharingPermissions *)self removeSharingType:*(*(&v30 + 1) + 8 * v26++), v28];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)removeSharingType:(id)a3
{
  v4 = a3;
  v5 = [v4 allPeople];
  [(DSSharingPermissions *)self removeSharingType:v4 people:v5];
}

- (void)removeSharingType:(id)a3 people:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_permissionsLock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        v14 = [(DSSharingPermissions *)self people];
        v15 = [v14 indexOfObject:v13];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [(DSSharingPermissions *)self people];
          v17 = [v16 objectAtIndexedSubscript:v15];

          v18 = [v6 source];
          v19 = [v18 name];
          [v17 removeSourceWithName:v19];

          v20 = [v17 allSources];
          v21 = [v20 count];

          if (!v21)
          {
            [v31 addObject:v17];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v22 = [v6 allPeople];
  v23 = [v22 count];

  if (!v23)
  {
    v24 = [(DSSharingPermissions *)self sharingTypes];
    [v24 removeObject:v6];
  }

  os_unfair_lock_unlock(&self->_permissionsLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v31;
  v26 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(DSSharingPermissions *)self removePerson:*(*(&v32 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v27);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)removePublicSharingType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self publicSharingTypes];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterPeopleWithPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self people];
  v6 = [v5 filteredOrderedSetUsingPredicate:v4];

  [(DSSharingPermissions *)self setFilteredPeople:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterReadOnlySharingPeopleWithPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self readOnlySharingPeople];
  v6 = [v5 filteredOrderedSetUsingPredicate:v4];

  [(DSSharingPermissions *)self setFilteredReadOnlySharingPeople:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterSharingTypesWithPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self sharingTypes];
  v6 = [v5 filteredOrderedSetUsingPredicate:v4];

  [(DSSharingPermissions *)self setFilteredSharingTypes:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterReadOnlySharingTypesWithPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self readOnlySharingTypes];
  v6 = [v5 filteredOrderedSetUsingPredicate:v4];

  [(DSSharingPermissions *)self setFilteredReadOnlySharingTypes:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (id)person:(int64_t)a3 withFilter:(BOOL)a4
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a4)
  {
    [(DSSharingPermissions *)self filteredPeople];
  }

  else
  {
    [(DSSharingPermissions *)self people];
  }
  v7 = ;
  v8 = v7;
  if (a3 < 0 || [v7 count] <= a3)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions person:withFilter:];
    }

    os_unfair_lock_unlock(&self->_permissionsLock);
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (id)readOnlySharingPerson:(int64_t)a3 withFilter:(BOOL)a4
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a4)
  {
    [(DSSharingPermissions *)self filteredReadOnlySharingPeople];
  }

  else
  {
    [(DSSharingPermissions *)self readOnlySharingPeople];
  }
  v7 = ;
  v8 = v7;
  if (a3 < 0 || [v7 count] <= a3)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions readOnlySharingPerson:withFilter:];
    }

    os_unfair_lock_unlock(&self->_permissionsLock);
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (id)sharingType:(int64_t)a3 withFilter:(BOOL)a4
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a4)
  {
    [(DSSharingPermissions *)self filteredSharingTypes];
  }

  else
  {
    [(DSSharingPermissions *)self sharingTypes];
  }
  v7 = ;
  v8 = v7;
  if (a3 < 0 || [v7 count] <= a3)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions person:withFilter:];
    }

    os_unfair_lock_unlock(&self->_permissionsLock);
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (id)publicSharingType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self publicSharingTypes];
  v6 = v5;
  if (a3 < 0 || [v5 count] <= a3)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions person:withFilter:];
    }

    os_unfair_lock_unlock(&self->_permissionsLock);
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v7;
}

- (id)readOnlySharingType:(int64_t)a3 withFilter:(BOOL)a4
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a4)
  {
    [(DSSharingPermissions *)self filteredReadOnlySharingTypes];
  }

  else
  {
    [(DSSharingPermissions *)self readOnlySharingTypes];
  }
  v7 = ;
  v8 = v7;
  if (a3 < 0 || [v7 count] <= a3)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions readOnlySharingPerson:withFilter:];
    }

    os_unfair_lock_unlock(&self->_permissionsLock);
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (int64_t)peopleCountWithFilter:(BOOL)a3
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a3)
  {
    [(DSSharingPermissions *)self filteredPeople];
  }

  else
  {
    [(DSSharingPermissions *)self people];
  }
  v5 = ;
  v6 = [v5 count];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (v6 < 0)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions peopleCountWithFilter:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)readOnlySharingPeopleCountWithFilter:(BOOL)a3
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a3)
  {
    [(DSSharingPermissions *)self filteredReadOnlySharingPeople];
  }

  else
  {
    [(DSSharingPermissions *)self readOnlySharingPeople];
  }
  v5 = ;
  v6 = [v5 count];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (v6 < 0)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions readOnlySharingPeopleCountWithFilter:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)sharingTypesCountWithFilter:(BOOL)a3
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a3)
  {
    [(DSSharingPermissions *)self filteredSharingTypes];
  }

  else
  {
    [(DSSharingPermissions *)self sharingTypes];
  }
  v5 = ;
  v6 = [v5 count];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (v6 < 0)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions peopleCountWithFilter:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)publicSharingTypesCount
{
  os_unfair_lock_lock(&self->_permissionsLock);
  v3 = [(DSSharingPermissions *)self publicSharingTypes];
  v4 = [v3 count];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (v4 < 0)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions readOnlySharingPeopleCountWithFilter:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (int64_t)readOnlySharingTypesCountWithFilter:(BOOL)a3
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (a3)
  {
    [(DSSharingPermissions *)self filteredReadOnlySharingTypes];
  }

  else
  {
    [(DSSharingPermissions *)self readOnlySharingTypes];
  }
  v5 = ;
  v6 = [v5 count];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (v6 < 0)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissions readOnlySharingPeopleCountWithFilter:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (NSArray)allPeople
{
  v2 = [(DSSharingPermissions *)self people];
  v3 = [v2 array];

  return v3;
}

- (NSArray)allReadOnlySharingPeople
{
  v2 = [(DSSharingPermissions *)self readOnlySharingPeople];
  v3 = [v2 array];

  return v3;
}

- (NSArray)allSharingTypes
{
  v2 = [(DSSharingPermissions *)self sharingTypes];
  v3 = [v2 array];

  return v3;
}

- (NSArray)allPublicSharingTypes
{
  v2 = [(DSSharingPermissions *)self publicSharingTypes];
  v3 = [v2 array];

  return v3;
}

- (NSArray)allReadOnlySharingTypes
{
  v2 = [(DSSharingPermissions *)self readOnlySharingTypes];
  v3 = [v2 array];

  return v3;
}

- (NSDictionary)elapsedUnfinishedFetchesBySource
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  os_unfair_lock_lock(&self->_permissionsLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(DSSharingPermissions *)self fetchStartTimesBySource];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(DSSharingPermissions *)self fetchStartTimesBySource];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 unsignedLongLongValue];

        v13 = [MEMORY[0x277CCABB0] numberWithDouble:(v4 - v12) / 1000000000.0];
        [v3 setObject:v13 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_permissionsLock);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)fetchStartedForSource:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  v6 = [(DSSharingPermissions *)self fetchStartTimesBySource];
  [v6 setObject:v5 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)fetchCompletedForSource:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [(DSSharingPermissions *)self fetchStartTimesBySource];
  [v5 setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4
{
  v134 = *MEMORY[0x277D85DE8];
  queue = a3;
  v93 = a4;
  v6 = dispatch_group_create();
  v98 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(DSSharingPermissions *)self allSharingTypes];
  v9 = [v8 copy];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277CBEB58];
  v11 = [(DSSharingPermissions *)self allPublicSharingTypes];
  v12 = [v11 copy];
  v96 = [v10 setWithArray:v12];

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v124 objects:v133 count:16];
  if (v14)
  {
    v15 = *v125;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v125 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v124 + 1) + 8 * i);
        v18 = [DSPublicSharingType alloc];
        v19 = [v17 source];
        v20 = [(DSPublicSharingType *)v18 initWithSource:v19];

        [v96 removeObject:v20];
      }

      v14 = [v13 countByEnumeratingWithState:&v124 objects:v133 count:16];
    }

    while (v14);
  }

  v21 = os_signpost_id_generate(DSLogSharingPermissions);
  v22 = DSLogSharingPermissions;
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "stopAll", " enableTelemetry=YES ", buf, 2u);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v13;
  v24 = [obj countByEnumeratingWithState:&v120 objects:v132 count:16];
  if (v24)
  {
    v95 = *v121;
    do
    {
      v97 = v24;
      for (j = 0; j != v97; ++j)
      {
        if (*v121 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v120 + 1) + 8 * j);
        dispatch_group_enter(v6);
        v27 = os_signpost_id_generate(DSLogSharingPermissions);
        v28 = [v26 source];
        v29 = [v28 name];
        v30 = [v29 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

        if (v30)
        {
          v31 = DSLogSharingPermissions;
          v32 = v31;
          if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
          {
            *buf = 0;
            v33 = v32;
            v34 = v27;
            v35 = "stopAll.Calendars";
LABEL_60:
            _os_signpost_emit_with_name_impl(&dword_248C40000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v34, v35, " enableTelemetry=YES ", buf, 2u);
          }
        }

        else
        {
          v36 = [v26 source];
          v37 = [v36 name];
          v38 = [v37 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

          if (v38)
          {
            v39 = DSLogSharingPermissions;
            v32 = v39;
            if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
            {
              *buf = 0;
              v33 = v32;
              v34 = v27;
              v35 = "stopAll.FindMy";
              goto LABEL_60;
            }
          }

          else
          {
            v40 = [v26 source];
            v41 = [v40 name];
            v42 = [v41 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

            if (v42)
            {
              v43 = DSLogSharingPermissions;
              v32 = v43;
              if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
              {
                *buf = 0;
                v33 = v32;
                v34 = v27;
                v35 = "stopAll.Photos";
                goto LABEL_60;
              }
            }

            else
            {
              v44 = [v26 source];
              v45 = [v44 name];
              v46 = [v45 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

              if (v46)
              {
                v47 = DSLogSharingPermissions;
                v32 = v47;
                if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
                {
                  *buf = 0;
                  v33 = v32;
                  v34 = v27;
                  v35 = "stopAll.Home";
                  goto LABEL_60;
                }
              }

              else
              {
                v48 = [v26 source];
                v49 = [v48 name];
                v50 = [v49 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

                if (v50)
                {
                  v51 = DSLogSharingPermissions;
                  v32 = v51;
                  if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
                  {
                    *buf = 0;
                    v33 = v32;
                    v34 = v27;
                    v35 = "stopAll.Health";
                    goto LABEL_60;
                  }
                }

                else
                {
                  v52 = [v26 source];
                  v53 = [v52 name];
                  v54 = [v53 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

                  if (v54)
                  {
                    v55 = DSLogSharingPermissions;
                    v32 = v55;
                    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
                    {
                      *buf = 0;
                      v33 = v32;
                      v34 = v27;
                      v35 = "stopAll.Notes";
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    v56 = [v26 source];
                    v57 = [v56 name];
                    v58 = [v57 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

                    if (v58)
                    {
                      v59 = DSLogSharingPermissions;
                      v32 = v59;
                      if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
                      {
                        *buf = 0;
                        v33 = v32;
                        v34 = v27;
                        v35 = "stopAll.Zelkova";
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      v60 = [v26 source];
                      v61 = [v60 name];
                      v62 = [v61 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

                      if (v62)
                      {
                        v63 = DSLogSharingPermissions;
                        v32 = v63;
                        if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
                        {
                          *buf = 0;
                          v33 = v32;
                          v34 = v27;
                          v35 = "stopAll.Activity";
                          goto LABEL_60;
                        }
                      }

                      else
                      {
                        v64 = [v26 source];
                        v65 = [v64 name];
                        v66 = [v65 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

                        if (v66)
                        {
                          v67 = DSLogSharingPermissions;
                          v32 = v67;
                          if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
                          {
                            *buf = 0;
                            v33 = v32;
                            v34 = v27;
                            v35 = "stopAll.Passkeys";
                            goto LABEL_60;
                          }
                        }

                        else
                        {
                          v68 = [v26 source];
                          v69 = [v68 name];
                          v70 = [v69 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

                          if (v70)
                          {
                            v71 = DSLogSharingPermissions;
                            v32 = v71;
                            if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
                            {
                              *buf = 0;
                              v33 = v32;
                              v34 = v27;
                              v35 = "stopAll.ItemSharing";
                              goto LABEL_60;
                            }
                          }

                          else
                          {
                            v72 = [v26 source];
                            v73 = [v72 name];
                            v74 = [v73 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

                            v75 = DSLogSharingPermissions;
                            v32 = v75;
                            if (v74)
                            {
                              if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
                              {
                                *buf = 0;
                                v33 = v32;
                                v34 = v27;
                                v35 = "stopAll.Maps";
                                goto LABEL_60;
                              }
                            }

                            else
                            {
                              if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
                              {
                                *buf = 0;
                                _os_signpost_emit_with_name_impl(&dword_248C40000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v27, "stopAll.Notes", " enableTelemetry=YES ", buf, 2u);
                              }

                              v32 = DSLogSharingPermissions;
                              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                              {
                                v82 = [v26 source];
                                v83 = [v82 name];
                                *buf = 138543362;
                                v131 = v83;
                                _os_log_fault_impl(&dword_248C40000, v32, OS_LOG_TYPE_FAULT, "Signpost for unsupported source name %{public}@", buf, 0xCu);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v76 = DSLogSharingPermissions;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = [v26 source];
          v78 = [v77 name];
          *buf = 138543362;
          v131 = v78;
          _os_log_impl(&dword_248C40000, v76, OS_LOG_TYPE_INFO, "Stopping all sharing for type %{public}@", buf, 0xCu);
        }

        v79 = [v26 allPeople];
        v80 = [v79 copy];

        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke;
        v114[3] = &unk_278F72C68;
        v114[4] = v26;
        v115 = v98;
        objc_copyWeak(v119, &location);
        v116 = v7;
        v81 = v80;
        v117 = v81;
        v119[1] = v27;
        v118 = v6;
        [v26 stopAllSharingOnQueue:queue completion:v114];

        objc_destroyWeak(v119);
      }

      v24 = [obj countByEnumeratingWithState:&v120 objects:v132 count:16];
    }

    while (v24);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v84 = v96;
  v85 = [v84 countByEnumeratingWithState:&v110 objects:v129 count:16];
  if (v85)
  {
    v86 = *v111;
    do
    {
      for (k = 0; k != v85; ++k)
      {
        if (*v111 != v86)
        {
          objc_enumerationMutation(v84);
        }

        v88 = *(*(&v110 + 1) + 8 * k);
        dispatch_group_enter(v6);
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_60;
        v105[3] = &unk_278F72C90;
        v105[4] = v88;
        v106 = v98;
        objc_copyWeak(&v109, &location);
        v107 = v7;
        v108 = v6;
        [v88 stopAllSharingOnQueue:queue completion:v105];

        objc_destroyWeak(&v109);
      }

      v85 = [v84 countByEnumeratingWithState:&v110 objects:v129 count:16];
    }

    while (v85);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_61;
  block[3] = &unk_278F72CB8;
  v103 = v93;
  v104 = v21;
  v101 = v7;
  v102 = v98;
  v89 = v98;
  v90 = v7;
  v91 = v93;
  dispatch_group_notify(v6, queue, block);

  objc_destroyWeak(&location);
  v92 = *MEMORY[0x277D85DE8];
}

void __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 source];
    v8 = [v7 name];
    v69 = 138543362;
    v70 = v8;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Finished stop all sharing for type %{public}@", &v69, 0xCu);
  }

  if (v3)
  {
    v9 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_ERROR))
    {
      __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_cold_1(a1, v9);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v11 = *(a1 + 48);
    v12 = [*(a1 + 32) source];
    v13 = [v12 name];
    [v11 addObject:v13];

    [WeakRetained removeSharingType:*(a1 + 32) people:*(a1 + 56)];
    v14 = [DSPublicSharingType alloc];
    v15 = [*(a1 + 32) source];
    v16 = [(DSPublicSharingType *)v14 initWithSource:v15];

    [WeakRetained removePublicSharingType:v16];
  }

  v17 = (a1 + 32);
  v18 = [*(a1 + 32) source];
  v19 = [v18 name];
  v20 = [v19 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

  if (v20)
  {
    v21 = DSLogSharingPermissions;
    v22 = v21;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Calendars";
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_248C40000, v22, OS_SIGNPOST_INTERVAL_END, v23, v24, " enableTelemetry=YES ", &v69, 2u);
LABEL_49:

    goto LABEL_50;
  }

  v25 = [*v17 source];
  v26 = [v25 name];
  v27 = [v26 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

  if (v27)
  {
    v28 = DSLogSharingPermissions;
    v22 = v28;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v28))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.FindMy";
    goto LABEL_48;
  }

  v29 = [*v17 source];
  v30 = [v29 name];
  v31 = [v30 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

  if (v31)
  {
    v32 = DSLogSharingPermissions;
    v22 = v32;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v32))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Photos";
    goto LABEL_48;
  }

  v33 = [*v17 source];
  v34 = [v33 name];
  v35 = [v34 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

  if (v35)
  {
    v36 = DSLogSharingPermissions;
    v22 = v36;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Home";
    goto LABEL_48;
  }

  v37 = [*v17 source];
  v38 = [v37 name];
  v39 = [v38 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

  if (v39)
  {
    v40 = DSLogSharingPermissions;
    v22 = v40;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v40))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Health";
    goto LABEL_48;
  }

  v41 = [*v17 source];
  v42 = [v41 name];
  v43 = [v42 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

  if (v43)
  {
    v44 = DSLogSharingPermissions;
    v22 = v44;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Notes";
    goto LABEL_48;
  }

  v45 = [*v17 source];
  v46 = [v45 name];
  v47 = [v46 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

  if (v47)
  {
    v48 = DSLogSharingPermissions;
    v22 = v48;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v48))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Zelkova";
    goto LABEL_48;
  }

  v49 = [*v17 source];
  v50 = [v49 name];
  v51 = [v50 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

  if (v51)
  {
    v52 = DSLogSharingPermissions;
    v22 = v52;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v52))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Activity";
    goto LABEL_48;
  }

  v53 = [*v17 source];
  v54 = [v53 name];
  v55 = [v54 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

  if (v55)
  {
    v56 = DSLogSharingPermissions;
    v22 = v56;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v56))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.Passkeys";
    goto LABEL_48;
  }

  v57 = [*v17 source];
  v58 = [v57 name];
  v59 = [v58 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

  if (v59)
  {
    v60 = DSLogSharingPermissions;
    v22 = v60;
    v23 = *(a1 + 80);
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v60))
    {
      goto LABEL_49;
    }

    LOWORD(v69) = 0;
    v24 = "stopAll.ItemSharing";
    goto LABEL_48;
  }

  v62 = [*(a1 + 32) source];
  v63 = [v62 name];
  v64 = [v63 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

  v65 = DSLogSharingPermissions;
  v66 = v65;
  v67 = *(a1 + 80);
  if (v64)
  {
    if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      LOWORD(v69) = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v66, OS_SIGNPOST_INTERVAL_END, v67, "stopAll.Maps", " enableTelemetry=YES ", &v69, 2u);
    }
  }

  else
  {
    if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      LOWORD(v69) = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v66, OS_SIGNPOST_INTERVAL_END, v67, "stopAll.Notes", " enableTelemetry=YES ", &v69, 2u);
    }

    v68 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
    {
      __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_cold_2((a1 + 32), v68);
    }
  }

LABEL_50:
  dispatch_group_leave(*(a1 + 64));

  v61 = *MEMORY[0x277D85DE8];
}

void __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_60(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 source];
    v8 = [v7 name];
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Finished stop all public sharing for type %{public}@", &v15, 0xCu);
  }

  if (v3)
  {
    v9 = DSLogSharingPermissions;
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_ERROR))
    {
      __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_60_cold_1(a1, v9);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v11 = *(a1 + 48);
    v12 = [*(a1 + 32) source];
    v13 = [v12 name];
    [v11 addObject:v13];

    [WeakRetained removePublicSharingType:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 56));

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_61(void *a1)
{
  v2 = DSLogSharingPermissions;
  v3 = v2;
  v4 = a1[7];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v3, OS_SIGNPOST_INTERVAL_END, v4, "stopAll", " enableTelemetry=YES ", v8, 2u);
  }

  v5 = a1[5];
  v6 = a1[4];
  return (*(a1[6] + 16))();
}

void __75__DSSharingPermissions_verifyDataUsagePoliciesForSources_queue_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_248C40000, log, OS_LOG_TYPE_ERROR, "Failed to get data usage policies for %{public}@ because %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 name];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_248C40000, v3, v5, "Signpost for unsupported source name %{public}@", v7);

  v6 = *MEMORY[0x277D85DE8];
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_cold_2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_248C40000, log, OS_LOG_TYPE_ERROR, "Failed to fetch shared resources from %{public}@ because exception %{public}@", buf, 0x16u);
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_cold_3(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5(&dword_248C40000, a3, a3, "Signpost for unsupported source name %{public}@", a2);
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v5, v6, "Failed to fetch shared resources from %{public}@ because %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_19_cold_3(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_248C40000, v3, v5, "Signpost for unsupported source name %{public}@", v7);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)person:withFilter:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readOnlySharingPerson:withFilter:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)peopleCountWithFilter:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)readOnlySharingPeopleCountWithFilter:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 source];
  v5 = [v4 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v6, v7, "Failed to stop all sharing for sharing type %{public}@ because %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_cold_2(void **a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 source];
  v5 = [v4 name];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_248C40000, v3, v6, "Signpost for unsupported source name %{public}@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke_60_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 source];
  v5 = [v4 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v6, v7, "Failed to stop all public sharing for type %{public}@ because %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end