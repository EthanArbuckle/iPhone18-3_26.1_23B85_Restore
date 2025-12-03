@interface EDVIPManager
+ (OS_os_log)log;
+ (id)_contactDescriptors;
- (BOOL)_isVIPForContact:(id)contact orAddresses:(id)addresses;
- (BOOL)hasVIPs;
- (BOOL)isVIPAddress:(id)address;
- (CNContactStore)contactStore;
- (EAEmailAddressSet)allVIPEmailAddresses;
- (EDVIPManager)initWithDirectoryURL:(id)l accountsProvider:(id)provider delegate:(id)delegate;
- (EDVIPManager)initWithDirectoryURL:(id)l keyValueStore:(id)store accountsProvider:(id)provider contactStore:(id)contactStore delegate:(id)delegate;
- (EDVIPManagerDelegate)delegate;
- (NSSet)allVIPs;
- (id)_allVIPEmailAddresses;
- (id)_cloudKeyForIdentifier:(id)identifier;
- (id)_contactForName:(id)name emailAddresses:(id)addresses;
- (id)_contactFromContacts:(id)contacts matchingMostAddresses:(id)addresses;
- (id)_partiallyRedactedVIPDictionary:(id)dictionary;
- (id)_serializedData;
- (id)_validatedCloudVIPFromStore:(id)store withCloudKey:(id)key;
- (id)_vipsDictionary;
- (id)allVIPWaitForResult;
- (id)vipWithIdentifier:(id)identifier;
- (void)_accountsChanged:(id)changed;
- (void)_initializeKVSStore;
- (void)_keyValueStoreChanged:(id)changed;
- (void)_loadVIPs;
- (void)_mergeVIPs;
- (void)_removeVIPsWithIdentifiers:(id)identifiers;
- (void)_saveVIPs;
- (void)_saveVIPsLocally;
- (void)_serializedData;
- (void)_synchronizeKVStore;
- (void)_updateCloudWithLocal;
- (void)_updateLocalWithCloud:(id)cloud refresh:(BOOL)refresh;
- (void)dealloc;
- (void)gatherStatisticsWithVIPCount:(unint64_t)count;
- (void)getAllVIPsWithCompletion:(id)completion;
- (void)removeVIPsWithEmailAddresses:(id)addresses;
- (void)removeVIPsWithIdentifiers:(id)identifiers;
- (void)saveVIPs:(id)ps;
@end

@implementation EDVIPManager

- (EAEmailAddressSet)allVIPEmailAddresses
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__53;
  v13 = __Block_byref_object_dispose__53;
  v14 = 0;
  operationQueue = [(EDVIPManager *)self operationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__EDVIPManager_allVIPEmailAddresses__block_invoke;
  v8[3] = &unk_1E8251C30;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_barrier_sync(operationQueue, v8);

  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __36__EDVIPManager_allVIPEmailAddresses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allVIPEmailAddresses];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_allVIPEmailAddresses
{
  cachedEmailAddresses = self->_cachedEmailAddresses;
  if (!cachedEmailAddresses)
  {
    v4 = objc_alloc_init(MEMORY[0x1E699AFD8]);
    vipsByIdentifier = self->_vipsByIdentifier;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__EDVIPManager__allVIPEmailAddresses__block_invoke;
    v11[3] = &unk_1E8259058;
    v6 = v4;
    v12 = v6;
    [(NSMutableDictionary *)vipsByIdentifier enumerateKeysAndObjectsUsingBlock:v11];
    v7 = [v6 copy];
    v8 = self->_cachedEmailAddresses;
    self->_cachedEmailAddresses = v7;

    cachedEmailAddresses = self->_cachedEmailAddresses;
  }

  v9 = [(EAEmailAddressSet *)cachedEmailAddresses copy];

  return v9;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__EDVIPManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_110 != -1)
  {
    dispatch_once(&log_onceToken_110, block);
  }

  v2 = log_log_110;

  return v2;
}

void __19__EDVIPManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_110;
  log_log_110 = v1;
}

- (EDVIPManager)initWithDirectoryURL:(id)l accountsProvider:(id)provider delegate:(id)delegate
{
  lCopy = l;
  providerCopy = provider;
  delegateCopy = delegate;
  v11 = [MEMORY[0x1E696AFB8] additionalStoreWithIdentifier:@"com.apple.mail.vipsenders"];
  v12 = [(EDVIPManager *)self initWithDirectoryURL:lCopy keyValueStore:v11 accountsProvider:providerCopy contactStore:0 delegate:delegateCopy];

  return v12;
}

- (EDVIPManager)initWithDirectoryURL:(id)l keyValueStore:(id)store accountsProvider:(id)provider contactStore:(id)contactStore delegate:(id)delegate
{
  lCopy = l;
  storeCopy = store;
  providerCopy = provider;
  contactStoreCopy = contactStore;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = EDVIPManager;
  v17 = [(EDVIPManager *)&v27 init];
  if (v17)
  {
    v18 = [lCopy URLByAppendingPathComponent:@"VIPs.plist" isDirectory:0];
    plistURL = v17->_plistURL;
    v17->_plistURL = v18;

    objc_storeStrong(&v17->_keyValueStore, store);
    objc_storeStrong(&v17->_contactStore, contactStore);
    objc_storeStrong(&v17->_accountsProvider, provider);
    v20 = dispatch_queue_create("com.apple.email.edvipmanager", MEMORY[0x1E69E96A8]);
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.email.edvipmanager.notifications", v22);
    notificationQueue = v17->_notificationQueue;
    v17->_notificationQueue = v23;

    v17->_initializeLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    if (providerCopy && ![providerCopy hasActiveAccounts])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v17 selector:sel__accountsChanged_ name:*MEMORY[0x1E699B070] object:0];
    }

    else
    {
      [(EDVIPManager *)v17 _initializeKVSStore];
    }
  }

  return v17;
}

