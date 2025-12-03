@interface NRRegistryHistoryStore
+ (id)sharedInstance;
- (NRDeviceCollectionHistory)history;
- (NRRegistryHistoryStore)initWithParameters:(id)parameters;
- (id)addDiffIndexObserverWithWriteBlock:(id)block;
- (id)collection;
- (void)_loadAndNotifySecureProperties;
- (void)_notifyDiffIndexObserversWithHistoryEntry:(id)entry deviceCollection:(id)collection secureProperties:(id)properties;
- (void)_notifyObserversSecurePropertiesAreAvailableWithCollection:(id)collection secureProperties:(id)properties;
- (void)dealloc;
- (void)deasyncGrabHistoryWithReadBlock:(id)block;
- (void)deasyncGrabHistoryWithWriteBlock:(id)block;
- (void)grabHistoryWithReadBlock:(id)block;
- (void)grabHistoryWithWriteBlock:(id)block;
- (void)invalidate;
- (void)removeDiffIndexObserver:(id)observer;
@end

@implementation NRRegistryHistoryStore

- (void)deasyncGrabHistoryWithReadBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__NRRegistryHistoryStore_sync_history__deasyncGrabHistoryWithReadBlock___block_invoke;
  v6[3] = &unk_1E86DB418;
  v7 = blockCopy;
  v5 = blockCopy;
  [(NRRegistryHistoryStore *)self grabHistoryWithReadBlock:v6];
}

- (void)deasyncGrabHistoryWithWriteBlock:(id)block
{
  blockCopy = block;
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__NRRegistryHistoryStore_sync_history__deasyncGrabHistoryWithWriteBlock___block_invoke;
  v8[3] = &unk_1E86DB440;
  v9 = v5;
  v10 = blockCopy;
  v6 = v5;
  v7 = blockCopy;
  [(NRRegistryHistoryStore *)self grabHistoryWithWriteBlock:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

id __73__NRRegistryHistoryStore_sync_history__deasyncGrabHistoryWithWriteBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NRRegistryHistoryStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ECE77A28 != -1)
  {
    dispatch_once(&qword_1ECE77A28, block);
  }

  v2 = _MergedGlobals_3;

  return v2;
}

uint64_t __40__NRRegistryHistoryStore_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_3;
  _MergedGlobals_3 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (NRRegistryHistoryStore)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  dictionary = [parametersCopy mutableCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"NRRegistryShouldCreateCollection"];
  v21.receiver = self;
  v21.super_class = NRRegistryHistoryStore;
  v6 = [(NRRegistry *)&v21 initWithParameters:dictionary];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = objc_opt_class();
    v8 = dispatch_get_global_queue(21, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__NRRegistryHistoryStore_initWithParameters___block_invoke;
    v17[3] = &unk_1E86DC450;
    v9 = v6;
    v18 = v9;
    objc_copyWeak(&v19, &location);
    v9->_keyBagStatusChangedNotificationToken = [v7 registerNotifyTokenWithName:@"com.apple.mobile.keybagd.lock_status" withQueue:v8 withBlock:v17];

    v10 = +[NRDataFileHistoryHelpers unarchiveDeviceHistory];
    if (v10)
    {
      [NRDataFileHistoryHelpers createMissingDates:v10];
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __37__NRRegistryHistoryStore_setHistory___block_invoke;
    v22[3] = &unk_1E86DAF10;
    v12 = v11;
    v23 = v12;
    v24 = v9;
    [(NRRegistry *)v9 performUnderCollectionLock:v22];

    v13 = [dictionary objectForKeyedSubscript:@"NRRegistryHistoryStoreShouldInitializeWithFirstUnlockStatus"];
    v14 = v13;
    if (v13)
    {
      bOOLValue = [v13 BOOLValue];
    }

    else
    {
      bOOLValue = MKBDeviceUnlockedSinceBoot();
    }

    if (bOOLValue)
    {
      [(NRRegistryHistoryStore *)v9 _loadAndNotifySecureProperties];
    }

    [(NRRegistry *)v9 _startQueue];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __45__NRRegistryHistoryStore_initWithParameters___block_invoke(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    v2 = *(a1 + 32);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __45__NRRegistryHistoryStore_initWithParameters___block_invoke_2;
    v3[3] = &unk_1E86DC428;
    objc_copyWeak(&v4, (a1 + 40));
    [v2 grabHistoryWithWriteBlock:v3];
    objc_destroyWeak(&v4);
  }
}

uint64_t __45__NRRegistryHistoryStore_initWithParameters___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NRRegistryHistoryStore *)WeakRetained _loadAndNotifySecureProperties];

  return 0;
}

