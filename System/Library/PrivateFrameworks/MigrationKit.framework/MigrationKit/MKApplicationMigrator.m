@interface MKApplicationMigrator
- (BOOL)importAndWait;
- (BOOL)prompt;
- (MKApplicationMigrator)init;
- (id)lookup;
- (void)close;
- (void)dealloc;
- (void)didLookup:(id)a3 identifiers:(id)a4 error:(id)a5;
- (void)drainQueue;
- (void)import;
- (void)import:(id)a3;
- (void)import:(id)a3 identifiers:(id)a4;
- (void)importDataEncodedInJSON:(id)a3;
- (void)install:(id)a3;
- (void)lookup:(id)a3;
- (void)purchase;
- (void)purchase2;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)slice:(unint64_t)a3;
@end

@implementation MKApplicationMigrator

- (MKApplicationMigrator)init
{
  v7.receiver = self;
  v7.super_class = MKApplicationMigrator;
  v2 = [(MKMigrator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MKMigrator *)v2 setType:2];
    v4 = objc_alloc_init(MKApplicationDatabase);
    db = v3->_db;
    v3->_db = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(MKApplicationMigrator *)self close];
  v3.receiver = self;
  v3.super_class = MKApplicationMigrator;
  [(MKApplicationMigrator *)&v3 dealloc];
}

- (void)import
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSMutableArray *)obj->_identifiers count])
  {
    obj->_isImporting = 1;
    objc_sync_exit(obj);
  }

  else
  {
    objc_sync_exit(obj);

    v3.receiver = obj;
    v3.super_class = MKApplicationMigrator;
    [(MKMigrator *)&v3 import];
  }
}

- (void)close
{
  [(MKApplicationDatabase *)self->_db close];
  db = self->_db;
  self->_db = 0;
}

- (void)importDataEncodedInJSON:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  [(MKApplicationMigrator *)v4 import:v6];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(v4);
}

- (void)import:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ will import applications.", buf, 0xCu);
  }

  v14 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationMigrator import:];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      if ([v8 count])
      {
        v9 = [v8 mutableCopy];
        [(MKApplicationMigrator *)self setIdentifiers:v9];

        self->_totalCount = [(NSMutableArray *)self->_identifiers count];
        -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v4 length]);
        totalCount = self->_totalCount;
        if (totalCount % 0x32)
        {
          v11 = totalCount / 0x32 + 1;
        }

        else
        {
          v11 = totalCount / 0x32;
        }

        for (; v11; --v11)
        {
          v12 = [(MKMigrator *)self delegate];
          [v12 migratorWillExecuteOperation:self];
        }

        [(MKApplicationMigrator *)self drainQueue];
      }
    }

    else
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationMigrator import:v8];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)drainQueue
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_identifiers count];
  if (v3)
  {
    if (v3 >= 0x32)
    {
      v4 = 50;
    }

    else
    {
      v4 = v3;
    }

    v12 = [(NSMutableArray *)self->_identifiers subarrayWithRange:0, v4];
    [(MKApplicationMigrator *)self lookup:?];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = self->_totalCount - self->_matchedAppsCount;
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      totalCount = self->_totalCount;
      matchedAppsCount = self->_matchedAppsCount;
      *buf = 138413058;
      v14 = self;
      v15 = 2048;
      v16 = totalCount;
      v17 = 2048;
      v18 = matchedAppsCount;
      v19 = 2048;
      v20 = v6;
      _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ is done. total_count=%ld, matched_apps_count=%ld, not_matched_apps_count=%ld", buf, 0x2Au);
    }

    v10 = objc_alloc_init(MKApplicationAnalytics);
    [(MKApplicationAnalytics *)v10 send:self->_matchedAppsCount mismatchedApps:v6];

    if (self->_isImporting)
    {
      [(MKApplicationMigrator *)self import];
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)slice:(unint64_t)a3
{
  [(NSMutableArray *)self->_identifiers removeObjectsInRange:0, a3];

  [(MKApplicationMigrator *)self drainQueue];
}

- (void)lookup:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MKAppSearchRequest);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MKApplicationMigrator_lookup___block_invoke;
  v7[3] = &unk_2798DCCF0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(MKAppSearchRequest *)v5 search:0 androidIDs:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __32__MKApplicationMigrator_lookup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didLookup:v6 identifiers:*(a1 + 32) error:v5];
}

