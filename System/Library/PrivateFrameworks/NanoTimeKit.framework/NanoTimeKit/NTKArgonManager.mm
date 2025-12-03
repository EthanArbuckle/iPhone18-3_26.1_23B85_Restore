@interface NTKArgonManager
- (NTKArgonManager)initWithKeyDatabase:(id)database fetchers:(id)fetchers extractor:(id)extractor;
- (id)_queue_extractedKeyDescriptors;
- (void)_queue_extractKnownKeyDescriptorsIfNeededWithCompletion:(id)completion;
- (void)addArgonManagerObserver:(id)observer;
- (void)extractKnownKeyDescriptorsIfNeededWithCompletion:(id)completion;
- (void)refreshWithReason:(int64_t)reason;
- (void)removeArgonManagerObserver:(id)observer;
@end

@implementation NTKArgonManager

- (NTKArgonManager)initWithKeyDatabase:(id)database fetchers:(id)fetchers extractor:(id)extractor
{
  databaseCopy = database;
  fetchersCopy = fetchers;
  extractorCopy = extractor;
  v22.receiver = self;
  v22.super_class = NTKArgonManager;
  v12 = [(NTKArgonManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyDatabase, database);
    v14 = [fetchersCopy copy];
    fetchers = v13->_fetchers;
    v13->_fetchers = v14;

    objc_storeStrong(&v13->_extractor, extractor);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = weakObjectsHashTable;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.nanotimekit.facesupport.manager", v18);
    workQueue = v13->_workQueue;
    v13->_workQueue = v19;
  }

  return v13;
}

- (id)_queue_extractedKeyDescriptors
{
  v48 = *MEMORY[0x277D85DE8];
  workQueue = [(NTKArgonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v37 = [MEMORY[0x277CBEB58] set];
  extractor = [(NTKArgonManager *)self extractor];
  extractionPath = [extractor extractionPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  extractor2 = [(NTKArgonManager *)self extractor];
  extractionPath2 = [extractor2 extractionPath];
  v8 = [defaultManager enumeratorAtPath:extractionPath2];

  [v8 skipDescendants];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = @"bundle";
    v14 = *v42;
    v15 = *MEMORY[0x277CCA1E8];
    *&v11 = 138543362;
    v35 = v11;
    v39 = *v42;
    do
    {
      v16 = 0;
      do
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v41 + 1) + 8 * v16);
        fileAttributes = [v9 fileAttributes];
        fileType = [fileAttributes fileType];
        v20 = [fileType isEqualToString:v15];

        if (v20)
        {
          pathExtension = [v17 pathExtension];
          v22 = [pathExtension isEqualToString:v13];

          if (v22)
          {
            v23 = v13;
            v24 = [extractionPath stringByAppendingPathComponent:v17];
            v25 = [v24 stringByAppendingPathComponent:@"Info.plist"];

            v26 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v25];
            v27 = v26;
            if (v26)
            {
              v28 = [v26 objectForKey:@"Argon"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = [v28 objectForKey:@"Key"];
                v30 = [v28 objectForKey:@"FileName"];
                objc_opt_class();
                v38 = v30;
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v31 = [[NTKArgonKeyDescriptor alloc] initWithKey:v29 fileName:v30];
                  if (v31)
                  {
                    [v37 addObject:v31];
                  }

                  else
                  {
                    log = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v35;
                      v46 = v25;
                      _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Invalid Argon bundle info at %{public}@: malformed key descriptor", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  v31 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                  if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v35;
                    v46 = v25;
                    _os_log_error_impl(&dword_22D9C5000, &v31->super, OS_LOG_TYPE_ERROR, "Invalid Argon bundle info at %{public}@: malformed Info.plist", buf, 0xCu);
                  }
                }
              }

              else
              {
                v29 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = v35;
                  v46 = v25;
                  _os_log_error_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_ERROR, "Invalid Argon bundle info at %{public}@: malformed Info.plist", buf, 0xCu);
                }
              }
            }

            else
            {
              v28 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = v35;
                v46 = v25;
                _os_log_error_impl(&dword_22D9C5000, v28, OS_LOG_TYPE_ERROR, "Invalid Argon bundle info at %{public}@: malformed or missing Info.plist", buf, 0xCu);
              }
            }

            v13 = v23;
            v14 = v39;
          }
        }

        ++v16;
      }

      while (v12 != v16);
      v32 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      v12 = v32;
    }

    while (v32);
  }

  v33 = [v37 copy];

  return v33;
}

