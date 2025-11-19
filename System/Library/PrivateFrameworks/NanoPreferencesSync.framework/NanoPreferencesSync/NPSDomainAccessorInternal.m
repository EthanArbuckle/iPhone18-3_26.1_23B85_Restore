@interface NPSDomainAccessorInternal
+ (BOOL)domainIsValid:(id)a3;
+ (BOOL)valueIsValid:(id)a3;
+ (id)cfTypeNameForCFPropertyListRef:(void *)a3;
+ (id)copyDomainListForPairingDataStore:(id)a3;
+ (id)internalAccessorForPairingID:(id)a3 pairingDataStore:(id)a4 domain:(id)a5;
+ (id)readDomainURL:(id)a3 withError:(id *)a4;
+ (id)urlForDomain:(id)a3 pairingDataStore:(id)a4;
+ (id)writeDomain:(id)a3 toURL:(id)a4;
+ (void)applicationDidEnterBackground;
+ (void)applicationDidResume;
+ (void)decrementInternalAccessorReferenceCount:(id)a3;
+ (void)extensionDidBecomeActive;
+ (void)extensionWillResignActive;
+ (void)initialize;
+ (void)invalidateAndReleaseUnreferencedAccessors;
+ (void)mergeDirtyKeys:(id)a3 fromDictionary:(id)a4 toDictionary:(id)a5;
- (BOOL)BOOLForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (BOOL)requiresDeviceUnlockedSinceBoot;
- (NPSDomainAccessorInternal)initWithPairingID:(id)a3 pairingDataStore:(id)a4 domain:(id)a5;
- (double)doubleForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (float)floatForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (id)URLForKey:(id)a3;
- (id)_copyKeyList;
- (id)_dictionaryRepresentation;
- (id)_objectForKey:(id)a3 error:(id *)a4;
- (id)_synchronizeReadOnly:(BOOL)a3;
- (id)arrayForKey:(id)a3;
- (id)canSynchronizeForReadingURL:(id)a3;
- (id)canSynchronizeForWritingURL:(id)a3 readFirst:(BOOL)a4;
- (id)copyKeyList;
- (id)createNanoSettingsDirectory;
- (id)dataForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)a3;
- (id)stringArrayForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (id)synchronize;
- (int64_t)integerForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (int64_t)longForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (unint64_t)domainSize;
- (void)_invalidatePresenter;
- (void)_setObject:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)filePresenterDidBecomeNonCurrent:(id)a3;
- (void)invalidatePresenter;
- (void)objectForKey:(id)a3 completionHandler:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setLong:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)setURL:(id)a3 forKey:(id)a4;
- (void)synchronizeWithCompletionHandler:(id)a3;
@end

@implementation NPSDomainAccessorInternal

+ (void)initialize
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.nanoprefsync.frmrk.internalAccessors", v3);
  v5 = internalAccessorsQueue;
  internalAccessorsQueue = v4;

  v6 = objc_opt_new();
  v7 = internalAccessors;
  internalAccessors = v6;

  uiApplicationClass = NSClassFromString(&cfstr_Uiapplication.isa);
  v8 = [uiApplicationClass sharedApplication];
  if (v8)
  {
    v9 = 0;
    atomic_compare_exchange_strong(&applicationEnteredBackground, &v9, 1u);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:a1 selector:sel_applicationDidResume name:@"UIApplicationDidBecomeActiveNotification" object:v8];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:a1 selector:sel_applicationDidEnterBackground name:@"UIApplicationDidEnterBackgroundNotification" object:v8];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:a1 selector:sel_applicationDidResume name:@"UIApplicationResumedNotification" object:v8];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __39__NPSDomainAccessorInternal_initialize__block_invoke;
    v19[3] = &unk_1E8129518;
    v20 = v8;
    v13 = MEMORY[0x1C68E5370](v19);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v13[2](v13);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }
  }

  else
  {
    if (ProcessIsExtension_once != -1)
    {
      +[NPSDomainAccessorInternal initialize];
    }

    if (ProcessIsExtension_result == 1)
    {
      v14 = 0;
      atomic_compare_exchange_strong(&applicationEnteredBackground, &v14, 1u);
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 addObserver:a1 selector:sel_extensionDidBecomeActive name:*MEMORY[0x1E696A2C0] object:0];

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 addObserver:a1 selector:sel_extensionWillResignActive name:*MEMORY[0x1E696A2D8] object:0];
    }
  }

  v17 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, internalAccessorsQueue);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __39__NPSDomainAccessorInternal_initialize__block_invoke_20;
  v18[3] = &__block_descriptor_40_e5_v8__0l;
  v18[4] = a1;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(v17);
}