- (void)_initializeKVSStore
{
  os_unfair_lock_lock(&self->_initializeLock);
  if (!self->_initialized)
  {
    self->_initialized = 1;
    operationQueue = self->_operationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__EDVIPManager__initializeKVSStore__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_barrier_async(operationQueue, block);
  }

  os_unfair_lock_unlock(&self->_initializeLock);
}

void __35__EDVIPManager__initializeKVSStore__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadVIPs];
  if (*(*(a1 + 32) + 48))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 addObserver:*(a1 + 32) selector:sel__keyValueStoreChanged_ name:*MEMORY[0x1E696A9E8] object:*(*(a1 + 32) + 48)];
    [*(a1 + 32) _synchronizeKVStore];
    v3 = [*(*(a1 + 32) + 48) dictionaryRepresentation];
    v4 = +[EDVIPManager log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = @"com.apple.mail.vipsenders";
      v12 = 2048;
      v13 = [v3 count];
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "registering for VIP kvstore at: %@\nnumber of VIPs in current store: %lu", &v10, 0x16u);
    }

    v5 = +[EDVIPManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) _partiallyRedactedVIPDictionary:v3];
      __35__EDVIPManager__initializeKVSStore__block_invoke_cold_1(v6, &v10, v5);
    }

    v7 = *(a1 + 32);
    v8 = [v3 allKeys];
    [v7 _updateLocalWithCloud:v8 refresh:1];

    [*(a1 + 32) gatherStatisticsWithVIPCount:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_partiallyRedactedVIPDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EDVIPManager__partiallyRedactedVIPDictionary___block_invoke;
  v7[3] = &unk_1E8255B38;
  v5 = v4;
  v8 = v5;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __48__EDVIPManager__partiallyRedactedVIPDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__EDVIPManager__partiallyRedactedVIPDictionary___block_invoke_2;
    v9[3] = &unk_1E8251F88;
    v8 = v7;
    v10 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
  }
}

void __48__EDVIPManager__partiallyRedactedVIPDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:@"a"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E699B858] partiallyRedactedStringFromArray:v5];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
LABEL_7:

      goto LABEL_10;
    }
  }

  if ([v7 isEqualToString:@"n"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v5];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
      goto LABEL_7;
    }
  }

  if ([v7 isEqualToString:@"v"])
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }

LABEL_10:
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = EDVIPManager;
  [(EDVIPManager *)&v4 dealloc];
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (BOOL)hasVIPs
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  operationQueue = [(EDVIPManager *)self operationQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__EDVIPManager_hasVIPs__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(operationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __23__EDVIPManager_hasVIPs__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (id)vipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  operationQueue = [(EDVIPManager *)self operationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EDVIPManager_vipWithIdentifier___block_invoke;
  block[3] = &unk_1E8251C08;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(operationQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __34__EDVIPManager_vipWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSSet)allVIPs
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__53;
  v13 = __Block_byref_object_dispose__53;
  v14 = 0;
  operationQueue = [(EDVIPManager *)self operationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__EDVIPManager_allVIPs__block_invoke;
  v8[3] = &unk_1E8251C30;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(operationQueue, v8);

  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __23__EDVIPManager_allVIPs__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = [*(*(a1 + 32) + 8) allValues];
  v3 = [v2 initWithArray:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getAllVIPsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EDVIPManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDVIPManager getAllVIPsWithCompletion:]", "EDVIPManager.m", 172, "0");
}

void __37__EDVIPManager__allVIPEmailAddresses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 emailAddresses];
  [v3 unionSet:?];
}

- (BOOL)isVIPAddress:(id)address
{
  addressCopy = address;
  allVIPEmailAddresses = [(EDVIPManager *)self allVIPEmailAddresses];
  v6 = [allVIPEmailAddresses containsObject:addressCopy];

  return v6;
}

- (id)allVIPWaitForResult
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__53;
  v11 = __Block_byref_object_dispose__53;
  v12 = 0;
  operationQueue = [(EDVIPManager *)self operationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__EDVIPManager_allVIPWaitForResult__block_invoke;
  v6[3] = &unk_1E8251C30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(operationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__EDVIPManager_allVIPWaitForResult__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = [*(*(a1 + 32) + 8) allValues];
  v3 = [v2 initWithArray:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)saveVIPs:(id)ps
{
  v17 = *MEMORY[0x1E69E9840];
  psCopy = ps;
  keyValueStore = [(EDVIPManager *)self keyValueStore];

  if (!keyValueStore)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDVIPManager.m" lineNumber:212 description:@"Modification of VIPs only supported when syncing is enabled"];
  }

  v7 = +[EDVIPManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [psCopy count];
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "save VIPs with count %lu", buf, 0xCu);
  }

  operationQueue = [(EDVIPManager *)self operationQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __25__EDVIPManager_saveVIPs___block_invoke;
  v12[3] = &unk_1E8250128;
  v13 = psCopy;
  selfCopy = self;
  v9 = psCopy;
  dispatch_barrier_async(operationQueue, v12);

  v10 = *MEMORY[0x1E69E9840];
}

void __25__EDVIPManager_saveVIPs___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = a1;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v2)
  {
    v42 = *v53;
    do
    {
      v43 = v2;
      for (i = 0; i != v43; ++i)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v52 + 1) + 8 * i);
        v45 = [v4 name];
        v5 = [v4 emailAddresses];
        v6 = [v4 identifier];
        v7 = [*(*(v44 + 40) + 8) objectForKeyedSubscript:v6];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 name];
          v10 = [v9 isEqualToString:v45];

          if (v10)
          {
            v11 = 0;
          }

          else
          {
            v11 = v45;
          }

          v20 = [v8 emailAddresses];
          v21 = [v5 isSubsetOfSet:v20];

          if (v21)
          {
            v12 = 0;
          }

          else
          {
            v22 = [v8 emailAddresses];
            v12 = [v22 mutableCopy];

            [v12 unionSet:v5];
          }

          if (!(v11 | v12))
          {
            goto LABEL_35;
          }

          if (v11)
          {
            v23 = v11;
          }

          else
          {
            v23 = [v8 name];
          }

          v13 = v23;
          if (v12)
          {
            v24 = v12;
          }

          else
          {
            v24 = [v8 emailAddresses];
          }

          v25 = v24;
          v26 = [objc_alloc(MEMORY[0x1E699AF30]) initWithIdentifier:v6 name:v13 emailAddresses:v24];
          [v40 addObject:v26];
        }

        else
        {
          v11 = [*(v44 + 40) _contactForName:v45 emailAddresses:v5];
          if ([*(v44 + 40) _isVIPForContact:v11 orAddresses:v5])
          {
            goto LABEL_36;
          }

          v12 = v45;
          v13 = [v5 mutableCopy];
          if (v11)
          {
            v14 = [MEMORY[0x1E695CD80] stringFromContact:v11 style:0];
            v15 = v14;
            if (v14)
            {
              v16 = v14;

              v12 = v16;
            }

            v17 = [v11 emailAddresses];
            v18 = [v17 valueForKey:@"value"];

            if ([v18 count])
            {
              [v13 addObjectsFromArray:v18];
            }
          }

          if (![v13 count])
          {
            goto LABEL_34;
          }

          if (v12)
          {
            v19 = v12;
          }

          else
          {
            v19 = [v13 anyObject];
          }

          v25 = v19;
          v26 = [objc_alloc(MEMORY[0x1E699AF30]) initWithIdentifier:v6 name:v19 emailAddresses:v13];
          [v40 addObject:v26];
        }