- (void)refreshWithReason:(int64_t)reason
{
  v76 = *MEMORY[0x277D85DE8];
  queue = [(NTKArgonManager *)self workQueue];
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__20;
  v72[4] = __Block_byref_object_dispose__20;
  v73 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__NTKArgonManager_refreshWithReason___block_invoke;
  aBlock[3] = &unk_278781650;
  aBlock[4] = v72;
  v35 = _Block_copy(aBlock);
  v3 = v35;
  v35[2](v35, @"7fANGylL6PUa3uY81gCLFCCt5U+XnmAjQ3dxfLMkoSw=", @"6d71ba2edb6ed7bcac81260d78a90e2d406774094c76eb31a442f8b4ff5b3631.aea");
  v3[2](v3, @"TL/Q1YYFljbn/n5bqLhisDb9QNanzHRT5EaNf+ZMCiM=", @"56d4a6adb4b04c9917f0c1ae56cf70e6044de7e91d6fd6fc5e9113148f8619d0.aea");
  v3[2](v3, @"dEc80tVMljpKxC/0UaPLLcbNZMatPSFK8pYhVp8a9f8=", @"520971cc499189d3cb8042fb7551a727effccfc6201fcf32bedab306ac668881.aea");
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  fetchers = [(NTKArgonManager *)self fetchers];
  v38 = [v4 initWithCapacity:{objc_msgSend(fetchers, "count")}];

  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = __Block_byref_object_copy__20;
  v69[4] = __Block_byref_object_dispose__20;
  v70 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 0;
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  fetchers2 = [(NTKArgonManager *)self fetchers];
  v8 = [v6 initWithCapacity:{objc_msgSend(fetchers2, "count")}];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  fetchers3 = [(NTKArgonManager *)self fetchers];
  v10 = [fetchers3 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v10)
  {
    v11 = *v64;
    do
    {
      v12 = 0;
      do
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(fetchers3);
        }

        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        [v8 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [fetchers3 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v10);
  }

  v15 = dispatch_group_create();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  fetchers4 = [(NTKArgonManager *)self fetchers];
  v17 = [fetchers4 countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v17)
  {
    v18 = *v60;
    obj = fetchers4;
    do
    {
      v19 = 0;
      do
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v59 + 1) + 8 * v19);
        dispatch_group_enter(v15);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        keyDatabase = [(NTKArgonManager *)self keyDatabase];
        v24 = [keyDatabase latestChangeTokenForServerIdentifier:v22];

        date = [MEMORY[0x277CBEAA8] date];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __37__NTKArgonManager_refreshWithReason___block_invoke_2;
        v49[3] = &unk_2787816A0;
        v50 = queue;
        v56 = v67;
        v26 = v22;
        v51 = v26;
        v27 = date;
        v52 = v27;
        v53 = v8;
        v57 = v72;
        v54 = v38;
        v58 = v69;
        v55 = v15;
        [v20 fetchNewRecordsSinceChangeToken:v24 forReason:reason completion:v49];

        ++v19;
      }

      while (v17 != v19);
      fetchers4 = obj;
      v17 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v17);
  }

  if (NTKInternalBuild(v28, v29))
  {
    v30 = 60000000000;
  }

  else
  {
    v30 = 43200000000000;
  }

  v31 = dispatch_time(0, v30);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NTKArgonManager_refreshWithReason___block_invoke_52;
  block[3] = &unk_278780498;
  v47 = v15;
  v48 = v67;
  v46 = v8;
  v32 = v15;
  v33 = v8;
  dispatch_after(v31, queue, block);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __37__NTKArgonManager_refreshWithReason___block_invoke_53;
  v41[3] = &unk_2787816C8;
  v41[4] = self;
  v42 = v38;
  v43 = v72;
  v44 = v69;
  v34 = v38;
  dispatch_group_notify(v32, queue, v41);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);

  _Block_object_dispose(v72, 8);
}