void __39__NPSDomainAccessorInternal_initialize__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) applicationState];
  v2 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v1;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, "Application state: %ld", &v5, 0xCu);
  }

  if (!v1)
  {
    v3 = 1;
    atomic_compare_exchange_strong(&applicationEnteredBackground, &v3, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)applicationDidResume
{
  v2 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, &unk_1C0DA051F, v4, 2u);
  }

  v3 = 1;
  atomic_compare_exchange_strong(&applicationEnteredBackground, &v3, 0);
}

- (id)synchronize
{
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, &unk_1C0DA051F, buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NPSDomainAccessorInternal_synchronize__block_invoke;
  v7[3] = &unk_1E8129540;
  v7[4] = self;
  v7[5] = buf;
  dispatch_sync(internalQueue, v7);
  v5 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v5;
}

uint64_t __40__NPSDomainAccessorInternal_synchronize__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronizeReadOnly:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __39__NPSDomainAccessorInternal_initialize__block_invoke_20(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&_block_invoke_lastFlush > 10.0)
  {
    [*(a1 + 32) invalidateAndReleaseUnreferencedAccessors];
  }

  _block_invoke_lastFlush = *&Current;
}

+ (void)applicationDidEnterBackground
{
  v2 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, &unk_1C0DA051F, buf, 2u);
  }

  v3 = [uiApplicationClass sharedApplication];
  v4 = [v3 beginBackgroundTaskWithName:@"NPSDomainAccessorInternal" expirationHandler:&__block_literal_global_2];

  v5 = 0;
  atomic_compare_exchange_strong(&applicationEnteredBackground, &v5, 1u);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NPSDomainAccessorInternal_applicationDidEnterBackground__block_invoke_24;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_async(internalAccessorsQueue, block);
}

void __58__NPSDomainAccessorInternal_applicationDidEnterBackground__block_invoke()
{
  v0 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C0D93000, v0, OS_LOG_TYPE_DEFAULT, "Expiration handler called", v1, 2u);
  }
}

void __58__NPSDomainAccessorInternal_applicationDidEnterBackground__block_invoke_24(uint64_t a1)
{
  [internalAccessors enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27];
  v2 = [uiApplicationClass sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

+ (void)extensionDidBecomeActive
{
  v2 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, &unk_1C0DA051F, v4, 2u);
  }

  v3 = 1;
  atomic_compare_exchange_strong(&applicationEnteredBackground, &v3, 0);
}

+ (void)extensionWillResignActive
{
  v2 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, &unk_1C0DA051F, v5, 2u);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&applicationEnteredBackground, &v3, 1u);
  v4 = [MEMORY[0x1E696AE30] processInfo];
  [v4 performExpiringActivityWithReason:@"NPSDomainAccessor" usingBlock:&__block_literal_global_37];
}

void __54__NPSDomainAccessorInternal_extensionWillResignActive__block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "expired: (%d)", v5, 8u);
  }

  dispatch_sync(internalAccessorsQueue, &__block_literal_global_40);
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)internalAccessorForPairingID:(id)a3 pairingDataStore:(id)a4 domain:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v10 = internalAccessorsQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__NPSDomainAccessorInternal_internalAccessorForPairingID_pairingDataStore_domain___block_invoke;
  v16[3] = &unk_1E81297F0;
  v17 = v7;
  v18 = v9;
  v19 = v8;
  v20 = &v21;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  dispatch_sync(v10, v16);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __82__NPSDomainAccessorInternal_internalAccessorForPairingID_pairingDataStore_domain___block_invoke(void *a1)
{
  v2 = [internalAccessors objectForKey:a1[4]];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKey:a1[5]];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    if (v8)
    {
      [v8 setReferenceCounter:{objc_msgSend(*(v7 + 40), "referenceCounter") + 1}];
      v9 = [*(*(a1[7] + 8) + 40) internalQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__NPSDomainAccessorInternal_internalAccessorForPairingID_pairingDataStore_domain___block_invoke_2;
      block[3] = &unk_1E81297C8;
      block[4] = a1[7];
      dispatch_async(v9, block);
    }

    else
    {
      v14 = [[NPSDomainAccessorInternal alloc] initWithPairingID:a1[4] pairingDataStore:a1[6] domain:a1[5]];
      v15 = *(a1[7] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      [v3 setObject:*(*(a1[7] + 8) + 40) forKey:a1[5]];
    }
  }

  else
  {
    v10 = [[NPSDomainAccessorInternal alloc] initWithPairingID:a1[4] pairingDataStore:a1[6] domain:a1[5]];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (*(*(a1[7] + 8) + 40))
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{*(*(a1[7] + 8) + 40), a1[5], 0}];
      [internalAccessors setObject:v3 forKey:a1[4]];
      v13 = *(*(a1[7] + 8) + 40);
    }

    else
    {
      v13 = 0;
      v3 = 0;
    }

    v17 = [v13 createNanoSettingsDirectory];
  }
}