LABEL_34:
LABEL_35:

LABEL_36:
      }

      v2 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v2);
  }

  v27 = +[EDVIPManager log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v40 count];
    *buf = 134217984;
    v58 = v28;
    _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "save new VIPs with count %lu", buf, 0xCu);
  }

  if ([v40 count])
  {
    v29 = objc_alloc_init(MEMORY[0x1E699AFD8]);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = v40;
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v31)
    {
      v32 = *v49;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v48 + 1) + 8 * j);
          v35 = *(*(v44 + 40) + 8);
          v36 = [v34 identifier];
          [v35 setObject:v34 forKeyedSubscript:v36];

          v37 = [v34 emailAddresses];
          [v29 unionSet:v37];
        }

        v31 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v31);
    }

    [*(*(v44 + 40) + 16) unionSet:v29];
    [*(v44 + 40) _saveVIPs];
    v38 = [*(v44 + 40) notificationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__EDVIPManager_saveVIPs___block_invoke_60;
    block[3] = &unk_1E8250128;
    block[4] = *(v44 + 40);
    v47 = v30;
    dispatch_async(v38, block);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __25__EDVIPManager_saveVIPs___block_invoke_60(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = *MEMORY[0x1E699ABF0];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:*MEMORY[0x1E699ABE0] object:v4 userInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isVIPForContact:(id)contact orAddresses:(id)addresses
{
  contactCopy = contact;
  addressesCopy = addresses;
  _allVIPEmailAddresses = [(EDVIPManager *)self _allVIPEmailAddresses];
  if ([addressesCopy intersectsSet:_allVIPEmailAddresses])
  {
    v9 = 1;
  }

  else
  {
    emailAddresses = [contactCopy emailAddresses];
    v11 = [emailAddresses valueForKey:@"value"];

    if ([v11 count])
    {
      v12 = [objc_alloc(MEMORY[0x1E699AFD8]) initWithArray:v11];
      v9 = [v12 intersectsSet:_allVIPEmailAddresses];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)removeVIPsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  keyValueStore = [(EDVIPManager *)self keyValueStore];

  if (!keyValueStore)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDVIPManager.m" lineNumber:305 description:@"Modification of VIPs only supported when syncing is enabled"];
  }

  operationQueue = [(EDVIPManager *)self operationQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__EDVIPManager_removeVIPsWithIdentifiers___block_invoke;
  v10[3] = &unk_1E8250128;
  v10[4] = self;
  v11 = identifiersCopy;
  v8 = identifiersCopy;
  dispatch_barrier_async(operationQueue, v10);
}

- (void)removeVIPsWithEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  keyValueStore = [(EDVIPManager *)self keyValueStore];

  if (!keyValueStore)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDVIPManager.m" lineNumber:312 description:@"Modification of VIPs only supported when syncing is enabled"];
  }

  operationQueue = [(EDVIPManager *)self operationQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__EDVIPManager_removeVIPsWithEmailAddresses___block_invoke;
  v10[3] = &unk_1E8250128;
  v10[4] = self;
  v11 = addressesCopy;
  v8 = addressesCopy;
  dispatch_barrier_async(operationQueue, v10);
}

void __45__EDVIPManager_removeVIPsWithEmailAddresses___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EDVIPManager_removeVIPsWithEmailAddresses___block_invoke_2;
  v4[3] = &unk_1E8259080;
  v5 = *(a1 + 40);
  v3 = [v2 keysOfEntriesPassingTest:v4];
  [*(a1 + 32) _removeVIPsWithIdentifiers:v3];
}

uint64_t __45__EDVIPManager_removeVIPsWithEmailAddresses___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 emailAddresses];
  v5 = [v4 intersectsSet:*(a1 + 32)];

  return v5;
}