void __37__NTKArgonManager_refreshWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[NTKArgonKeyDescriptor alloc] initWithKey:v6 fileName:v5];

  v7 = v8;
  if (v8)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    v7 = v8;
  }
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NTKArgonManager_refreshWithReason___block_invoke_3;
  block[3] = &unk_278781678;
  v10 = *(a1 + 32);
  v11 = *(a1 + 80);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = v7;
  v17 = *(a1 + 88);
  v24 = *(a1 + 64);
  v25 = v8;
  v26 = v9;
  *&v12 = v17;
  *(&v12 + 1) = *(a1 + 96);
  v18 = v12;
  *&v13 = *(a1 + 72);
  *(&v13 + 1) = v11;
  v27 = v13;
  v28 = v18;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__NTKArgonManager_refreshWithReason___block_invoke_3_cold_1(a1, v2);
    }
  }

  else
  {
    [*(a1 + 48) removeObject:*(a1 + 32)];
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = [v3 allObjects];
      [*(*(*(a1 + 104) + 8) + 40) addObjectsFromArray:v4];
    }

    [*(a1 + 64) setObject:*(a1 + 72) forKeyedSubscript:*(a1 + 32)];
    v5 = *(a1 + 80);
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 112) + 8) + 40), v5);
    }

    v6 = *(a1 + 88);

    dispatch_group_leave(v6);
  }
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_52(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v7;
          _os_log_error_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_ERROR, "Fetcher %{public}@: Timed out. Abandoning results.", buf, 0xCu);
        }

        dispatch_group_leave(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_53(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v29 = [*(a1 + 32) _queue_extractedKeyDescriptors];
  v2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v47 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Downloaded key descriptors %@", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v4 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v6 = v4;
    v31 = *v41;
    *&v5 = 138412290;
    v28 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = [v8 fileName];
        v10 = +[NTKFaceSupportUnlockAttemptEventRecorder sharedRecorder];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __37__NTKArgonManager_refreshWithReason___block_invoke_55;
        v38[3] = &unk_27877E820;
        v11 = v9;
        v39 = v11;
        [v10 beginRecordingForIdentifier:v11 method:2 completion:v38];
        v12 = [*(a1 + 32) keyDatabase];
        v37 = 0;
        v13 = [v12 addKeyDescriptor:v8 error:&v37];
        v14 = v37;

        if (v13)
        {
          if (![v29 containsObject:v8])
          {
            goto LABEL_15;
          }

          v15 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v28;
            v47 = v8;
            _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Bundle already extracted for key descriptor %@", buf, 0xCu);
          }
        }

        else
        {
          v15 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            v47 = v14;
            _os_log_error_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_ERROR, "Couldn't add key descriptor: %@", buf, 0xCu);
          }
        }

LABEL_15:
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v6);
  }

  v16 = *(a1 + 32);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __37__NTKArgonManager_refreshWithReason___block_invoke_57;
  v36[3] = &unk_27877DB10;
  v36[4] = v16;
  [v16 _queue_extractKnownKeyDescriptorsIfNeededWithCompletion:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = *(a1 + 40);
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        v23 = [*(a1 + 40) objectForKeyedSubscript:v22];
        v24 = [*(a1 + 32) keyDatabase];
        [v24 recordChangeToken:v23 forServerIdentifier:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v19);
  }

  v26 = *(a1 + 56);
  v25 = a1 + 56;
  if (*(*(v26 + 8) + 40))
  {
    v27 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __37__NTKArgonManager_refreshWithReason___block_invoke_53_cold_1(v25, v27);
    }
  }
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NTKArgonManager_refreshWithReason___block_invoke_55_cold_1(a1, v3, v4);
    }
  }
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_57(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) argonManagerDidRefresh:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (void)extractKnownKeyDescriptorsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(NTKArgonManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__NTKArgonManager_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke;
  v8[3] = &unk_27877FF60;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(workQueue, v7);
}

- (void)addArgonManagerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    observers = [(NTKArgonManager *)selfCopy observers];
    [observers addObject:v7];

    objc_sync_exit(selfCopy);
    observerCopy = v7;
  }
}

- (void)removeArgonManagerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    observers = [(NTKArgonManager *)selfCopy observers];
    [observers removeObject:v7];

    objc_sync_exit(selfCopy);
    observerCopy = v7;
  }
}

- (void)_queue_extractKnownKeyDescriptorsIfNeededWithCompletion:(id)completion
{
  v47[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(NTKArgonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2810000000;
  v44[3] = &unk_22DD390E3;
  v45 = 0;
  _queue_extractedKeyDescriptors = [(NTKArgonManager *)self _queue_extractedKeyDescriptors];
  v7 = [_queue_extractedKeyDescriptors mutableCopy];

  v8 = MEMORY[0x277CBEBC0];
  extractor = [(NTKArgonManager *)self extractor];
  sourcePath = [extractor sourcePath];
  v11 = [v8 fileURLWithPath:sourcePath];

  v12 = [NTKArgonEncryptedBundleEnumerator alloc];
  v47[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  v14 = [(NTKArgonEncryptedBundleEnumerator *)v12 initWithSourceDirectoryURLs:v13];

  v15 = [MEMORY[0x277CBEB58] set];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v14;
  v17 = [(NTKArgonEncryptedBundleEnumerator *)v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v17)
  {
    v18 = *v41;
    do
    {
      v19 = 0;
      do
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v16);
        }

        lastPathComponent = [*(*(&v40 + 1) + 8 * v19) lastPathComponent];
        [v15 addObject:lastPathComponent];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NTKArgonEncryptedBundleEnumerator *)v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v17);
  }

  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  keyDatabase = [(NTKArgonManager *)self keyDatabase];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke;
  v34[3] = &unk_278781718;
  v39 = v44;
  v23 = v7;
  v35 = v23;
  v24 = v15;
  v36 = v24;
  v25 = v21;
  v37 = v25;
  selfCopy = self;
  [keyDatabase enumerateKeyDescriptors:v34];

  workQueue2 = [(NTKArgonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_64;
  block[3] = &unk_278781740;
  v30 = v23;
  selfCopy2 = self;
  v32 = completionCopy;
  v33 = v44;
  v27 = completionCopy;
  v28 = v23;
  dispatch_group_notify(v25, workQueue2, block);

  dispatch_group_leave(v25);
  _Block_object_dispose(v44, 8);
}

void __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
  v4 = [*(a1 + 32) containsObject:v3];
  os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [v3 fileName];
    LOBYTE(v5) = [v5 containsObject:v6];

    if (v5)
    {
      dispatch_group_enter(*(a1 + 48));
      v7 = [*(a1 + 56) extractor];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_61;
      v11[3] = &unk_2787816F0;
      v15 = *(a1 + 64);
      v12 = *(a1 + 32);
      v13 = v3;
      v10 = *(a1 + 48);
      v8 = v10.i64[0];
      v14 = vextq_s8(v10, v10, 8uLL);
      [v7 extractUsingKeyDescriptor:v13 completion:v11];

      v9 = v12;
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_cold_1(v3, v9);
      }
    }
  }
}