- (void)didLookup:(id)a3 identifiers:(id)a4 error:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MKMigrator *)self delegate];
  [v11 migratorDidExecuteOperation:self];

  v12 = self;
  objc_sync_enter(v12);
  v13 = objc_autoreleasePoolPush();
  v14 = +[MKLog log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138412802;
    v18 = v12;
    v19 = 2048;
    v20 = [v8 count];
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "%@ did lookup android ids. apps=%ld, error=%@", &v17, 0x20u);
  }

  if (v10)
  {
    lookupErrorCount = v12->_lookupErrorCount;
    if (lookupErrorCount < 0xA)
    {
      v12->_lookupErrorCount = lookupErrorCount + 1;
      [(MKApplicationMigrator *)v12 drainQueue];
    }

    else
    {
      [(MKApplicationDatabase *)v12->_db addIdentifiers:v9];
      -[MKMigrator migratorDidFailWithImportError:count:](v12, "migratorDidFailWithImportError:count:", v10, [v9 count]);
      -[MKApplicationMigrator slice:](v12, "slice:", [v9 count]);
    }
  }

  else
  {
    v12->_lookupErrorCount = 0;
    [(MKApplicationMigrator *)v12 import:v8 identifiers:v9];
  }

  objc_autoreleasePoolPop(v13);
  objc_sync_exit(v12);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)import:(id)a3 identifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  self->_matchedAppsCount += [v7 count];
  [(MKApplicationMigrator *)self install:v7];
  -[MKMigrator migratorDidImportWithCount:](self, "migratorDidImportWithCount:", [v7 count]);
  v8 = [v6 count];
  v9 = [v7 count];

  [(MKMigrator *)self migratorDidFailWithImportError:0 count:v8 - v9];
  v10 = [v6 count];

  [(MKApplicationMigrator *)self slice:v10];
}

- (BOOL)importAndWait
{
  v3 = +[MKLog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "app installation will continue.", buf, 2u);
  }

  v4 = [(MKApplicationMigrator *)self lookup];
  [(MKApplicationMigrator *)self install:v4];
  if ([(MKApplicationDatabase *)self->_db countForAppStoreIdentifiers]>= 1 && [(MKApplicationMigrator *)self prompt])
  {
    [(MKApplicationMigrator *)self purchase];
  }

  [(MKApplicationDatabase *)self->_db drop];
  [(MKApplicationDatabase *)self->_db close];
  db = self->_db;
  self->_db = 0;

  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "app installation is done.", v8, 2u);
  }

  return 1;
}

- (id)lookup
{
  v2 = [(MKApplicationDatabase *)self->_db identifiers];
  v3 = [v2 count];
  v4 = v3;
  if (v3 >= 50)
  {
    v5 = 50;
  }

  else
  {
    v5 = v3;
  }

  v6 = [v2 subarrayWithRange:{0, v5}];
  v7 = dispatch_semaphore_create(0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v8 = 0;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while ([v6 count])
  {
    v9 = objc_alloc_init(MKAppSearchRequest);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__MKApplicationMigrator_lookup__block_invoke;
    v16[3] = &unk_2798DCD18;
    v18 = &v31;
    v19 = &v27;
    v20 = &v21;
    v10 = v7;
    v17 = v10;
    [(MKAppSearchRequest *)v9 search:0 androidIDs:v6 completion:v16];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v28;
    v12 = v32;
    if (v28[3] < 10)
    {
      if (v32[3])
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v32 + 24) = 0;
    }

    *(v12 + 24) = 0;
    v11[3] = 0;
    v8 += v5;
    v4 -= v5;
    if (v4 >= 50)
    {
      v5 = 50;
    }

    else
    {
      v5 = v4;
    }

    v13 = [v2 subarrayWithRange:{v8, v5}];

    v6 = v13;
LABEL_13:
  }

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __31__MKApplicationMigrator_lookup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    ++*(*(*(a1 + 48) + 8) + 24);
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __31__MKApplicationMigrator_lookup__block_invoke_cold_1(v6);
    }
  }

  if ([v5 count])
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v5];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)install:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v4)
  {
    v6 = v4;
    v36 = *v38;
    *&v5 = 138413570;
    v33 = v5;
    v35 = self;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v9 = +[MKLog log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 bundleIdentifier];
          v11 = [v8 appStoreIdentifier];
          v12 = [v8 name];
          v13 = [v8 developer];
          v14 = [v8 iconURL];
          v15 = [v8 isFree];
          *buf = v33;
          v42 = v10;
          v43 = 2112;
          v44 = v11;
          v45 = 2112;
          v46 = v12;
          v47 = 2112;
          v48 = v13;
          v49 = 2112;
          v50 = v14;
          v51 = 1024;
          v52 = v15;
          _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "will install an application. bundle_id=%@, appstore_id=%@, name=%@, developer=%@, icon=%@, free=%d", buf, 0x3Au);

          self = v35;
        }

        if ([v8 isFree])
        {
          signatures = self->_signatures;
          v17 = [v8 bundleIdentifier];
          v18 = [(NSDictionary *)signatures objectForKey:v17];

          if (!v18)
          {
            v19 = MEMORY[0x277CBEA90];
            v20 = MEMORY[0x277CBEBC0];
            v21 = [v8 iconURL];
            v22 = [v20 URLWithString:v21];
            v23 = [v19 dataWithContentsOfURL:v22];

            v24 = [MKPlaceholder alloc];
            v25 = [v8 bundleIdentifier];
            v26 = [v8 appStoreIdentifier];
            v27 = [v8 name];
            v28 = [v8 developer];
            v29 = [(MKPlaceholder *)v24 initWithBundleIdentifier:v25 appStoreIdentifier:v26 bundleName:v27 developer:v28 icon:v23];

            self = v35;
            [(MKPlaceholder *)v29 install];
          }

          db = self->_db;
          v31 = [v8 appStoreIdentifier];
          [(MKApplicationDatabase *)db addAppStoreIdentifier:v31];
        }

        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v6);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)prompt
{
  v22[4] = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v21[0] = *MEMORY[0x277CBF188];
  v3 = MKLocalizedString(@"APP_MIGRATION_PROMPT_TITLE");
  v22[0] = v3;
  v21[1] = *MEMORY[0x277CBF198];
  v4 = MKLocalizedString(@"APP_MIGRATION_PROMPT_MESSAGE");
  v22[1] = v4;
  v21[2] = *MEMORY[0x277CBF1E8];
  v5 = MKLocalizedString(@"APP_MIGRATION_PROMPT_CHOICE_YES");
  v22[2] = v5;
  v21[3] = *MEMORY[0x277CBF1C0];
  v6 = MKLocalizedString(@"APP_MIGRATION_PROMPT_CHOICE_NO");
  v22[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v7);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = dispatch_get_global_queue(25, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__MKApplicationMigrator_prompt__block_invoke;
  v12[3] = &unk_2798DCCC8;
  v14 = v20;
  v15 = &v16;
  v13 = v2;
  v9 = v2;
  dispatch_async(v8, v12);

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v2) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

intptr_t __31__MKApplicationMigrator_prompt__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 40) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = responseFlags == 0;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)purchase
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(MKApplicationDatabase *)self->_db appStoreIdentifiers];
  v5 = 0;
  v6 = *MEMORY[0x277D6A288];
  *&v7 = 138412290;
  v19 = v7;
  while (v5 < [v4 count])
  {
    v8 = [v4 objectAtIndexedSubscript:v5];
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = v19;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "will lookup a store item. id=%@", &buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277D69B18]);
    [v10 setValue:v8 forParameter:v6];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __33__MKApplicationMigrator_purchase__block_invoke;
    v25[3] = &unk_2798DCD18;
    v27 = &v40;
    v28 = &v36;
    v29 = &v30;
    v11 = v3;
    v26 = v11;
    [v10 startWithItemLookupBlock:v25];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v37;
    v13 = v41;
    if (v37[3] < 10)
    {
      if (v41[3])
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v41 + 24) = 0;
    }

    *(v13 + 24) = 0;
    v12[3] = 0;
    ++v5;