void __82__NPSDomainAccessorInternal_internalAccessorForPairingID_pairingDataStore_domain___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) filePresenter];

  if (!v2)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);

    [v3 setHasReadFromDisk:0];
  }
}

+ (void)decrementInternalAccessorReferenceCount:(id)a3
{
  v3 = a3;
  v4 = internalAccessorsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__NPSDomainAccessorInternal_decrementInternalAccessorReferenceCount___block_invoke;
  block[3] = &unk_1E8129518;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

uint64_t __69__NPSDomainAccessorInternal_decrementInternalAccessorReferenceCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 referenceCounter];
  result = [v1 setReferenceCounter:v2 - 1];
  if (!v2)
  {
    __69__NPSDomainAccessorInternal_decrementInternalAccessorReferenceCount___block_invoke_cold_1();
  }

  return result;
}

- (void)invalidatePresenter
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__NPSDomainAccessorInternal_invalidatePresenter__block_invoke;
  block[3] = &unk_1E8129518;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_invalidatePresenter
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_filePresenter)
  {
    [MEMORY[0x1E696ABF8] removeFilePresenter:?];
    v3 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      filePresenter = self->_filePresenter;
      v7 = 134218240;
      v8 = self;
      v9 = 2048;
      v10 = filePresenter;
      _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self:(%p); Unregisted file presenter: (%p)", &v7, 0x16u);
    }

    v5 = self->_filePresenter;
    self->_filePresenter = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)invalidateAndReleaseUnreferencedAccessors
{
  v2 = objc_opt_new();
  v3 = internalAccessors;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__NPSDomainAccessorInternal_invalidateAndReleaseUnreferencedAccessors__block_invoke;
  v5[3] = &unk_1E8129840;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  [internalAccessors removeObjectsForKeys:v4];
}

void __70__NPSDomainAccessorInternal_invalidateAndReleaseUnreferencedAccessors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__NPSDomainAccessorInternal_invalidateAndReleaseUnreferencedAccessors__block_invoke_2;
  v10[3] = &unk_1E8129818;
  v8 = v7;
  v11 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  [v6 removeObjectsForKeys:v8];
  v9 = [v6 count];

  if (!v9)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __70__NPSDomainAccessorInternal_invalidateAndReleaseUnreferencedAccessors__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (![v5 referenceCounter])
  {
    [v5 invalidatePresenter];
    [*(a1 + 32) addObject:v6];
  }
}

+ (id)urlForDomain:(id)a3 pairingDataStore:(id)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = a4;
    v7 = [v5 stringWithFormat:@"NanoPreferencesSync/NanoDomains/%@", a3];
    v8 = [v6 stringByAppendingPathComponent:v7];
  }

  else
  {
    v7 = a4;
    v8 = [v7 stringByAppendingPathComponent:@"NanoPreferencesSync/NanoDomains/"];
  }

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:a3 == 0];

  return v9;
}

- (NPSDomainAccessorInternal)initWithPairingID:(id)a3 pairingDataStore:(id)a4 domain:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([objc_opt_class() domainIsValid:v11] & 1) == 0)
  {
    [NPSDomainAccessorInternal initWithPairingID:pairingDataStore:domain:];
  }

  if (!v9)
  {
    [NPSDomainAccessorInternal initWithPairingID:pairingDataStore:domain:];
  }

  if (!v10)
  {
    [NPSDomainAccessorInternal initWithPairingID:pairingDataStore:domain:];
  }

  v31.receiver = self;
  v31.super_class = NPSDomainAccessorInternal;
  v12 = [(NPSDomainAccessorInternal *)&v31 init];
  if (v12)
  {
    v13 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v33 = v12;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_1C0D93000, v13, OS_LOG_TYPE_DEFAULT, "self: (%p); pairingID: (%@); domain: (%@); pairingDataStore: (%@)", buf, 0x2Au);
    }

    objc_storeStrong(&v12->_domain, a5);
    objc_storeStrong(&v12->_pairingID, a3);
    v12->_hasReadFromDisk = 0;
    objc_storeStrong(&v12->_pairingStorePath, a4);
    v12->_nanoSettingsDirectoryExists = 0;
    v12->_referenceCounter = 1;
    v14 = [objc_opt_class() urlForDomain:v11 pairingDataStore:v10];
    domainURL = v12->_domainURL;
    v12->_domainURL = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v9 UUIDString];
    v19 = [v17 stringWithFormat:@"com.apple.nanoprefsync.frmrk.internalAccessor.int.%@.%@", v18, v11];
    v20 = [v19 UTF8String];

    v21 = dispatch_queue_create(v20, v16);
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v21;

    v23 = MEMORY[0x1E696AEC0];
    v24 = [v9 UUIDString];
    v25 = [v23 stringWithFormat:@"com.apple.nanoprefsync.frmrk.internalAccessor.ext.%@.%@", v24, v11];
    v26 = [v25 UTF8String];

    v27 = dispatch_queue_create(v26, 0);
    externalQueue = v12->_externalQueue;
    v12->_externalQueue = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self:(%p)", buf, 0xCu);
  }

  [(NPSDomainAccessorInternal *)self _invalidatePresenter];
  v5.receiver = self;
  v5.super_class = NPSDomainAccessorInternal;
  [(NPSDomainAccessorInternal *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)domainIsValid:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"..") == 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