- (void)_removeVIPsWithIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = +[EDVIPManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = identifiersCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "remove VIPs with identifiers %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_vipsByIdentifier objectForKeyedSubscript:v11];
        if (v12)
        {
          [v6 addObject:v12];
        }

        [(NSMutableDictionary *)self->_vipsByIdentifier removeObjectForKey:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  cachedEmailAddresses = self->_cachedEmailAddresses;
  self->_cachedEmailAddresses = 0;

  [(EDVIPManager *)self _saveVIPs];
  notificationQueue = [(EDVIPManager *)self notificationQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__EDVIPManager__removeVIPsWithIdentifiers___block_invoke;
  v17[3] = &unk_1E8250128;
  v17[4] = self;
  v18 = v6;
  v15 = v6;
  dispatch_async(notificationQueue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __43__EDVIPManager__removeVIPsWithIdentifiers___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = *MEMORY[0x1E699ABE8];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:*MEMORY[0x1E699ABE0] object:v4 userInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_loadVIPs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  vipsByIdentifier = self->_vipsByIdentifier;
  self->_vipsByIdentifier = v3;

  _vipsDictionary = [(EDVIPManager *)self _vipsDictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__EDVIPManager__loadVIPs__block_invoke;
  v6[3] = &unk_1E8255B38;
  v6[4] = self;
  [_vipsDictionary enumerateKeysAndObjectsUsingBlock:v6];
}

void __25__EDVIPManager__loadVIPs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"Name"];
  v7 = [v5 objectForKeyedSubscript:@"EmailAddresses"];
  v8 = objc_alloc(MEMORY[0x1E699AF30]);
  v9 = [objc_alloc(MEMORY[0x1E699AFD8]) initWithArray:v7];
  v10 = [v8 initWithIdentifier:v11 name:v6 emailAddresses:v9];

  [*(*(a1 + 32) + 8) setObject:v10 forKeyedSubscript:v11];
}

- (id)_vipsDictionary
{
  v3 = objc_alloc(MEMORY[0x1E695DEF0]);
  plistURL = [(EDVIPManager *)self plistURL];
  v5 = [v3 initWithContentsOfURL:plistURL];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_saveVIPs
{
  [(EDVIPManager *)self _saveVIPsLocally];

  [(EDVIPManager *)self _updateCloudWithLocal];
}

- (void)_saveVIPsLocally
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to write serialized entries: %{public}@", buf, 0xCu);
}

- (id)_serializedData
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  vipsByIdentifier = self->_vipsByIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31__EDVIPManager__serializedData__block_invoke;
  v14[3] = &unk_1E8259058;
  v5 = v3;
  v15 = v5;
  [(NSMutableDictionary *)vipsByIdentifier enumerateKeysAndObjectsUsingBlock:v14];
  v13 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v13];
  v7 = v13;
  if (!v6)
  {
    v8 = +[EDVIPManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 count];
      ef_publicDescription = [v7 ef_publicDescription];
      [(EDVIPManager *)ef_publicDescription _serializedData:buf];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

void __31__EDVIPManager__serializedData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 name];
  if (v7)
  {
    v15[0] = @"Name";
    v8 = [v6 name];
    v15[1] = @"EmailAddresses";
    v16[0] = v8;
    v9 = [v6 emailAddresses];
    v10 = [v9 allObjects];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v13 = @"EmailAddresses";
    v8 = [v6 emailAddresses];
    v9 = [v8 allObjects];
    v14 = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateCloudWithLocal
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "VIP store contents after writing to cloud: %{private}@", a5, a6, a7, a8, 3u);
  v8 = *MEMORY[0x1E69E9840];
}

void __37__EDVIPManager__updateCloudWithLocal__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = [*(a1 + 32) _cloudKeyForIdentifier:a2];
  [*(a1 + 40) removeObject:v5];
  v6 = [*(a1 + 32) _validatedCloudVIPFromStore:*(a1 + 48) withCloudKey:v5];
  v7 = [v17 name];
  v8 = [v17 emailAddresses];
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:@"n"];
    v10 = [v7 isEqualToString:v9];
    v11 = objc_alloc(MEMORY[0x1E699AFD8]);
    v12 = [v6 objectForKeyedSubscript:@"a"];
    v13 = [v11 initWithArray:v12];

    if ([v8 isEqualToSet:v13] & v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
    }

    if (!v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    [v14 setObject:v7 forKeyedSubscript:@"n"];
  }

  if (v8)
  {
    v15 = [v8 allObjects];
    v16 = [v15 sortedArrayUsingSelector:sel_compare_];
    [v14 setObject:v16 forKeyedSubscript:@"a"];
  }

  [v14 setObject:&unk_1F45E6E38 forKeyedSubscript:@"v"];
  [*(a1 + 48) setDictionary:v14 forKey:v5];
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_13:
}

