@interface MSPSharedTripBlocklist
+ (MSPSharedTripBlocklist)sharedInstance;
+ (void)migrateFromiCloudKVSIfNeeded;
- (BOOL)containsAnyIdentifiersInArray:(id)a3;
- (BOOL)containsIdentifier:(id)a3;
- (MSPSharedTripBlocklist)init;
- (id)_fetchSyncedIdentifiers;
- (id)description;
- (void)_purgeExpiredIdentifiersIn:(id)a3;
- (void)_reloadBlockedIdentifiersFromSync;
- (void)blockIdentifier:(id)a3;
- (void)blockIdentifiers:(id)a3;
- (void)clearBlockedIdentifiers;
- (void)purgeExpiredIdentifiers;
- (void)storeDidChange:(id)a3;
- (void)unblockIdentifiers:(id)a3;
@end

@implementation MSPSharedTripBlocklist

+ (MSPSharedTripBlocklist)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSPSharedTripBlocklist_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_blocklist;

  return v2;
}

uint64_t __40__MSPSharedTripBlocklist_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_blocklist = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MSPSharedTripBlocklist)init
{
  v23 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = MSPSharedTripBlocklist;
  v2 = [(MSPSharedTripBlocklist *)&v19 init];
  if (v2)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = v2;
      v6 = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), v5];

      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing...", buf, 0xCu);
    }

    v7 = dispatch_queue_create("com.apple.mapspushd.SharedTripBlocklist", 0);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    blockedIdentifiers = v2->_blockedIdentifiers;
    v2->_blockedIdentifiers = v9;

    v20 = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v11;

    v13 = [MEMORY[0x277D26670] sharedStore];
    [v13 subscribe:v2];

    v14 = v2->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__MSPSharedTripBlocklist_init__block_invoke;
    block[3] = &unk_279866158;
    v18 = v2;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)description
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableSet *)self->_blockedIdentifiers allObjects];
  v3 = v2;
  if (v2)
  {
    if ([v2 count])
    {
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v24 = v3;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v25 + 1) + 8 * i);
            if (v10)
            {
              v11 = MEMORY[0x277CCACA8];
              v12 = v10;
              v13 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), v12];
            }

            else
            {
              v13 = @"<nil>";
            }

            [v4 addObject:v13];
          }

          v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v7);
      }

      v14 = [v5 componentsJoinedByString:{@", "}];
      v15 = MEMORY[0x277CCACA8];
      v16 = v5;
      v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];

      v18 = [v15 stringWithFormat:@"%@ [%@]", v17, v14];

      v3 = v24;
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = v3;
      v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

      v18 = [v19 stringWithFormat:@"%@ (empty)", v21];
    }
  }

  else
  {
    v18 = @"<nil>";
  }

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)containsAnyIdentifiersInArray:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSPSharedTripBlocklist_containsAnyIdentifiersInArray___block_invoke;
  block[3] = &unk_279866180;
  v18 = &v19;
  block[4] = self;
  v7 = v5;
  v17 = v7;
  dispatch_sync(isolationQueue, block);
  v8 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v9];

    if (*(v20 + 24))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    *buf = 138543874;
    v24 = v10;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] containsIdentifiers? %@ : %@", buf, 0x20u);
  }

  v13 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

uint64_t __56__MSPSharedTripBlocklist_containsAnyIdentifiersInArray___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) intersectsSet:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)containsIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSPSharedTripBlocklist_containsIdentifier___block_invoke;
  block[3] = &unk_279866180;
  v17 = &v18;
  block[4] = self;
  v6 = v4;
  v16 = v6;
  dispatch_sync(isolationQueue, block);
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v8];

    if (*(v19 + 24))
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    *buf = 138543874;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] containsIdentifier? %@ : %@", buf, 0x20u);
  }

  v12 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