LABEL_9:
  }

  v14 = +[MKLog log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "will create a store purchase request.", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v15 = objc_alloc(MEMORY[0x277D69C20]);
  v48 = [v15 initWithPurchases:v31[5]];
  v16 = *(*(&buf + 1) + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __33__MKApplicationMigrator_purchase__block_invoke_29;
  v22[3] = &unk_2798DCD40;
  p_buf = &buf;
  v23 = v3;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __33__MKApplicationMigrator_purchase__block_invoke_31;
  v20[3] = &unk_2798DCD68;
  v17 = v23;
  v21 = v17;
  [v16 startWithPurchaseResponseBlock:v22 completionBlock:v20];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __33__MKApplicationMigrator_purchase__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    ++*(*(*(a1 + 48) + 8) + 24);
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __33__MKApplicationMigrator_purchase__block_invoke_cold_1(v6);
    }
  }

  if (v5 && [v5 count] == 1)
  {
    v8 = objc_alloc(MEMORY[0x277D69C10]);
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v8 initWithItem:v9];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v10];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __33__MKApplicationMigrator_purchase__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v6 = [v3 error];
    v7 = [v6 code];

    if (v7 == 16)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __33__MKApplicationMigrator_purchase__block_invoke_29_cold_1(v3);
      }

      [*(*(*(a1 + 40) + 8) + 40) cancel];
    }
  }

  else
  {
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)purchase2
{
  v3 = objc_alloc_init(MEMORY[0x277CEE438]);
  [v3 setParameter:&unk_286AAC848 forKey:*MEMORY[0x277CEE170]];
  v4 = [objc_alloc(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:v3];
  [v4 setUserInitiated:1];
  v5 = [MEMORY[0x277CEE3F8] bagForProfile:@"AMSPurchase" profileVersion:@"1"];
  v6 = [objc_alloc(MEMORY[0x277CEE660]) initWithPurchase:v4 bag:v5];
  [v6 setDelegate:self];
  v7 = [v6 performPurchase];
  v8 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__MKApplicationMigrator_purchase2__block_invoke;
  v10[3] = &unk_2798DCD90;
  v11 = v8;
  v9 = v8;
  [v7 resultWithCompletion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void __34__MKApplicationMigrator_purchase2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "result=%@, error=%@", &v9, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x277CEE3E8];
  v7 = a5;
  v8 = a4;
  v10 = [[v6 alloc] initWithRequest:v8];

  v9 = [v10 performAuthentication];
  [v9 addFinishBlock:v7];
}

@end