- (void)_keyValueStoreChanged:(id)changed
{
  changedCopy = changed;
  operationQueue = [(EDVIPManager *)self operationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__EDVIPManager__keyValueStoreChanged___block_invoke;
  v7[3] = &unk_1E8250128;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_barrier_async(operationQueue, v7);
}

void __38__EDVIPManager__keyValueStoreChanged___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
  v5 = +[EDVIPManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v3;
    v18 = 2048;
    v19 = [v4 count];
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "VIP kvstore changed, reason: %{public}@\n%lu keys changed", &v16, 0x16u);
  }

  v6 = +[EDVIPManager log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __38__EDVIPManager__keyValueStoreChanged___block_invoke_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [v3 integerValue];
  v14 = 0;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 != 3)
      {
        goto LABEL_13;
      }

      v14 = 1;
    }

LABEL_12:
    [*(a1 + 40) _updateLocalWithCloud:v4 refresh:v14];
    goto LABEL_13;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  if (v13 == 1)
  {
    [*(a1 + 40) _mergeVIPs];
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_synchronizeKVStore
{
  keyValueStore = [(EDVIPManager *)self keyValueStore];
  synchronize = [keyValueStore synchronize];

  v4 = +[EDVIPManager log];
  v5 = v4;
  if (synchronize)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully synchronized KV Store", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(EDVIPManager *)v5 _synchronizeKVStore];
  }
}

- (void)_updateLocalWithCloud:(id)cloud refresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v91 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  v6 = +[EDVIPManager log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_vipsByIdentifier count];
    *buf = 134217984;
    v90 = v7;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "local store has %lu VIPs before updating from cloud", buf, 0xCu);
  }

  selfCopy = self;

  v8 = +[EDVIPManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(EDVIPManager *)self _updateLocalWithCloud:v8 refresh:v9, v10, v11, v12, v13, v14];
  }

  v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (refreshCopy)
  {
    v15 = objc_alloc(MEMORY[0x1E695DFA8]);
    allKeys = [(NSMutableDictionary *)self->_vipsByIdentifier allKeys];
    v67 = [v15 initWithArray:allKeys];
  }

  else
  {
    v67 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  keyValueStore = [(EDVIPManager *)self keyValueStore];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = cloudCopy;
  v17 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v17)
  {
    v69 = *v84;
    do
    {
      v70 = v17;
      for (i = 0; i != v70; ++i)
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v83 + 1) + 8 * i);
        if ([v19 hasPrefix:@"VIP_"])
        {
          v20 = [v19 stringByReplacingOccurrencesOfString:@"VIP_" withString:&stru_1F45B4608 options:8 range:{0, objc_msgSend(v19, "length")}];
          v21 = [(EDVIPManager *)self _validatedCloudVIPFromStore:keyValueStore withCloudKey:v19];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 objectForKeyedSubscript:@"n"];
            v24 = objc_alloc(MEMORY[0x1E699AFD8]);
            v25 = [v22 objectForKeyedSubscript:@"a"];
            v26 = [v24 initWithArray:v25];

            v27 = [(NSMutableDictionary *)selfCopy->_vipsByIdentifier objectForKeyedSubscript:v20];
            v28 = v27;
            if (v27)
            {
              name = [v27 name];
              v30 = name;
              if (v23 && ([name isEqualToString:v23] & 1) == 0)
              {
                v36 = v23;

                v31 = 1;
                v30 = v36;
              }

              else
              {
                v31 = 0;
              }

              emailAddresses = [v28 emailAddresses];
              if ([v26 count] && (objc_msgSend(v26, "isSubsetOfSet:", emailAddresses) & 1) == 0)
              {
                v37 = [emailAddresses mutableCopy];
                [v37 unionSet:v26];

                emailAddresses = v37;
              }

              else if (!v31)
              {
                v35 = 0;
                goto LABEL_33;
              }

              v35 = [objc_alloc(MEMORY[0x1E699AF30]) initWithIdentifier:v20 name:v30 emailAddresses:emailAddresses];
            }

            else
            {
              v30 = [v26 mutableCopy];
              emailAddresses = [(EDVIPManager *)selfCopy _contactForName:v23 emailAddresses:v26];
              v32EmailAddresses = [emailAddresses emailAddresses];
              v34 = [v32EmailAddresses valueForKey:@"value"];

              if ([v34 count])
              {
                [v30 addObjectsFromArray:v34];
              }

              if ([v30 count])
              {
                v35 = [objc_alloc(MEMORY[0x1E699AF30]) initWithIdentifier:v20 name:v23 emailAddresses:v30];
              }

              else
              {
                v35 = 0;
              }
            }

