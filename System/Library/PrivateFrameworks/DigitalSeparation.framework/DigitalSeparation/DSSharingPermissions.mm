@interface DSSharingPermissions
+ (void)initialize;
- (BOOL)shouldAllowBundleIDWithNoPolicy:(id)policy;
- (DSSharingPermissions)init;
- (NSArray)allPeople;
- (NSArray)allPublicSharingTypes;
- (NSArray)allReadOnlySharingPeople;
- (NSArray)allReadOnlySharingTypes;
- (NSArray)allSharingTypes;
- (NSDictionary)elapsedUnfinishedFetchesBySource;
- (id)person:(int64_t)person withFilter:(BOOL)filter;
- (id)publicSharingType:(int64_t)type;
- (id)readOnlySharingPerson:(int64_t)person withFilter:(BOOL)filter;
- (id)readOnlySharingType:(int64_t)type withFilter:(BOOL)filter;
- (id)sharingType:(int64_t)type withFilter:(BOOL)filter;
- (int64_t)peopleCountWithFilter:(BOOL)filter;
- (int64_t)publicSharingTypesCount;
- (int64_t)readOnlySharingPeopleCountWithFilter:(BOOL)filter;
- (int64_t)readOnlySharingTypesCountWithFilter:(BOOL)filter;
- (int64_t)sharingTypesCountWithFilter:(BOOL)filter;
- (void)_trackResourceForPublicAccess:(id)access source:(id)source;
- (void)addParticipant:(id)participant forSource:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role;
- (void)fetchCompletedForSource:(id)source;
- (void)fetchPermissionsFromSources:(id)sources includingErrors:(id)errors queue:(id)queue completion:(id)completion;
- (void)fetchPermissionsOnQueue:(id)queue completion:(id)completion;
- (void)fetchStartedForSource:(id)source;
- (void)filterPeopleWithPredicate:(id)predicate;
- (void)filterReadOnlySharingPeopleWithPredicate:(id)predicate;
- (void)filterReadOnlySharingTypesWithPredicate:(id)predicate;
- (void)filterSharingTypesWithPredicate:(id)predicate;
- (void)removePerson:(id)person;
- (void)removePerson:(id)person sources:(id)sources;
- (void)removePublicSharingType:(id)type;
- (void)removeSharingType:(id)type;
- (void)removeSharingType:(id)type people:(id)people;
- (void)sort;
- (void)stopAllSharingOnQueue:(id)queue completion:(id)completion;
- (void)verifyDataUsagePoliciesForSources:(id)sources queue:(id)queue completion:(id)completion;
@end

@implementation DSSharingPermissions

+ (void)initialize
{
  if (objc_opt_class() == self)
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
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setPeople:orderedSet];

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setReadOnlySharingPeople:orderedSet2];

    orderedSet3 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setSharingTypes:orderedSet3];

    orderedSet4 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setPublicSharingTypes:orderedSet4];

    orderedSet5 = [MEMORY[0x277CBEB40] orderedSet];
    [(DSSharingPermissions *)v3 setReadOnlySharingTypes:orderedSet5];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(DSSharingPermissions *)v3 setFetchStartTimesBySource:dictionary];

    v10 = dispatch_queue_create("com.apple.DigitalSeparation.SharingPermissions", 0);
    [(DSSharingPermissions *)v3 setWorkQueue:v10];

    v11 = dispatch_queue_create("com.apple.DigitalSeparation.DataUsageQueue", 0);
    [(DSSharingPermissions *)v3 setDataUsageQueue:v11];

    workQueue = [(DSSharingPermissions *)v3 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__DSSharingPermissions_init__block_invoke;
    block[3] = &unk_278F72AC0;
    v15 = v3;
    dispatch_async(workQueue, block);
  }

  return v3;
}

void __28__DSSharingPermissions_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(DSMe);
  [*(a1 + 32) setMe:v2];
}

- (BOOL)shouldAllowBundleIDWithNoPolicy:(id)policy
{
  policyCopy = policy;
  v4 = +[DSUtilities allApps];
  v5 = ![policyCopy isEqualToString:@"com.apple.Health"] || objc_msgSend(v4, "containsObject:", policyCopy);

  return v5;
}