- (void)_loadAndNotifySecureProperties
{
  if (self)
  {
    secureProperties = [self secureProperties];

    if (!secureProperties)
    {
      v3 = +[NRDataFileHistoryHelpers unarchiveSecureProperties];
      if (!v3)
      {
        v3 = objc_opt_new();
      }

      v4 = v3;
      [self setSecureProperties:v3];
    }
  }
}

- (void)dealloc
{
  keyBagStatusChangedNotificationToken = self->_keyBagStatusChangedNotificationToken;
  if (keyBagStatusChangedNotificationToken != -1)
  {
    notify_cancel(keyBagStatusChangedNotificationToken);
    self->_keyBagStatusChangedNotificationToken = -1;
  }

  v4.receiver = self;
  v4.super_class = NRRegistryHistoryStore;
  [(NRRegistryHistoryStore *)&v4 dealloc];
}

- (void)_notifyObserversSecurePropertiesAreAvailableWithCollection:(id)collection secureProperties:(id)properties
{
  v8.receiver = self;
  v8.super_class = NRRegistryHistoryStore;
  [(NRRegistry *)&v8 _notifyObserversSecurePropertiesAreAvailableWithCollection:collection secureProperties:properties];
  secureProperties = [(NRRegistry *)self secureProperties];

  if (secureProperties)
  {
    managementQueue = [(NRRegistry *)self managementQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__NRRegistryHistoryStore__notifyObserversSecurePropertiesAreAvailableWithCollection_secureProperties___block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(managementQueue, block);
  }
}

void __102__NRRegistryHistoryStore__notifyObserversSecurePropertiesAreAvailableWithCollection_secureProperties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) secureProperties];

  if (v2)
  {
    v3 = *(*(a1 + 32) + 88);
    if (v3 != -1)
    {
      notify_cancel(v3);
      *(*(a1 + 32) + 88) = -1;
    }
  }
}

- (id)collection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__NRRegistryHistoryStore_collection__block_invoke;
  v4[3] = &unk_1E86DB8F0;
  v4[4] = self;
  v4[5] = &v5;
  [(NRRegistry *)self performUnderCollectionLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __36__NRRegistryHistoryStore_collection__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) deviceCollection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NRDeviceCollectionHistory)history
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__NRRegistryHistoryStore_history__block_invoke;
  v4[3] = &unk_1E86DB8F0;
  v4[4] = self;
  v4[5] = &v5;
  [(NRRegistry *)self performUnderCollectionLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__NRRegistryHistoryStore_setHistory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__NRRegistryHistoryStore_setHistory___block_invoke_2;
  v4[3] = &unk_1E86DC478;
  v4[4] = *(a1 + 40);
  v3 = [v2 addObserverQueue:0 withBlock:v4];
  objc_storeStrong((*(a1 + 40) + 96), *(a1 + 32));
}

void __37__NRRegistryHistoryStore_setHistory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a1;
  v81 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 collection];
  v6 = [*(v2 + 32) secureProperties];
  v7 = *(v2 + 32);
  v58 = v5;
  v8 = v6;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
    v11 = [v9 fileExistsAtPath:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
      v62 = 0;
      v14 = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v62];
      v15 = v62;

      if ((v14 & 1) == 0)
      {
        v16 = nr_daemon_log();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          v18 = nr_daemon_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v53 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
            v54 = [v15 nr_safeDescription];
            *buf = 138543618;
            v78 = v53;
            v79 = 2114;
            v80 = v54;
            _os_log_error_impl(&dword_1E0ADF000, v18, OS_LOG_TYPE_ERROR, "Can't create path %{public}@! error=%{public}@", buf, 0x16u);
          }
        }
      }
    }

    v19 = [v7 history];
    v20 = [v19 dirty];

    v21 = [v7 secureProperties];

    if (v21)
    {
      v22 = [v7 secureProperties];
      v23 = [NRDataFileHistoryHelpers archiveSecureProperties:v22];
    }

    else
    {
      v23 = 1;
    }

    v24 = [v7 history];
    v25 = [NRDataFileHistoryHelpers archiveDeviceHistory:v24]&& v23;

    if ((v25 & v20) == 1)
    {
      v55 = v8;
      v56 = v4;
      v57 = v2;
      v26 = MEMORY[0x1E695DFA8];
      v27 = [v7 secureProperties];
      v28 = [v27 allSecurePropertyIDs];
      v29 = [v26 setWithArray:v28];

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = [v7 collection];
      v61 = [obj countByEnumeratingWithState:&v71 objects:buf count:16];
      if (v61)
      {
        v60 = *v72;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v72 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v71 + 1) + 8 * i);
            v32 = v7;
            v33 = [v7 collection];
            v34 = [v33 objectForKeyedSubscript:v31];

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v35 = v34;
            v36 = [v35 countByEnumeratingWithState:&v67 objects:v76 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v68;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v68 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = [v35 objectForKeyedSubscript:*(*(&v67 + 1) + 8 * j)];
                  v41 = [v40 value];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v29 removeObject:v41];
                  }
                }

                v37 = [v35 countByEnumeratingWithState:&v67 objects:v76 count:16];
              }

              while (v37);
            }

            v7 = v32;
          }

          v61 = [obj countByEnumeratingWithState:&v71 objects:buf count:16];
        }

        while (v61);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v42 = v29;
      v43 = [v42 countByEnumeratingWithState:&v63 objects:v75 count:16];
      v8 = v55;
      v4 = v56;
      if (v43)
      {
        v44 = v43;
        v45 = *v64;
        do
        {
          for (k = 0; k != v44; ++k)
          {
            if (*v64 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v63 + 1) + 8 * k);
            v48 = [v7 secureProperties];
            [v48 removeSecureProperty:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v44);
      }

      v49 = [v7 secureProperties];
      [NRDataFileHistoryHelpers archiveSecureProperties:v49];

      v2 = v57;
    }
  }

  [*(v2 + 32) _notifyDiffIndexObserversWithHistoryEntry:v4 deviceCollection:v58 secureProperties:v8];
  v50 = *(v2 + 32);
  v51 = [v4 diff];

  [v50 _notifyDiffObserversWithDiff:v51 deviceCollection:v58 secureProperties:v8];
  v52 = *MEMORY[0x1E69E9840];
}