+ (BOOL)valueIsValid:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v7 = nps_domain_accessor_log;
    v4 = 0;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1C0D93000, v7, OS_LOG_TYPE_DEFAULT, "Invalid type: (%@)", &v8, 0xCu);
      v4 = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)cfTypeNameForCFPropertyListRef:(void *)a3
{
  if (!a3)
  {
    return @"n/a/";
  }

  v3 = CFGetTypeID(a3);
  if (v3 == CFDataGetTypeID())
  {
    return @"CFDataRef";
  }

  if (v3 == CFStringGetTypeID())
  {
    return @"CFStringRef";
  }

  if (v3 == CFArrayGetTypeID())
  {
    return @"CFArrayRef";
  }

  if (v3 == CFDictionaryGetTypeID())
  {
    return @"CFDictionaryRef";
  }

  if (v3 == CFDateGetTypeID())
  {
    return @"CFDateRef";
  }

  if (v3 == CFBooleanGetTypeID())
  {
    return @"CFBooleanRef";
  }

  if (v3 == CFNumberGetTypeID())
  {
    return @"CFNumberRef";
  }

  return @"unknown";
}

+ (void)mergeDirtyKeys:(id)a3 fromDictionary:(id)a4 toDictionary:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__NPSDomainAccessorInternal_mergeDirtyKeys_fromDictionary_toDictionary___block_invoke;
  v11[3] = &unk_1E8129868;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [a3 enumerateObjectsUsingBlock:v11];
}

void __72__NPSDomainAccessorInternal_mergeDirtyKeys_fromDictionary_toDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = *(a1 + 40);
  v7 = v5;
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:v4];
  }

  else
  {
    [v6 removeObjectForKey:v4];
  }
}

- (id)copyKeyList
{
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, &unk_1C0DA051F, buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NPSDomainAccessorInternal_copyKeyList__block_invoke;
  v7[3] = &unk_1E8129540;
  v7[4] = self;
  v7[5] = buf;
  dispatch_sync(internalQueue, v7);
  v5 = [MEMORY[0x1E695DFD8] setWithArray:*(v9 + 5)];
  _Block_object_dispose(buf, 8);

  return v5;
}

uint64_t __40__NPSDomainAccessorInternal_copyKeyList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyKeyList];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_copyKeyList
{
  if (!self->_hasReadFromDisk)
  {
    v3 = [(NPSDomainAccessorInternal *)self _synchronizeReadOnly:1];
  }

  [(NSMutableDictionary *)self->_map allKeys];
  return objc_claimAutoreleasedReturnValue();
}

+ (id)copyDomainListForPairingDataStore:(id)a3
{
  v3 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__0;
  v17[4] = __Block_byref_object_dispose__0;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v5 = [NPSDomainAccessorInternal urlForDomain:0 pairingDataStore:v3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__NPSDomainAccessorInternal_copyDomainListForPairingDataStore___block_invoke;
  v9[3] = &unk_1E8129890;
  v9[4] = &v11;
  v9[5] = v17;
  v10 = 0;
  [v4 coordinateReadingItemAtURL:v5 options:1 error:&v10 byAccessor:v9];
  v6 = v10;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v12[5]];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);

  return v7;
}