LABEL_33:

            if (v35)
            {
              [v65 setObject:v35 forKeyedSubscript:v20];
            }

            [v67 removeObject:v20];
          }

          else
          {
            [v67 addObject:v20];
          }

          self = selfCopy;
          continue;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v17);
  }

  v38 = selfCopy;
  if ([v65 count] || objc_msgSend(v67, "count"))
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __46__EDVIPManager__updateLocalWithCloud_refresh___block_invoke;
    v80[3] = &unk_1E82590D0;
    v80[4] = selfCopy;
    v42 = v39;
    v81 = v42;
    v43 = v41;
    v82 = v43;
    [v65 enumerateKeysAndObjectsUsingBlock:v80];
    [(EAEmailAddressSet *)selfCopy->_cachedEmailAddresses unionSet:v43];
    if ([v67 count])
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v44 = v67;
      v45 = [v44 countByEnumeratingWithState:&v76 objects:v87 count:16];
      if (v45)
      {
        v46 = *v77;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v77 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = *(*(&v76 + 1) + 8 * j);
            v49 = [(NSMutableDictionary *)selfCopy->_vipsByIdentifier objectForKeyedSubscript:v48];
            if (v49)
            {
              [v40 addObject:v49];
            }

            [(NSMutableDictionary *)selfCopy->_vipsByIdentifier removeObjectForKey:v48];
          }

          v45 = [v44 countByEnumeratingWithState:&v76 objects:v87 count:16];
        }

        while (v45);
      }

      cachedEmailAddresses = selfCopy->_cachedEmailAddresses;
      selfCopy->_cachedEmailAddresses = 0;
    }

    [(EDVIPManager *)selfCopy _saveVIPsLocally];
    notificationQueue = [(EDVIPManager *)selfCopy notificationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EDVIPManager__updateLocalWithCloud_refresh___block_invoke_2;
    block[3] = &unk_1E8250720;
    v73 = v42;
    v74 = v40;
    v75 = selfCopy;
    v52 = v40;
    v53 = v42;
    dispatch_async(notificationQueue, block);

    v38 = selfCopy;
  }

  v54 = +[EDVIPManager log];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = [(NSMutableDictionary *)v38->_vipsByIdentifier count];
    *buf = 134217984;
    v90 = v55;
    _os_log_impl(&dword_1C61EF000, v54, OS_LOG_TYPE_DEFAULT, "local store has %lu VIPs after updating from cloud", buf, 0xCu);
  }

  v56 = +[EDVIPManager log];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    [(EDVIPManager *)selfCopy _updateLocalWithCloud:v56 refresh:v57, v58, v59, v60, v61, v62];
  }

  v63 = *MEMORY[0x1E69E9840];
}

void __46__EDVIPManager__updateLocalWithCloud_refresh___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:v8];
  [*(a1 + 40) addObject:v5];
  v6 = *(a1 + 48);
  v7 = [v5 emailAddresses];
  [v6 unionSet:v7];
}

void __46__EDVIPManager__updateLocalWithCloud_refresh___block_invoke_2(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699ABE8];
  v7[0] = *MEMORY[0x1E699ABF0];
  v7[1] = v2;
  v3 = a1[5];
  v8[0] = a1[4];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x1E699ABE0] object:a1[6] userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_mergeVIPs
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v5 = 138412546;
  selfCopy = self;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "merge VIPs from cloud: %@ and local: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __26__EDVIPManager__mergeVIPs__block_invoke(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 hasPrefix:@"VIP_"])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 objectForKeyedSubscript:@"a"];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [a1[4] objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
          v12 = v11;
          if (v11)
          {
            [v11 addObject:v5];
          }

          else
          {
            v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v5, 0}];
            [a1[4] setObject:? forKeyedSubscript:?];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v13 = [v6 objectForKeyedSubscript:@"n"];
    if (v13)
    {
      [a1[5] setObject:v5 forKeyedSubscript:v13];
      v14 = [MEMORY[0x1E6996790] componentsFromString:v13];
      v15 = [v14 givenName];
      v16 = [v14 familyName];
      v17 = v16;
      if (v15 && v16)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v15, v16];
        [a1[6] setObject:v5 forKeyedSubscript:v18];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __26__EDVIPManager__mergeVIPs__block_invoke_2(id *a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v43 = a3;
  v59 = [v43 name];
  v46 = [v43 emailAddresses];
  v47 = [a1[4] _cloudKeyForIdentifier:v45];
  v5 = [a1[4] _validatedCloudVIPFromStore:a1[5] withCloudKey:?];
  v44 = v5;
  if (v5)
  {
    v6 = [v5 mutableCopy];
    goto LABEL_74;
  }

  v7 = [MEMORY[0x1E6996790] componentsFromString:v59];
  v8 = [v7 givenName];
  v50 = v8;
  v52 = [v7 familyName];
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = v46;
  v11 = [v10 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v11)
  {
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [a1[6] objectForKeyedSubscript:*(*(&v67 + 1) + 8 * i)];
        if (v14)
        {
          [v9 unionSet:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v11);
  }

  v15 = [v9 count];
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = [v9 anyObject];
      goto LABEL_70;
    }

    v57 = [v10 count];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v9;
    v18 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v18)
    {
      v61 = 0;
      v48 = 0;
      v49 = 0;
      v53 = 0;
      v54 = 0;
      v56 = *v64;
      v55 = (v8 | v52) != 0;
LABEL_21:
      v58 = v18;
      v19 = 0;
      while (1)
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v63 + 1) + 8 * v19);
        v62 = [a1[5] dictionaryForKey:v20];
        if (v55)
        {
          v21 = [v62 objectForKeyedSubscript:@"n"];
          v60 = [MEMORY[0x1E6996790] componentsFromString:v21];

          v22 = [v60 givenName];
          v23 = [v60 familyName];
          if (v59 && ([v21 isEqualToString:v59] & 1) != 0)
          {
            v16 = v20;

            v33 = v49;
            v7 = v60;
            if (v16)
            {
              goto LABEL_68;
            }

            goto LABEL_59;
          }

          if (v8)
          {
            LODWORD(v8) = [v22 isEqualToString:v8];
          }

          if (v52)
          {
            v24 = [v23 isEqualToString:?];
            if ((v8 & v24) == 1 && v48 == 0)
            {
              v48 = v20;
              v24 = 1;
            }
          }

          else
          {
            v24 = 0;
          }

          if (v53)
          {
            v26 = 0;
          }

          else
          {
            v26 = v8;
          }

          if (v26 == 1)
          {
            v53 = v20;
          }

          if (v54)
          {
            v27 = 0;
          }

          else
          {
            v27 = v24;
          }

          v8 = v50;
          if (v27 == 1)
          {
            v54 = v20;
          }

          v7 = v60;
        }

        if (v61 < v57)
        {
          v28 = objc_alloc(MEMORY[0x1E695DFA8]);
          v29 = [v62 objectForKeyedSubscript:@"a"];
          v30 = [v28 initWithArray:v29];

          [v30 intersectSet:v10];
          v31 = [v30 count];
          if (v31 > v61)
          {
            v32 = v20;

            v61 = v31;
            v49 = v32;
          }
        }

        if (v58 == ++v19)
        {
          v18 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v18)
          {
            goto LABEL_21;
          }

          goto LABEL_58;
        }
      }
    }

    v61 = 0;
    v48 = 0;
    v49 = 0;
    v53 = 0;
    v54 = 0;