- (void)verifyDataUsagePoliciesForSources:(id)sources queue:(id)queue completion:(id)completion
{
  v64 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  queue = queue;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = sourcesCopy;
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
        name = [v14 name];
        v16 = [DSSourceDescriptor sourceDescriptorForSource:name];

        dataUsageBundleIdentifier = [v16 dataUsageBundleIdentifier];
        if (dataUsageBundleIdentifier && [(DSSharingPermissions *)self shouldAllowBundleIDWithNoPolicy:dataUsageBundleIdentifier])
        {
          name2 = [v14 name];
          [v42 setObject:name2 forKeyedSubscript:dataUsageBundleIdentifier];
        }

        name3 = [v14 name];
        [v8 setObject:v14 forKeyedSubscript:name3];
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
    dataUsageQueue = [(DSSharingPermissions *)self dataUsageQueue];
    v23 = [v21 initWithQueue:dataUsageQueue];

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
          v50 = array;
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
    v31 = completionCopy;
    v46 = completionCopy;
    v44 = v8;
    v32 = array;
    v45 = array;
    queueCopy2 = queue;
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

    v31 = completionCopy;
    v32 = array;
    (*(completionCopy + 2))(completionCopy, v9, array);
    queueCopy2 = queue;
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

- (void)fetchPermissionsFromSources:(id)sources includingErrors:(id)errors queue:(id)queue completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  errorsCopy = errors;
  queue = queue;
  completionCopy = completion;
  v12 = os_signpost_id_generate(DSLogSharingPermissions);
  v13 = DSLogSharingPermissions;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "fetch", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithArray:errorsCopy];
  v16 = dispatch_group_create();
  objc_initWeak(&location, self);
  v17 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v40 = sourcesCopy;
    _os_log_impl(&dword_248C40000, v17, OS_LOG_TYPE_INFO, "Fetching sharing permissions from sources: %{public}@", buf, 0xCu);
  }

  v18 = [sourcesCopy count];
  workQueue = [(DSSharingPermissions *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke;
  block[3] = &unk_278F72B88;
  v33 = v16;
  v34 = sourcesCopy;
  v20 = sourcesCopy;
  v21 = v16;
  objc_copyWeak(&v37, &location);
  v22 = v15;
  v35 = v22;
  selfCopy = self;
  dispatch_apply(v18, workQueue, block);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_40;
  v28[3] = &unk_278F72BB0;
  v30 = completionCopy;
  v31 = v12;
  v29 = v22;
  v23 = completionCopy;
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

- (void)fetchPermissionsOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = objc_alloc_init(DSSourceRepository);
  [(DSSharingPermissions *)self setRepo:v8];

  os_unfair_lock_lock(&self->_permissionsLock);
  people = [(DSSharingPermissions *)self people];
  [people removeAllObjects];

  readOnlySharingPeople = [(DSSharingPermissions *)self readOnlySharingPeople];
  [readOnlySharingPeople removeAllObjects];

  sharingTypes = [(DSSharingPermissions *)self sharingTypes];
  [sharingTypes removeAllObjects];

  publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
  [publicSharingTypes removeAllObjects];

  readOnlySharingTypes = [(DSSharingPermissions *)self readOnlySharingTypes];
  [readOnlySharingTypes removeAllObjects];

  os_unfair_lock_unlock(&self->_permissionsLock);
  if (MGGetBoolAnswer())
  {
    objc_initWeak(&location, self);
    repo = [(DSSharingPermissions *)self repo];
    sources = [repo sources];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__DSSharingPermissions_fetchPermissionsOnQueue_completion___block_invoke;
    v18[3] = &unk_278F72BD8;
    objc_copyWeak(&v21, &location);
    v19 = queueCopy;
    v20 = completionCopy;
    [(DSSharingPermissions *)self verifyDataUsagePoliciesForSources:sources queue:v19 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    repo2 = [(DSSharingPermissions *)self repo];
    sources2 = [repo2 sources];
    [(DSSharingPermissions *)self fetchPermissionsFromSources:sources2 includingErrors:MEMORY[0x277CBEBF8] queue:queueCopy completion:completionCopy];
  }
}

void __59__DSSharingPermissions_fetchPermissionsOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained fetchPermissionsFromSources:v6 includingErrors:v5 queue:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_trackResourceForPublicAccess:(id)access source:(id)source
{
  v23 = *MEMORY[0x277D85DE8];
  accessCopy = access;
  sourceCopy = source;
  if ([accessCopy visibility] == 2)
  {
    v8 = accessCopy;
  }

  else
  {
    v8 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([accessCopy participationAccess] & 2) != 0)
  {
    v9 = accessCopy;

    v8 = v9;
  }

  if (v8)
  {
    os_unfair_lock_lock(&self->_permissionsLock);
    v10 = [[DSPublicSharingType alloc] initWithSource:sourceCopy];
    publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
    v12 = [publicSharingTypes indexOfObject:v10];

    publicSharingTypes2 = [(DSSharingPermissions *)self publicSharingTypes];
    v14 = publicSharingTypes2;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [publicSharingTypes2 addObject:v10];

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
      v16 = [publicSharingTypes2 objectAtIndexedSubscript:v12];

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
  people = [(DSSharingPermissions *)self people];
  [people sortUsingComparator:&__block_literal_global_1];

  sharingTypes = [(DSSharingPermissions *)self sharingTypes];
  [sharingTypes sortUsingComparator:&__block_literal_global_52];

  publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
  [publicSharingTypes sortUsingComparator:&__block_literal_global_55];

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

- (void)addParticipant:(id)participant forSource:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role
{
  participantCopy = participant;
  sourceCopy = source;
  resourceCopy = resource;
  v13 = [[DSSharingPerson alloc] initWithSource:sourceCopy sharedResource:resourceCopy participant:participantCopy deviceOwnerRole:role];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__DSSharingPermissions_addParticipant_forSource_sharedResource_deviceOwnerRole___block_invoke;
  v23[3] = &unk_278F72C40;
  objc_copyWeak(v29, &location);
  v14 = v13;
  v24 = v14;
  selfCopy = self;
  v15 = participantCopy;
  v26 = v15;
  v16 = sourceCopy;
  v27 = v16;
  v17 = resourceCopy;
  v28 = v17;
  v29[1] = role;
  v18 = MEMORY[0x24C1E7EB0](v23);
  v19 = [(DSSharingPermissions *)self me];

  if (v19)
  {
    v18[2](v18);
  }

  else
  {
    workQueue = [(DSSharingPermissions *)self workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__DSSharingPermissions_addParticipant_forSource_sharedResource_deviceOwnerRole___block_invoke_57;
    v21[3] = &unk_278F726C8;
    v21[4] = self;
    v22 = v18;
    dispatch_async(workQueue, v21);
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

- (void)removePerson:(id)person
{
  personCopy = person;
  allSources = [personCopy allSources];
  [(DSSharingPermissions *)self removePerson:personCopy sources:allSources];
}

- (void)removePerson:(id)person sources:(id)sources
{
  v40 = *MEMORY[0x277D85DE8];
  personCopy = person;
  sourcesCopy = sources;
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_permissionsLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = sourcesCopy;
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
        sharingTypes = [(DSSharingPermissions *)self sharingTypes];
        v14 = [sharingTypes indexOfObject:v12];

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v12;
        }

        else
        {
          sharingTypes2 = [(DSSharingPermissions *)self sharingTypes];
          v15 = [sharingTypes2 objectAtIndexedSubscript:v14];

          [v15 removePerson:personCopy];
          allPeople = [v15 allPeople];
          v18 = [allPeople count];

          if (!v18)
          {
            [array addObject:v15];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  allSources = [personCopy allSources];
  v20 = [allSources count];

  if (!v20)
  {
    people = [(DSSharingPermissions *)self people];
    [people removeObject:personCopy];
  }

  os_unfair_lock_unlock(&self->_permissionsLock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = array;
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

        [(DSSharingPermissions *)self removeSharingType:*(*(&v30 + 1) + 8 * v26++), array];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)removeSharingType:(id)type
{
  typeCopy = type;
  allPeople = [typeCopy allPeople];
  [(DSSharingPermissions *)self removeSharingType:typeCopy people:allPeople];
}

- (void)removeSharingType:(id)type people:(id)people
{
  v42 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  peopleCopy = people;
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_permissionsLock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = peopleCopy;
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
        people = [(DSSharingPermissions *)self people];
        v15 = [people indexOfObject:v13];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          people2 = [(DSSharingPermissions *)self people];
          v17 = [people2 objectAtIndexedSubscript:v15];

          source = [typeCopy source];
          name = [source name];
          [v17 removeSourceWithName:name];

          allSources = [v17 allSources];
          v21 = [allSources count];

          if (!v21)
          {
            [array addObject:v17];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  allPeople = [typeCopy allPeople];
  v23 = [allPeople count];

  if (!v23)
  {
    sharingTypes = [(DSSharingPermissions *)self sharingTypes];
    [sharingTypes removeObject:typeCopy];
  }

  os_unfair_lock_unlock(&self->_permissionsLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = array;
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

- (void)removePublicSharingType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_permissionsLock);
  publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
  [publicSharingTypes removeObject:typeCopy];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterPeopleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_permissionsLock);
  people = [(DSSharingPermissions *)self people];
  v6 = [people filteredOrderedSetUsingPredicate:predicateCopy];

  [(DSSharingPermissions *)self setFilteredPeople:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterReadOnlySharingPeopleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_permissionsLock);
  readOnlySharingPeople = [(DSSharingPermissions *)self readOnlySharingPeople];
  v6 = [readOnlySharingPeople filteredOrderedSetUsingPredicate:predicateCopy];

  [(DSSharingPermissions *)self setFilteredReadOnlySharingPeople:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterSharingTypesWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_permissionsLock);
  sharingTypes = [(DSSharingPermissions *)self sharingTypes];
  v6 = [sharingTypes filteredOrderedSetUsingPredicate:predicateCopy];

  [(DSSharingPermissions *)self setFilteredSharingTypes:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)filterReadOnlySharingTypesWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_permissionsLock);
  readOnlySharingTypes = [(DSSharingPermissions *)self readOnlySharingTypes];
  v6 = [readOnlySharingTypes filteredOrderedSetUsingPredicate:predicateCopy];

  [(DSSharingPermissions *)self setFilteredReadOnlySharingTypes:v6];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (id)person:(int64_t)person withFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
  {
    [(DSSharingPermissions *)self filteredPeople];
  }

  else
  {
    [(DSSharingPermissions *)self people];
  }
  v7 = ;
  v8 = v7;
  if (person < 0 || [v7 count] <= person)
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
    v9 = [v8 objectAtIndexedSubscript:person];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (id)readOnlySharingPerson:(int64_t)person withFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
  {
    [(DSSharingPermissions *)self filteredReadOnlySharingPeople];
  }

  else
  {
    [(DSSharingPermissions *)self readOnlySharingPeople];
  }
  v7 = ;
  v8 = v7;
  if (person < 0 || [v7 count] <= person)
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
    v9 = [v8 objectAtIndexedSubscript:person];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (id)sharingType:(int64_t)type withFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
  {
    [(DSSharingPermissions *)self filteredSharingTypes];
  }

  else
  {
    [(DSSharingPermissions *)self sharingTypes];
  }
  v7 = ;
  v8 = v7;
  if (type < 0 || [v7 count] <= type)
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
    v9 = [v8 objectAtIndexedSubscript:type];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (id)publicSharingType:(int64_t)type
{
  os_unfair_lock_lock(&self->_permissionsLock);
  publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
  v6 = publicSharingTypes;
  if (type < 0 || [publicSharingTypes count] <= type)
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
    v7 = [v6 objectAtIndexedSubscript:type];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v7;
}

- (id)readOnlySharingType:(int64_t)type withFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
  {
    [(DSSharingPermissions *)self filteredReadOnlySharingTypes];
  }

  else
  {
    [(DSSharingPermissions *)self readOnlySharingTypes];
  }
  v7 = ;
  v8 = v7;
  if (type < 0 || [v7 count] <= type)
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
    v9 = [v8 objectAtIndexedSubscript:type];
    os_unfair_lock_unlock(&self->_permissionsLock);
  }

  return v9;
}

- (int64_t)peopleCountWithFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
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

- (int64_t)readOnlySharingPeopleCountWithFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
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

- (int64_t)sharingTypesCountWithFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
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
  publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
  v4 = [publicSharingTypes count];

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

- (int64_t)readOnlySharingTypesCountWithFilter:(BOOL)filter
{
  os_unfair_lock_lock(&self->_permissionsLock);
  if (filter)
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
  people = [(DSSharingPermissions *)self people];
  array = [people array];

  return array;
}

- (NSArray)allReadOnlySharingPeople
{
  readOnlySharingPeople = [(DSSharingPermissions *)self readOnlySharingPeople];
  array = [readOnlySharingPeople array];

  return array;
}

- (NSArray)allSharingTypes
{
  sharingTypes = [(DSSharingPermissions *)self sharingTypes];
  array = [sharingTypes array];

  return array;
}

- (NSArray)allPublicSharingTypes
{
  publicSharingTypes = [(DSSharingPermissions *)self publicSharingTypes];
  array = [publicSharingTypes array];

  return array;
}

- (NSArray)allReadOnlySharingTypes
{
  readOnlySharingTypes = [(DSSharingPermissions *)self readOnlySharingTypes];
  array = [readOnlySharingTypes array];

  return array;
}

- (NSDictionary)elapsedUnfinishedFetchesBySource
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        fetchStartTimesBySource = [(DSSharingPermissions *)self fetchStartTimesBySource];
        v11 = [fetchStartTimesBySource objectForKeyedSubscript:v9];
        unsignedLongLongValue = [v11 unsignedLongLongValue];

        v13 = [MEMORY[0x277CCABB0] numberWithDouble:(v4 - unsignedLongLongValue) / 1000000000.0];
        [dictionary setObject:v13 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_permissionsLock);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)fetchStartedForSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  fetchStartTimesBySource = [(DSSharingPermissions *)self fetchStartTimesBySource];
  [fetchStartTimesBySource setObject:v5 forKeyedSubscript:sourceCopy];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)fetchCompletedForSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&self->_permissionsLock);
  fetchStartTimesBySource = [(DSSharingPermissions *)self fetchStartTimesBySource];
  [fetchStartTimesBySource setObject:0 forKeyedSubscript:sourceCopy];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)stopAllSharingOnQueue:(id)queue completion:(id)completion
{
  v134 = *MEMORY[0x277D85DE8];
  queue = queue;
  completionCopy = completion;
  v6 = dispatch_group_create();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  allSharingTypes = [(DSSharingPermissions *)self allSharingTypes];
  v9 = [allSharingTypes copy];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277CBEB58];
  allPublicSharingTypes = [(DSSharingPermissions *)self allPublicSharingTypes];
  v12 = [allPublicSharingTypes copy];
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
        source = [v17 source];
        v20 = [(DSPublicSharingType *)v18 initWithSource:source];

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
        source2 = [v26 source];
        name = [source2 name];
        v30 = [name isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

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
          source3 = [v26 source];
          name2 = [source3 name];
          v38 = [name2 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

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
            source4 = [v26 source];
            name3 = [source4 name];
            v42 = [name3 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

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
              source5 = [v26 source];
              name4 = [source5 name];
              v46 = [name4 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

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
                source6 = [v26 source];
                name5 = [source6 name];
                v50 = [name5 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

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
                  source7 = [v26 source];
                  name6 = [source7 name];
                  v54 = [name6 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

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
                    source8 = [v26 source];
                    name7 = [source8 name];
                    v58 = [name7 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

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
                      source9 = [v26 source];
                      name8 = [source9 name];
                      v62 = [name8 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

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
                        source10 = [v26 source];
                        name9 = [source10 name];
                        v66 = [name9 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

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
                          source11 = [v26 source];
                          name10 = [source11 name];
                          v70 = [name10 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

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
                            source12 = [v26 source];
                            name11 = [source12 name];
                            v74 = [name11 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

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
                                source13 = [v26 source];
                                name12 = [source13 name];
                                *buf = 138543362;
                                v131 = name12;
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
          source14 = [v26 source];
          name13 = [source14 name];
          *buf = 138543362;
          v131 = name13;
          _os_log_impl(&dword_248C40000, v76, OS_LOG_TYPE_INFO, "Stopping all sharing for type %{public}@", buf, 0xCu);
        }

        allPeople = [v26 allPeople];
        v80 = [allPeople copy];

        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __57__DSSharingPermissions_stopAllSharingOnQueue_completion___block_invoke;
        v114[3] = &unk_278F72C68;
        v114[4] = v26;
        v115 = array;
        objc_copyWeak(v119, &location);
        v116 = array2;
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
        v106 = array;
        objc_copyWeak(&v109, &location);
        v107 = array2;
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
  v103 = completionCopy;
  v104 = v21;
  v101 = array2;
  v102 = array;
  v89 = array;
  v90 = array2;
  v91 = completionCopy;
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