void __63__NPSDomainAccessorInternal_copyDomainListForPairingDataStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v5 contentsOfDirectoryAtPath:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)synchronizeWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = MEMORY[0x1C68E5370](v4);
    *buf = 134218240;
    v14 = self;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "self: (%p); completionHandler: (%p)", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__NPSDomainAccessorInternal_synchronizeWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E81298B8;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(internalQueue, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __62__NPSDomainAccessorInternal_synchronizeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronizeReadOnly:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__NPSDomainAccessorInternal_synchronizeWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E8129568;
    v7 = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (id)_synchronizeReadOnly:(BOOL)a3
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_ERROR))
    {
      [NPSDomainAccessorInternal _synchronizeReadOnly:v5];
    }

    v6 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_ERROR))
    {
      [NPSDomainAccessorInternal _synchronizeReadOnly:v6];
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v7 = !a3 && self->_dirtyKeysForWriting != 0;
  if (self->_hasReadFromDisk && (filePresenter = self->_filePresenter) != 0)
  {
    v9 = ![(NPSDomainAccessorFilePresenter *)filePresenter isCurrent];
    if ((v9 & 1) == 0 && !v7)
    {
      v10 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = self->_filePresenter;
  if (!v11)
  {
    v11 = [[NPSDomainAccessorFilePresenter alloc] initWithDelegate:self domainURL:self->_domainURL];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__NPSDomainAccessorInternal__synchronizeReadOnly___block_invoke;
  v16[3] = &unk_1E81298E0;
  v16[4] = self;
  v12 = v11;
  v19 = v9;
  v20 = v7;
  v17 = v12;
  v18 = &v21;
  v13 = [(NPSDomainAccessorFilePresenter *)v12 synchronizeForReadingOnly:!v7 handler:v16];
  v14 = v22[5];
  v22[5] = v13;

  v10 = v22[5];
LABEL_18:
  _Block_object_dispose(&v21, 8);

  return v10;
}

BOOL __50__NPSDomainAccessorInternal__synchronizeReadOnly___block_invoke(uint64_t a1, void *a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!applicationEnteredBackground && !*(*(a1 + 32) + 88))
  {
    [MEMORY[0x1E696ABF8] addFilePresenter:*(a1 + 40)];
    v6 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v15 = 134218240;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "self: (%p); Registered file presenter: (%p)", &v15, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  }

  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) canSynchronizeForWritingURL:v5 readFirst:*(a1 + 56) & 1 | ((a3 & 1) == 0)];
  }

  else
  {
    [*(a1 + 32) canSynchronizeForReadingURL:v5];
  }
  v9 = ;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 48) + 8) + 40) == 0;
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)objectForKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "key: (%@)", &buf, 0xCu);
  }

  if (!v4)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key: (%@)", 0];
    v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NPSDomainAccessorInternal_objectForKey___block_invoke;
  block[3] = &unk_1E8129908;
  v17 = v4;
  p_buf = &buf;
  block[4] = self;
  v7 = v4;
  dispatch_sync(internalQueue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __42__NPSDomainAccessorInternal_objectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _objectForKey:*(a1 + 40) error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)objectForKey:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = MEMORY[0x1C68E5370](v7);
    *buf = 138412546;
    v27 = v6;
    v28 = 2048;
    v29 = v10;
    _os_log_impl(&dword_1C0D93000, v9, OS_LOG_TYPE_DEFAULT, "key: (%@); completionHandler: (%p)", buf, 0x16u);
  }

  if (!v6 || !v7)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = MEMORY[0x1E696AEC0];
    v19 = MEMORY[0x1C68E5370](v7);
    v20 = [v18 stringWithFormat:@"nil key (%@) or completion handler (%p)", v6, v19];
    v21 = [v16 exceptionWithName:v17 reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

  v11 = [v6 copy];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NPSDomainAccessorInternal_objectForKey_completionHandler___block_invoke;
  block[3] = &unk_1E8129930;
  block[4] = self;
  v24 = v11;
  v25 = v7;
  v13 = v7;
  v14 = v11;
  dispatch_async(internalQueue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __60__NPSDomainAccessorInternal_objectForKey_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [v2 _objectForKey:v3 error:&v14];
  v5 = v14;
  v6 = *(*(a1 + 32) + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__NPSDomainAccessorInternal_objectForKey_completionHandler___block_invoke_2;
  v10[3] = &unk_1E81295B8;
  v7 = *(a1 + 48);
  v12 = v5;
  v13 = v7;
  v11 = v4;
  v8 = v5;
  v9 = v4;
  dispatch_async(v6, v10);
}

- (id)_objectForKey:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_hasReadFromDisk || ([(NPSDomainAccessorInternal *)self _synchronizeReadOnly:1], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(NSMutableDictionary *)self->_map objectForKeyedSubscript:v6];
    v9 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [objc_opt_class() cfTypeNameForCFPropertyListRef:v8];
      v14 = 138412802;
      v15 = v6;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "key: (%@); value type: (%@); value: (%@)", &v14, 0x20u);
    }
  }

  else
  {
    if (a4)
    {
      v7 = v7;
      *a4 = v7;
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[NPSDomainAccessorInternal setObject:forKey:]";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1C0D93000, v8, OS_LOG_TYPE_DEFAULT, "%s: value : %@; key: %@", &v10, 0x20u);
  }

  [(NPSDomainAccessorInternal *)self setObject:v6 forKey:v7 completionHandler:0];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setObject:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [objc_opt_class() cfTypeNameForCFPropertyListRef:v8];
    v14 = MEMORY[0x1C68E5370](v10);
    *buf = 138413058;
    v39 = v9;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v8;
    v44 = 2048;
    v45 = v14;
    _os_log_impl(&dword_1C0D93000, v12, OS_LOG_TYPE_DEFAULT, "key: (%@); value type: (%@): value: (%@); completionHandler: (%p)", buf, 0x2Au);
  }

  if (!v9 || ([objc_opt_class() valueIsValid:v8] & 1) == 0)
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil or invalid key (%@) or value (%@)", v9, v8];
    v29 = [v26 exceptionWithName:v27 reason:v28 userInfo:0];
    v30 = v29;

    objc_exception_throw(v29);
  }

  v15 = [v9 copy];
  v16 = objc_autoreleasePoolPush();
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E4A8], v8, 0);
  objc_autoreleasePoolPop(v16);
  internalQueue = self->_internalQueue;
  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__NPSDomainAccessorInternal_setObject_forKey_completionHandler___block_invoke;
    block[3] = &unk_1E8129958;
    v19 = &v35;
    block[4] = self;
    v35 = DeepCopy;
    v20 = &v36;
    v36 = v15;
    v37 = v10;
    v21 = v15;
    v22 = DeepCopy;
    dispatch_async(internalQueue, block);
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __64__NPSDomainAccessorInternal_setObject_forKey_completionHandler___block_invoke_3;
    v31[3] = &unk_1E8129980;
    v19 = &v32;
    v31[4] = self;
    v32 = DeepCopy;
    v20 = &v33;
    v33 = v15;
    v23 = v15;
    v24 = DeepCopy;
    dispatch_sync(internalQueue, v31);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __64__NPSDomainAccessorInternal_setObject_forKey_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__NPSDomainAccessorInternal_setObject_forKey_completionHandler___block_invoke_2;
    block[3] = &unk_1E8129608;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)_setObject:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (self->_hasReadFromDisk && self->_filePresenter || [(NSMutableSet *)self->_dirtyKeysForWriting containsObject:v6])
  {
    v7 = [(NSMutableDictionary *)self->_map objectForKeyedSubscript:v6];
    if (!(v14 | v7) || ([v7 isEqual:v14] & 1) != 0)
    {

      goto LABEL_15;
    }
  }

  dirtyKeysForWriting = self->_dirtyKeysForWriting;
  if (!dirtyKeysForWriting)
  {
    v9 = objc_opt_new();
    v10 = self->_dirtyKeysForWriting;
    self->_dirtyKeysForWriting = v9;

    dirtyKeysForWriting = self->_dirtyKeysForWriting;
  }

  [(NSMutableSet *)dirtyKeysForWriting addObject:v6];
  map = self->_map;
  if (v14)
  {
    if (!map)
    {
      v12 = objc_opt_new();
      v13 = self->_map;
      self->_map = v12;

      map = self->_map;
    }

    [(NSMutableDictionary *)map setObject:v14 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)map removeObjectForKey:v6];
  }