uint64_t __45__MSPSharedTripBlocklist_containsIdentifier___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)blockIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v8 count:1];

    [(MSPSharedTripBlocklist *)self blockIdentifiers:v6, v8, v9];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)blockIdentifiers:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v4];
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__MSPSharedTripBlocklist_blockIdentifiers___block_invoke;
    block[3] = &unk_279865EF8;
    v7 = v5;
    v50 = v7;
    v51 = self;
    dispatch_sync(isolationQueue, block);
    if ([v7 count])
    {
      GEOConfigGetDouble();
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = self;
        v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];

        v15 = [v7 count];
        *buf = 138544130;
        v54 = v14;
        v55 = 2048;
        v56 = v15;
        v57 = 2112;
        v58 = v7;
        v59 = 2112;
        v60 = v8;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] blockIdentifiers | blocking %lu identifiers %@ (expires at %@)", buf, 0x2Au);
      }

      v16 = [v7 count];
      if (v16 < [v4 count])
      {
        v17 = [v4 count];
        v18 = [v7 count];
        v19 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v17 - v18;
          v21 = MEMORY[0x277CCACA8];
          v22 = self;
          v23 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];

          v24 = [v4 count];
          *buf = 138543874;
          v54 = v23;
          v55 = 2048;
          v56 = v20;
          v57 = 2048;
          v58 = v24;
          _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] blockIdentifiers | %lu/%lu identifiers were already blocked", buf, 0x20u);
        }
      }

      v42 = self;
      v43 = v8;
      v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v26 = v7;
      v27 = [v26 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v46;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [objc_alloc(MEMORY[0x277D26648]) initWithExpiryTime:v10 sharedTripIdentifier:*(*(&v45 + 1) + 8 * i)];
            if (v31)
            {
              [(__CFString *)v25 addObject:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v28);
      }

      v32 = [MEMORY[0x277D26670] sharedStore];
      v44 = 0;
      [v32 saveWithObjects:v25 error:&v44];
      v33 = v44;

      v34 = v43;
      if (v33)
      {
        v35 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          if (v42)
          {
            v36 = MEMORY[0x277CCACA8];
            v37 = v42;
            v34 = v43;
            v38 = [v36 stringWithFormat:@"%@<%p>", objc_opt_class(), v37];
          }

          else
          {
            v38 = @"<nil>";
          }

          *buf = 138543874;
          v54 = v38;
          v55 = 2112;
          v56 = v26;
          v57 = 2112;
          v58 = v33;
          _os_log_impl(&dword_25813A000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] block | failed to block identifiers %@: error: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v34 = MSPGetSharedTripLog();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        goto LABEL_30;
      }

      v39 = MEMORY[0x277CCACA8];
      v40 = self;
      v25 = [v39 stringWithFormat:@"%@<%p>", objc_opt_class(), v40];

      *buf = 138543618;
      v54 = v25;
      v55 = 2112;
      v56 = v4;
      _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_ERROR, "[%{public}@] block | already blocked: %@", buf, 0x16u);
    }

    goto LABEL_29;
  }

LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __43__MSPSharedTripBlocklist_blockIdentifiers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) minusSet:*(*(a1 + 40) + 8)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 unionSet:v2];
}

- (void)unblockIdentifiers:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543362;
    v43 = v8;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] unblockIdentifiers", buf, 0xCu);
  }

  if (v4)
  {
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__MSPSharedTripBlocklist_unblockIdentifiers___block_invoke;
    block[3] = &unk_279865EF8;
    block[4] = self;
    v10 = v4;
    v41 = v10;
    dispatch_sync(isolationQueue, block);
    v11 = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
    if (!v11)
    {
LABEL_32:

      goto LABEL_33;
    }

    v12 = v11;
    v34 = v4;
    v33 = v10;
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v10];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          v21 = [v20 sharedTripIdentifier];
          v22 = [v13 containsObject:v21];

          if (v22)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      v23 = [MEMORY[0x277D26670] sharedStore];
      v35 = 0;
      [v23 deleteWithObjects:v14 error:&v35];
      v24 = v35;

      if (v24)
      {
        v25 = MSPGetSharedTripLog();
        v4 = v34;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          if (self)
          {
            v26 = MEMORY[0x277CCACA8];
            v27 = self;
            v28 = [v26 stringWithFormat:@"%@<%p>", objc_opt_class(), v27];
          }

          else
          {
            v28 = @"<nil>";
          }

          *buf = 138543874;
          v43 = v28;
          v44 = 2112;
          v45 = v33;
          v46 = 2112;
          v47 = v24;
          _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_ERROR, "[%{public}@] unblock | failed to unblock identifiers %@: error: %@", buf, 0x20u);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v24 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v4 = v34;
        if (self)
        {
          v29 = MEMORY[0x277CCACA8];
          v30 = self;
          v31 = [v29 stringWithFormat:@"%@<%p>", objc_opt_class(), v30];
        }

        else
        {
          v31 = @"<nil>";
        }

        *buf = 138543618;
        v43 = v31;
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] unblock | no matching synced items to delete for %@", buf, 0x16u);

        goto LABEL_31;
      }
    }

    v4 = v34;
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
}

void __45__MSPSharedTripBlocklist_unblockIdentifiers___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v1 minusSet:v2];
}