LABEL_58:

    v33 = v49;
LABEL_59:
    if (v48)
    {
      v16 = v48;
      v48 = v16;
    }

    else
    {
      if (v61 == v57)
      {
        v34 = v33;
        v33 = v34;
      }

      else
      {
        if (v54)
        {
          v16 = v54;
          v48 = 0;
          v54 = v16;
          goto LABEL_68;
        }

        if (v53)
        {
          v16 = v53;
          v53 = v16;
          v54 = 0;
          v48 = 0;
          goto LABEL_68;
        }

        v34 = v33;
        v33 = v34;
        v53 = 0;
        v54 = 0;
      }

      v48 = 0;
      v16 = v34;
    }

LABEL_68:

    v17 = v53;
    goto LABEL_69;
  }

  v16 = [a1[7] objectForKeyedSubscript:v59];
  if (!v16 && v8 && v52)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v8, v52];
    v16 = [a1[8] objectForKeyedSubscript:v17];
LABEL_69:
  }

LABEL_70:
  if (v16)
  {
    v35 = v16;

    v36 = [a1[5] dictionaryForKey:v35];
    v6 = [v36 mutableCopy];

    v47 = v35;
  }

  else
  {
    v6 = 0;
  }

LABEL_74:
  if (!v6)
  {
    if (v59)
    {
      v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v59, @"n", 0}];
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v6 = v37;
  }

  v38 = [v6 objectForKeyedSubscript:@"a"];
  v39 = [v46 mutableCopy];
  [v39 addObjectsFromArray:v38];
  v40 = [v39 allObjects];
  v41 = [v40 sortedArrayUsingSelector:sel_compare_];
  [v6 setObject:v41 forKeyedSubscript:@"a"];

  [v6 setObject:&unk_1F45E6E38 forKeyedSubscript:@"v"];
  [a1[5] setDictionary:v6 forKey:v47];

  v42 = *MEMORY[0x1E69E9840];
}

- (id)_cloudKeyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [@"VIP_" stringByAppendingString:identifierCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_validatedCloudVIPFromStore:(id)store withCloudKey:(id)key
{
  v4 = [store dictionaryForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"n"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v6 = v4;
      v4 = 0;
    }

    else
    {
      v6 = [v4 objectForKeyedSubscript:@"a"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_98];
        v8 = [v7 count];
        if (v8)
        {
          if (v8 == [v6 count])
          {
            v9 = 0;
          }

          else
          {
            v10 = [v6 mutableCopy];
            [v10 removeObjectsAtIndexes:v7];
            v9 = [v4 mutableCopy];
            [v9 setObject:v10 forKeyedSubscript:@"a"];

            v4 = v10;
          }

          v4 = v9;
        }
      }

      else
      {
        v7 = v4;
        v4 = 0;
      }
    }
  }

  else
  {
    v5 = v4;
    v4 = 0;
  }

  return v4;
}

BOOL __57__EDVIPManager__validatedCloudVIPFromStore_withCloudKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_accountsChanged:(id)changed
{
  if ([(EDAccountsProvider *)self->_accountsProvider hasActiveAccounts])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E699B070] object:0];

    [(EDVIPManager *)self _initializeKVSStore];
  }
}