LABEL_15:
}

- (id)stringForKey:(id)a3
{
  v3 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v4 = [NPSDomainAccessorUtils stringForObject:v3];

  return v4;
}

- (id)arrayForKey:(id)a3
{
  v3 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v4 = [NPSDomainAccessorUtils arrayForObject:v3];

  return v4;
}

- (id)dictionaryForKey:(id)a3
{
  v3 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v4 = [NPSDomainAccessorUtils dictionaryForObject:v3];

  return v4;
}

- (id)dataForKey:(id)a3
{
  v3 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v4 = [NPSDomainAccessorUtils dataForObject:v3];

  return v4;
}

- (id)stringArrayForKey:(id)a3
{
  v3 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v4 = [NPSDomainAccessorUtils stringArrayForObject:v3];

  return v4;
}

- (int64_t)integerForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v5 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v6 = [NPSDomainAccessorUtils integerForObject:v5 existsAndHasValidFormat:a4];

  return v6;
}

- (int64_t)longForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v5 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v6 = [NPSDomainAccessorUtils longForObject:v5 existsAndHasValidFormat:a4];

  return v6;
}

- (float)floatForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v5 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  [NPSDomainAccessorUtils floatForObject:v5 existsAndHasValidFormat:a4];
  v7 = v6;

  return v7;
}

- (double)doubleForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v5 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  [NPSDomainAccessorUtils doubleForObject:v5 existsAndHasValidFormat:a4];
  v7 = v6;

  return v7;
}

- (BOOL)BOOLForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v5 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  LOBYTE(a4) = [NPSDomainAccessorUtils BOOLForObject:v5 existsAndHasValidFormat:a4];

  return a4;
}

- (id)URLForKey:(id)a3
{
  v3 = [(NPSDomainAccessorInternal *)self objectForKey:a3];
  v4 = [NPSDomainAccessorUtils URLForObject:v3];

  return v4;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NPSDomainAccessorInternal *)self setObject:v8 forKey:v7];
}

- (void)setLong:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(NPSDomainAccessorInternal *)self setObject:v8 forKey:v7];
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(NPSDomainAccessorInternal *)self setObject:v9 forKey:v7];
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(NPSDomainAccessorInternal *)self setObject:v8 forKey:v7];
}

- (void)setURL:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [NPSDomainAccessorUtils objectForURL:a3];
  [(NPSDomainAccessorInternal *)self setObject:v7 forKey:v6];
}