- (void)grabHistoryWithReadBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__NRRegistryHistoryStore_grabHistoryWithReadBlock___block_invoke;
  v6[3] = &unk_1E86DACC0;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(NRRegistry *)self enqueue:v6];
}

void __51__NRRegistryHistoryStore_grabHistoryWithReadBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) history];
  v3 = [*(a1 + 32) secureProperties];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)grabHistoryWithWriteBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__4;
  v9[4] = __Block_byref_object_dispose__4;
  v10 = os_transaction_create();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__NRRegistryHistoryStore_grabHistoryWithWriteBlock___block_invoke;
  v6[3] = &unk_1E86DB878;
  v5 = blockCopy;
  v6[4] = self;
  v7 = v5;
  v8 = v9;
  [(NRRegistry *)self enqueueAsync:v6];

  _Block_object_dispose(v9, 8);
}

void __52__NRRegistryHistoryStore_grabHistoryWithWriteBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) history];
  v4 = [*(a1 + 32) secureProperties];
  v9 = (*(v2 + 16))(v2, v3, v4);

  if (v9)
  {
    v5 = [*(a1 + 32) history];
    v6 = [v5 applyDiff:v9];
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (id)addDiffIndexObserverWithWriteBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NRRegistryHistoryStore_addDiffIndexObserverWithWriteBlock___block_invoke;
  v8[3] = &unk_1E86DB8C8;
  v10 = &v11;
  v8[4] = self;
  v5 = blockCopy;
  v9 = v5;
  [(NRRegistry *)self performUnderCollectionLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __61__NRRegistryHistoryStore_addDiffIndexObserverWithWriteBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() _nextToken];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(a1[4] + 80))
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = a1[4];
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;
  }

  v9 = MEMORY[0x1E12E7560](a1[5]);
  [*(a1[4] + 80) setObject:v9 forKeyedSubscript:*(*(a1[6] + 8) + 40)];
}

- (void)removeDiffIndexObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__NRRegistryHistoryStore_removeDiffIndexObserver___block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(NRRegistry *)self performUnderCollectionLock:v6];
}

- (void)_notifyDiffIndexObserversWithHistoryEntry:(id)entry deviceCollection:(id)collection secureProperties:(id)properties
{
  v31 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  collectionCopy = collection;
  propertiesCopy = properties;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__NRRegistryHistoryStore__notifyDiffIndexObserversWithHistoryEntry_deviceCollection_secureProperties___block_invoke;
  v23[3] = &unk_1E86DB8F0;
  v23[4] = self;
  v23[5] = &v24;
  [(NRRegistry *)self performUnderCollectionLock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v25[5];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v12)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v25[5] objectForKeyedSubscript:{v15, v19}];
        diff = [entryCopy diff];
        (v16)[2](v16, diff, collectionCopy, propertiesCopy, v15, [entryCopy index] + 1);
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __102__NRRegistryHistoryStore__notifyDiffIndexObserversWithHistoryEntry_deviceCollection_secureProperties___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)invalidate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__NRRegistryHistoryStore_invalidate__block_invoke;
  v4[3] = &unk_1E86DAE98;
  v4[4] = self;
  [(NRRegistry *)self enqueueBypassAsync:v4];
  v3.receiver = self;
  v3.super_class = NRRegistryHistoryStore;
  [(NRRegistry *)&v3 invalidate];
}

void __36__NRRegistryHistoryStore_invalidate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) history];
  [v1 invalidate];
}

@end