- (id)_contactForName:(id)name emailAddresses:(id)addresses
{
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  addressesCopy = addresses;
  contactStore = [(EDVIPManager *)self contactStore];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = addressesCopy;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v8)
  {
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:*(*(&v48 + 1) + 8 * i)];
        _contactDescriptors = [objc_opt_class() _contactDescriptors];
        v13 = [contactStore unifiedContactsMatchingPredicate:v11 keysToFetch:_contactDescriptors error:0];
        [v7 addObjectsFromArray:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v8);
  }

  v14 = [v7 count];
  if (v14 == 1)
  {
    firstObject = [v7 firstObject];
    goto LABEL_46;
  }

  if (!v14)
  {
    v15 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:nameCopy];
    _contactDescriptors2 = [objc_opt_class() _contactDescriptors];
    v17 = [contactStore unifiedContactsMatchingPredicate:v15 keysToFetch:_contactDescriptors2 error:0];
    [v7 addObjectsFromArray:v17];

    if ([v7 count])
    {
      firstObject = [v7 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    goto LABEL_45;
  }

  v15 = [MEMORY[0x1E6996790] componentsFromString:nameCopy];
  v39 = v15;
  givenName = [v15 givenName];
  familyName = [v15 familyName];
  if (givenName | familyName)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v7;
    v20 = [v35 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v20)
    {
      v41 = 0;
      v42 = 0;
      v38 = *v45;
LABEL_16:
      v37 = v20;
      v21 = 0;
      while (1)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v22 = *(*(&v44 + 1) + 8 * v21);
        givenName2 = [0 givenName];
        familyName2 = [0 familyName];
        v25 = [givenName2 isEqualToString:givenName];
        v26 = familyName;
        v27 = [familyName2 isEqualToString:familyName];
        if (v25 & v27)
        {
          break;
        }

        if (v42)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

        if (v28 == 1)
        {
          v42 = v22;
        }

        if (v41)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        if (v29 == 1)
        {
          v41 = v22;
        }

        v15 = v39;
        familyName = v26;

        if (v37 == ++v21)
        {
          v20 = [v35 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v20)
          {
            goto LABEL_16;
          }

          goto LABEL_37;
        }
      }

      firstObject = v22;

      v15 = v39;
      familyName = v26;

      v30 = v41;
      if (firstObject)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v41 = 0;
      v42 = 0;
LABEL_37:

      v30 = v41;
    }

    v31 = v30;
    if (v30)
    {
      goto LABEL_41;
    }

    v30 = v42;
    if (v42)
    {
      v31 = 0;
LABEL_41:
      firstObject = v30;
      v30 = v31;
LABEL_42:

      goto LABEL_44;
    }
  }

  firstObject = [(EDVIPManager *)self _contactFromContacts:v7 matchingMostAddresses:obj];
LABEL_44:

LABEL_45:
LABEL_46:

  v32 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)_contactFromContacts:(id)contacts matchingMostAddresses:(id)addresses
{
  v28 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  addressesCopy = addresses;
  v21 = [addressesCopy count];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = contactsCopy;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {

LABEL_16:
    firstObject = [obj firstObject];
    goto LABEL_17;
  }

  v8 = 0;
  firstObject = 0;
  v10 = *v24;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      v13 = objc_alloc(MEMORY[0x1E699AFD8]);
      emailAddresses = [v12 emailAddresses];
      v15 = [emailAddresses valueForKey:@"value"];
      v16 = [v13 initWithArray:v15];

      [v16 intersectSet:addressesCopy];
      v17 = [v16 count];
      if (v17 > v8)
      {
        v18 = v12;

        if (v17 == v21)
        {

          firstObject = v18;
          goto LABEL_13;
        }

        v8 = v17;
        firstObject = v18;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_13:

  if (!firstObject)
  {
    goto LABEL_16;
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)_contactDescriptors
{
  if (_contactDescriptors_onceToken[0] != -1)
  {
    +[EDVIPManager _contactDescriptors];
  }

  v3 = _contactDescriptors_descriptors;

  return v3;
}

void __35__EDVIPManager__contactDescriptors__block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = *MEMORY[0x1E695C240];
  v6[0] = v0;
  v6[1] = v1;
  v2 = *MEMORY[0x1E695C208];
  v6[2] = *MEMORY[0x1E695C230];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = _contactDescriptors_descriptors;
  _contactDescriptors_descriptors = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)gatherStatisticsWithVIPCount:(unint64_t)count
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EDVIPManager_gatherStatisticsWithVIPCount___block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_v12__0B8l;
  aBlock[4] = count;
  v4 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__EDVIPManager_gatherStatisticsWithVIPCount___block_invoke_4;
    v7[3] = &unk_1E82591C8;
    v8 = v4;
    [v6 vipManager:self hasVIPNotificationsEnabledWithCompletion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __45__EDVIPManager_gatherStatisticsWithVIPCount___block_invoke(uint64_t a1, char a2)
{
  v4 = [MEMORY[0x1E699B978] globalAsyncScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EDVIPManager_gatherStatisticsWithVIPCount___block_invoke_2;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = *(a1 + 32);
  v6 = a2;
  [v4 performBlock:v5];
}

uint64_t __45__EDVIPManager_gatherStatisticsWithVIPCount___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

id __45__EDVIPManager_gatherStatisticsWithVIPCount___block_invoke_3(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"vipCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = @"notificationsEnabled";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (EDVIPManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __35__EDVIPManager__initializeKVSStore__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = @"com.apple.mail.vipsenders";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%@: current store contents: %{public}@", buf, 0x16u);
}

- (void)_serializedData
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = self;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to serialize %lu entries: %{public}@", buf, 0x16u);
}

void __38__EDVIPManager__keyValueStoreChanged___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "keys changed: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateLocalWithCloud:(uint64_t)a3 refresh:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 8));
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "local VIPs before updating from cloud: %{private}@", a5, a6, a7, a8, 3u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateLocalWithCloud:(uint64_t)a3 refresh:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 8));
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "local VIPs after updating from cloud: %{private}@", a5, a6, a7, a8, 3u);
  v8 = *MEMORY[0x1E69E9840];
}

@end