- (id)dictionaryRepresentation
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__NPSDomainAccessorInternal_dictionaryRepresentation__block_invoke;
  v8[3] = &unk_1E8129540;
  v8[4] = self;
  v8[5] = &buf;
  dispatch_sync(internalQueue, v8);
  v5 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __53__NPSDomainAccessorInternal_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictionaryRepresentation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_dictionaryRepresentation
{
  if (!self->_hasReadFromDisk)
  {
    v3 = [(NPSDomainAccessorInternal *)self _synchronizeReadOnly:1];
  }

  map = self->_map;

  return map;
}

- (id)canSynchronizeForReadingURL:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = self;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  v12 = 0;
  v6 = [objc_opt_class() readDomainURL:v4 withError:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    if (self->_dirtyKeysForWriting)
    {
      [objc_opt_class() mergeDirtyKeys:self->_dirtyKeysForWriting fromDictionary:self->_map toDictionary:v6];
    }

    objc_storeStrong(&self->_map, v6);
    self->_hasReadFromDisk = 1;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)canSynchronizeForWritingURL:(id)a3 readFirst:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[NPSDomainAccessorInternal canSynchronizeForWritingURL:readFirst:]";
    _os_log_impl(&dword_1C0D93000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v4)
  {
    v19 = 0;
    v8 = [objc_opt_class() readDomainURL:v6 withError:&v19];
    v9 = v19;
    if (v9)
    {
      v10 = v9;
      v11 = nps_domain_accessor_log;
      if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[NPSDomainAccessorInternal canSynchronizeForWritingURL:readFirst:]";
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1C0D93000, v11, OS_LOG_TYPE_DEFAULT, "%s: Read First error %@", buf, 0x16u);
      }

      v12 = v10;

      goto LABEL_13;
    }

    [objc_opt_class() mergeDirtyKeys:self->_dirtyKeysForWriting fromDictionary:self->_map toDictionary:v8];
    map = self->_map;
    self->_map = v8;

    self->_hasReadFromDisk = 1;
  }

  v12 = [objc_opt_class() writeDomain:self->_map toURL:v6];
  if (v12)
  {
    v14 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 136315650;
      v21 = "[NPSDomainAccessorInternal canSynchronizeForWritingURL:readFirst:]";
      v22 = 2112;
      v23 = domain;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_1C0D93000, v14, OS_LOG_TYPE_DEFAULT, "%s: Error saving domain %@. Error: %@", buf, 0x20u);
    }
  }

  else
  {
    dirtyKeysForWriting = self->_dirtyKeysForWriting;
    self->_dirtyKeysForWriting = 0;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)createNanoSettingsDirectory
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (self->_nanoSettingsDirectoryExists)
  {
    v2 = 0;
    goto LABEL_15;
  }

  v4 = [(NSString *)self->_pairingStorePath stringByAppendingPathComponent:@"NanoPreferencesSync/NanoDomains/"];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v5 fileExistsAtPath:v4] & 1) == 0)
  {
    v6 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "Creating NanoDomains directory (%@) as it doesn't exist", buf, 0xCu);
    }

    v18 = *MEMORY[0x1E696A3A0];
    v19[0] = *MEMORY[0x1E696A3A8];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 0;
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v7 error:&v13];
    v2 = v13;

    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = [v2 domain];
    if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v9 = [v2 code];

      if (v9 == 516)
      {
LABEL_10:
        self->_nanoSettingsDirectoryExists = 1;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v10 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v2;
      _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create the NanoDomains directory (%@) with error: (%@)", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v2 = 0;
LABEL_14:

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)readDomainURL:(id)a3 withError:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v27 = a1;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_1C0D93000, v7, OS_LOG_TYPE_DEFAULT, "self: (%p); domainURL: (%@)", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v6 path];
  v10 = [v8 attributesOfItemAtPath:v9 error:0];

  if (v10)
  {
    v11 = [v10 objectForKey:*MEMORY[0x1E696A3B8]];
    if ([v11 integerValue] > 0x80000)
    {
      v12 = nps_domain_accessor_log;
      if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_FAULT))
      {
        [(NPSDomainAccessorInternal *)v6 readDomainURL:v11 withError:v12];
      }
    }

    v25 = 0;
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:2 error:&v25];
    v14 = v25;
    if (v14)
    {
      v15 = v14;
      v16 = nps_domain_accessor_log;
      if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = v6;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_1C0D93000, v16, OS_LOG_TYPE_DEFAULT, "Failed to read domain from disk (%@) with error: (%@). Resetting it.", buf, 0x16u);
      }

      if (a4)
      {
        v17 = v15;
        v18 = 0;
        *a4 = v15;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v24 = 0;
      v19 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:&v24];
      v15 = v24;
      v18 = [v19 mutableCopy];

      if (v15)
      {
        v20 = nps_domain_accessor_log;
        if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v27 = v13;
          v28 = 2112;
          v29 = v6;
          v30 = 2112;
          v31 = v15;
          _os_log_impl(&dword_1C0D93000, v20, OS_LOG_TYPE_DEFAULT, "Failed to un-serialize domain (%@) at path (%@) with error: (%@). Resetting it.", buf, 0x20u);
        }

        v21 = objc_opt_new();

        v18 = v21;
      }
    }
  }

  else
  {
    v18 = objc_opt_new();
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)writeDomain:(id)a3 toURL:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v33 = "+[NPSDomainAccessorInternal writeDomain:toURL:]";
    v34 = 2048;
    v35 = a1;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_1C0D93000, v8, OS_LOG_TYPE_DEFAULT, "%s: self: (%p); domainDict: (%@); url: (%@)", buf, 0x2Au);
  }

  v9 = [v6 count];
  v10 = nps_domain_accessor_log;
  v11 = os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136315138;
      v33 = "+[NPSDomainAccessorInternal writeDomain:toURL:]";
      _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "%s: Deleting domain.", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    [v12 removeItemAtURL:v7 error:&v29];
    v17 = v29;
    v18 = v17;
    if (!v17)
    {
      goto LABEL_26;
    }

    v19 = [v17 domain];
    if ([v19 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v20 = [v18 code];

      if (v20 == 4)
      {

        v18 = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v26 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "+[NPSDomainAccessorInternal writeDomain:toURL:]";
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v18;
      v23 = "%s: Failed to delete domain from disk (%@) with error: (%@).";
      v24 = v26;
      v25 = 32;
LABEL_25:
      _os_log_impl(&dword_1C0D93000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }

LABEL_26:

    v16 = v18;
    goto LABEL_27;
  }

  if (v11)
  {
    *buf = 136315138;
    v33 = "+[NPSDomainAccessorInternal writeDomain:toURL:]";
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "%s: Updating domain.", buf, 0xCu);
  }

  v31 = 0;
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:&v31];
  v13 = v31;
  if (!v13)
  {
    if ([v12 length] > 0x80000)
    {
      v21 = nps_domain_accessor_log;
      if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_FAULT))
      {
        [(NPSDomainAccessorInternal *)v7 writeDomain:v21 toURL:v12];
      }
    }

    v30 = 0;
    [v12 writeToURL:v7 options:268435457 error:&v30];
    v18 = v30;
    if (!v18)
    {
      goto LABEL_26;
    }

    v22 = nps_domain_accessor_log;
    if (!os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315906;
    v33 = "+[NPSDomainAccessorInternal writeDomain:toURL:]";
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v18;
    v23 = "%s: Failed to write to disk (%@) the domain (%@) with error: (%@).";
    v24 = v22;
    v25 = 42;
    goto LABEL_25;
  }

  v14 = v13;
  v15 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v33 = "+[NPSDomainAccessorInternal writeDomain:toURL:]";
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_1C0D93000, v15, OS_LOG_TYPE_DEFAULT, "%s: Failed to serialize domain (%@) with error: (%@). Not persisting it to disk (%@).", buf, 0x2Au);
  }

  v16 = v14;

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)filePresenterDidBecomeNonCurrent:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v10 = self;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "self: (%p); filePresenter: (%p)", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__NPSDomainAccessorInternal_filePresenterDidBecomeNonCurrent___block_invoke;
  block[3] = &unk_1E8129518;
  block[4] = self;
  dispatch_async(internalQueue, block);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __62__NPSDomainAccessorInternal_filePresenterDidBecomeNonCurrent___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) isCurrent];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _invalidatePresenter];
  }

  return result;
}

- (unint64_t)domainSize
{
  v2 = [(NSURL *)self->_domainURL absoluteString];
  v3 = [NPSPrefPlistSizeUtil sizeForPlistAtPath:v2];

  return v3;
}

- (BOOL)requiresDeviceUnlockedSinceBoot
{
  v2 = [(NSURL *)self->_domainURL absoluteString];
  v3 = [NPSPrefPlistProtectedUtil isPlistProtectedAtPath:v2];

  return v3;
}

- (void)_synchronizeReadOnly:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AF00];
  v2 = a1;
  v3 = [v1 callStackSymbols];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)readDomainURL:(os_log_t)log withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138543874;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 2112;
  v9 = &unk_1F403A6B0;
  _os_log_fault_impl(&dword_1C0D93000, log, OS_LOG_TYPE_FAULT, "Plist for %{public}@ is too large (%@) > (%@)", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)writeDomain:(void *)a3 toURL:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a3, "length")}];
  v9 = 138543874;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = &unk_1F403A6B0;
  _os_log_fault_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_FAULT, "Plist for %{public}@ is too large (%@) > (%@)", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

@end