void __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Extracted key to %@", buf, 0xCu);
    }

    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) addObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
    v9 = *(a1 + 48);
    objc_sync_enter(v9);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [*(a1 + 48) observers];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * i) argonManager:*(a1 + 48) didExtractKeyDescriptor:*(a1 + 40) toPath:v5];
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_61_cold_1(v6, v8);
    }

    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) addObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
    v9 = *(a1 + 48);
    objc_sync_enter(v9);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [*(a1 + 48) observers];
    v14 = [v10 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v14)
    {
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v21 + 1) + 8 * j) argonManager:*(a1 + 48) failedToExtractKeyDescriptor:*(a1 + 40) error:v6];
        }

        v14 = [v10 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v14);
    }
  }

  objc_sync_exit(v9);
  dispatch_group_leave(*(a1 + 56));
}

void __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_64(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v54 + 1) + 8 * i) fileName];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v41 = a1;
  v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [*(a1 + 40) extractor];
  v10 = [v9 sourcePath];

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = v10;
  v12 = [v11 contentsOfDirectoryAtPath:v10 error:0];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v14)
  {
    v15 = v14;
    v43 = 0;
    v16 = *v51;
    v17 = v42;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v50 + 1) + 8 * j);
        v20 = [v19 pathExtension];
        v21 = [v20 isEqualToString:@"aea"];

        if (v21)
        {
          if ([v2 containsObject:v19])
          {
            ++v43;
          }

          else
          {
            [v42 addObject:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v15);
  }

  else
  {
    v43 = 0;
    v17 = v42;
  }

  v39 = v13;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = [v17 allObjects];
  v23 = [v22 sortedArrayUsingSelector:sel_compare_];

  v24 = [v23 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v46 + 1) + 8 * k);
        v29 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v28;
          _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_DEFAULT, "No key available to extract %@", buf, 0xCu);
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v46 objects:v62 count:{16, v39}];
    }

    while (v25);
  }

  v30 = [v42 count] + v43;
  v31 = [v42 count];
  v32 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v31)
  {
    v34 = v41;
    if (!v33)
    {
      goto LABEL_36;
    }

    v35 = [v42 count];
    *buf = 134218240;
    v59 = v35;
    v60 = 2048;
    v61 = v30;
    v36 = "Still waiting for keys for %lu of %lu archives";
    v37 = v32;
    v38 = 22;
  }

  else
  {
    v34 = v41;
    if (!v33)
    {
      goto LABEL_36;
    }

    *buf = 134217984;
    v59 = v30;
    v36 = "All keys obtained for %lu available archives";
    v37 = v32;
    v38 = 12;
  }

  _os_log_impl(&dword_22D9C5000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
LABEL_36:

  if (*(v34 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_70;
    block[3] = &unk_27877E960;
    v45 = *(v34 + 48);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:*(a1 + 40)];
  v7 = 138543618;
  v8 = v4;
  v9 = 2050;
  v10 = v6;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Fetcher %{public}@: Timed out. Fetch completed after %{public}f seconds.", &v7, 0x16u);
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_53_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Asset and key fetch failed: %{public}@.", &v3, 0xCu);
}

void __37__NTKArgonManager_refreshWithReason___block_invoke_55_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Couldn't ingest key from JSON %@ - %@", &v4, 0x16u);
}

void __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 fileName];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "Skipping extraction of %{public}@: archive doesn't exist; possibly from previous release?", &v4, 0xCu);
}

void __75__NTKArgonManager__queue_extractKnownKeyDescriptorsIfNeededWithCompletion___block_invoke_61_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = 0;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Could not extract to %@ - %@", &v2, 0x16u);
}

@end