- (void)clearBlockedIdentifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = self;
      v6 = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), v5];
    }

    else
    {
      v6 = @"<nil>";
    }

    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] clear | blocked identifiers", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSPSharedTripBlocklist_clearBlockedIdentifiers__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
  v8 = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
  if (v8)
  {
    v9 = [MEMORY[0x277D26670] sharedStore];
    v16 = 0;
    [v9 deleteWithObjects:v8 error:&v16];
    v10 = v16;

    if (v10)
    {
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = self;
        v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];

        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] clear | failed to delete all identifiers with error: %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)purgeExpiredIdentifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = self;
      v6 = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), v5];
    }

    else
    {
      v6 = @"<nil>";
    }

    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] purge | requested", buf, 0xCu);
  }

  v7 = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
  v8 = v7;
  if (v7)
  {
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__MSPSharedTripBlocklist_purgeExpiredIdentifiers__block_invoke;
    block[3] = &unk_279865EF8;
    block[4] = self;
    v12 = v7;
    dispatch_async(isolationQueue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_purgeExpiredIdentifiersIn:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v64 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v67;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v66 + 1) + 8 * i);
        v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v9, "expiryTime")}];
        [v10 timeIntervalSinceNow];
        if (v11 <= 0.0)
        {
          v12 = v11;
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            if (self)
            {
              v14 = MEMORY[0x277CCACA8];
              v15 = self;
              v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
            }

            else
            {
              v16 = @"<nil>";
            }

            v17 = [v9 sharedTripIdentifier];
            *buf = 138543874;
            v76 = v16;
            v77 = 2112;
            v78 = v17;
            v79 = 2048;
            v80 = fabs(v12);
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@] purge | found %@ which expired %#.1lfs ago", buf, 0x20u);
          }

          [v63 addObject:v9];
          v18 = [v9 sharedTripIdentifier];
          [v64 addObject:v18];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v6);
  }

  v19 = [v64 count];
  v20 = MSPGetSharedTripLog();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = self;
        v24 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), v23];
      }

      else
      {
        v24 = @"<nil>";
      }

      v28 = v24;
      v29 = [v64 count];
      v30 = [v4 count];
      v31 = [v64 allObjects];
      v32 = v31;
      if (v31)
      {
        if ([v31 count])
        {
          v57 = v30;
          v58 = v29;
          v60 = v28;
          v61 = v21;
          v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v32, "count")}];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v59 = v32;
          v34 = v32;
          v35 = [v34 countByEnumeratingWithState:&v70 objects:buf count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v71;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v71 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v70 + 1) + 8 * j);
                if (v39)
                {
                  v40 = MEMORY[0x277CCACA8];
                  v41 = v39;
                  v42 = [v40 stringWithFormat:@"%@<%p>", objc_opt_class(), v41];
                }

                else
                {
                  v42 = @"<nil>";
                }

                [v33 addObject:v42];
              }

              v36 = [v34 countByEnumeratingWithState:&v70 objects:buf count:16];
            }

            while (v36);
          }

          v43 = [v34 componentsJoinedByString:{@", "}];
          v44 = MEMORY[0x277CCACA8];
          v45 = v34;
          v46 = [v44 stringWithFormat:@"%@<%p>", objc_opt_class(), v45];

          v47 = [v44 stringWithFormat:@"%@ [%@]", v46, v43];

          v28 = v60;
          v21 = v61;
          v29 = v58;
          v32 = v59;
          v30 = v57;
        }

        else
        {
          v48 = MEMORY[0x277CCACA8];
          v49 = v32;
          v33 = [v48 stringWithFormat:@"%@<%p>", objc_opt_class(), v49];

          v47 = [v48 stringWithFormat:@"%@ (empty)", v33];
        }
      }

      else
      {
        v47 = @"<nil>";
      }

      *buf = 138544130;
      v76 = v28;
      v77 = 2048;
      v78 = v29;
      v79 = 2048;
      v80 = *&v30;
      v81 = 2112;
      v82 = v47;
      _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] purge | will purge %lu/%lu blocked identifiers: %@", buf, 0x2Au);
    }

    [(NSMutableSet *)self->_blockedIdentifiers minusSet:v64];
    v50 = [MEMORY[0x277D26670] sharedStore];
    v65 = 0;
    [v50 deleteWithObjects:v63 error:&v65];
    v21 = v65;

    if (v21)
    {
      v51 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = MEMORY[0x277CCACA8];
        v53 = self;
        v54 = [v52 stringWithFormat:@"%@<%p>", objc_opt_class(), v53];

        *buf = 138543618;
        v76 = v54;
        v77 = 2112;
        v78 = v21;
        _os_log_impl(&dword_25813A000, v51, OS_LOG_TYPE_ERROR, "[%{public}@] purge | failed to remove identifiers with error %@", buf, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = self;
      v27 = [v25 stringWithFormat:@"%@<%p>", objc_opt_class(), v26];
    }

    else
    {
      v27 = @"<nil>";
    }

    v55 = [v4 count];
    *buf = 138543618;
    v76 = v27;
    v77 = 2048;
    v78 = v55;
    _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_DEBUG, "[%{public}@] purge | found nothing to purge from %lu items", buf, 0x16u);
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)_reloadBlockedIdentifiersFromSync
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
  v4 = MSPGetSharedTripLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = self;
        v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
      }

      else
      {
        v8 = @"<nil>";
      }

      *buf = 138543618;
      v29 = v8;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] reload | loaded identifiers from sync: %@", buf, 0x16u);
    }

    [(MSPSharedTripBlocklist *)self _purgeExpiredIdentifiersIn:v3];
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSObject count](v3, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v23 + 1) + 8 * v16) sharedTripIdentifier];
          [v5 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    objc_storeStrong(&self->_blockedIdentifiers, v5);
    v18 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = self;
      v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20, v23];

      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] reload | set local copy of identifiers: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = self;
      v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
    }

    else
    {
      v11 = @"<nil>";
    }

    *buf = 138543362;
    v29 = v11;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] reload | could not load from sync", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_fetchSyncedIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D26650]);
  v13 = 0;
  v4 = [v3 fetchSyncAndReturnError:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = self;
        v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];
      }

      else
      {
        v10 = @"<nil>";
      }

      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] fetch | _fetchSyncedIdentifiers failed to fetch with error: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)storeDidChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = self;
      v7 = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), v6];
    }

    else
    {
      v7 = @"<nil>";
    }

    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] store | data changed, schedule reload of blocked identifiers", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MSPSharedTripBlocklist_storeDidChange___block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(isolationQueue, block);
  v9 = *MEMORY[0x277D85DE8];
}

+ (void)migrateFromiCloudKVSIfNeeded
{
  v21 = *MEMORY[0x277D85DE8];
  BOOL = GEOConfigGetBOOL();
  v4 = [MSPMapsDefaultsAccessor get:@"ShareETABlocklistMigration2022"];
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = a1;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    v9 = @"NO";
    if (BOOL)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | Last KVS blocklist migration performed: %{public}@, should always check: %{public}@", buf, 0x20u);
  }

  if (v4)
  {
    v11 = BOOL;
  }

  else
  {
    v11 = 1;
  }

  if (v11 == 1)
  {
    v12 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSPSharedTripBlocklist_migrateFromiCloudKVSIfNeeded__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__MSPSharedTripBlocklist_migrateFromiCloudKVSIfNeeded__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD80] defaultStore];
  v3 = [v2 dictionaryForKey:@"com.apple.mapspushd.MSPSharedTripBlacklist"];
  if (v3)
  {
    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = v5;
        v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
      }

      else
      {
        v8 = @"<nil>";
      }

      *buf = 138543362;
      v35 = v8;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Found blocklist data in iCloud KVS, will migrate in background", buf, 0xCu);
    }

    v9 = [v3 objectForKeyedSubscript:@"tripIdentifiers"];
    if ([v9 count])
    {
      v10 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = v11;
          v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];
        }

        else
        {
          v14 = @"<nil>";
        }

        v15 = [v9 count];
        *buf = 138543618;
        v35 = v14;
        v36 = 2048;
        v37 = v15;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Migrating %lu blocked trip identifiers...", buf, 0x16u);
      }

      v16 = [*(a1 + 32) sharedInstance];
      [v16 blockIdentifiers:v9];
    }

    if (GEOConfigGetBOOL())
    {
      v17 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        if (v18)
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = v18;
          v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];
        }

        else
        {
          v21 = @"<nil>";
        }

        *buf = 138543362;
        v35 = v21;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Clearing KVS blocklist post-migration...", buf, 0xCu);
      }

      [v2 removeObjectForKey:@"com.apple.mapspushd.MSPSharedTripBlacklist"];
      [v2 synchronize];
    }

    v22 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = v23;
        v26 = [v24 stringWithFormat:@"%@<%p>", objc_opt_class(), v25];
      }

      else
      {
        v26 = @"<nil>";
      }

      *buf = 138543362;
      v35 = v26;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Finished migrating blocked trip identifiers", buf, 0xCu);
    }
  }

  v27 = [MEMORY[0x277CBEAA8] date];
  v28 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = v29;
      v32 = [v30 stringWithFormat:@"%@<%p>", objc_opt_class(), v31];
    }

    else
    {
      v32 = @"<nil>";
    }

    *buf = 138543618;
    v35 = v32;
    v36 = 2114;
    v37 = v27;
    _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | Recording KVS migration check at: %{public}@", buf, 0x16u);
  }

  [MSPMapsDefaultsAccessor set:@"ShareETABlocklistMigration2022" value:v27];
  v33 = *MEMORY[0x277D85DE8];
}

@end