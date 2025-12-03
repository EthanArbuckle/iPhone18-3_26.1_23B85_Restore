@interface EMCachingContactStore
+ (OS_os_log)signpostLog;
+ (id)log;
- (BOOL)contactExistsForEmailAddress:(id)address;
- (EMCachingContactStore)initWithOptions:(unint64_t)options cacheFuture:(id)future;
- (EMCachingContactStore)initWithStore:(id)store options:(unint64_t)options cacheFuture:(id)future;
- (id)_fetchDisplayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)displayNameForEmailAddress:(id)address;
- (id)displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)emailAddressCacheFinishedFuture;
- (id)initForTestingWithStore:(id)store options:(unint64_t)options cacheFuture:(id)future scheduler:(id)scheduler;
- (id)initForTestingWithStore:(id)store options:(unint64_t)options emailAddressCache:(id)cache;
- (unint64_t)signpostID;
- (void)_commonInitWithStore:(id)store options:(unint64_t)options emailAddressCache:(id)cache cacheFuture:(id)future scheduler:(id)scheduler;
- (void)_invalidateDisplayNameCache;
- (void)_invalidateEmailAddressCache;
- (void)_scheduleEmailAddressCachePopulation;
- (void)_scheduleEmailAddressCachePopulationImpl;
@end

@implementation EMCachingContactStore

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EMCachingContactStore_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __28__EMCachingContactStore_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_5;
  log_log_5 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EMCachingContactStore_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __36__EMCachingContactStore_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log;
  signpostLog_log = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EMCachingContactStore)initWithOptions:(unint64_t)options cacheFuture:(id)future
{
  futureCopy = future;
  v7 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v8 = [(EMCachingContactStore *)self initWithStore:v7 options:options cacheFuture:futureCopy];

  return v8;
}

- (EMCachingContactStore)initWithStore:(id)store options:(unint64_t)options cacheFuture:(id)future
{
  storeCopy = store;
  futureCopy = future;
  v13.receiver = self;
  v13.super_class = EMCachingContactStore;
  v10 = [(EMCachingContactStore *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(EMCachingContactStore *)v10 _commonInitWithStore:storeCopy options:options emailAddressCache:0 cacheFuture:futureCopy];
  }

  return v11;
}

- (id)initForTestingWithStore:(id)store options:(unint64_t)options emailAddressCache:(id)cache
{
  storeCopy = store;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = EMCachingContactStore;
  v10 = [(EMCachingContactStore *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(EMCachingContactStore *)v10 _commonInitWithStore:storeCopy options:options emailAddressCache:cacheCopy cacheFuture:0];
  }

  return v11;
}

- (id)initForTestingWithStore:(id)store options:(unint64_t)options cacheFuture:(id)future scheduler:(id)scheduler
{
  storeCopy = store;
  futureCopy = future;
  schedulerCopy = scheduler;
  v16.receiver = self;
  v16.super_class = EMCachingContactStore;
  v13 = [(EMCachingContactStore *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(EMCachingContactStore *)v13 _commonInitWithStore:storeCopy options:options emailAddressCache:0 cacheFuture:futureCopy scheduler:schedulerCopy];
  }

  return v14;
}

- (void)_commonInitWithStore:(id)store options:(unint64_t)options emailAddressCache:(id)cache cacheFuture:(id)future scheduler:(id)scheduler
{
  storeCopy = store;
  cacheCopy = cache;
  futureCopy = future;
  schedulerCopy = scheduler;
  objc_storeStrong(&self->_cnStore, store);
  self->_options = options;
  if (options)
  {
    v16 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:100];
    displayNameCache = self->_displayNameCache;
    self->_displayNameCache = v16;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__invalidateDisplayNameCache name:*MEMORY[0x1E695C3D8] object:0];
  }

  if ((options & 2) != 0)
  {
    if (futureCopy)
    {
      v19 = futureCopy;
      cacheCanStartFuture = self->_cacheCanStartFuture;
      self->_cacheCanStartFuture = v19;
    }

    else
    {
      v21 = MEMORY[0x1E699B7C8];
      cacheCanStartFuture = [MEMORY[0x1E695DFB0] null];
      v22 = [v21 futureWithResult:cacheCanStartFuture];
      v23 = self->_cacheCanStartFuture;
      self->_cacheCanStartFuture = v22;
    }

    promise = [MEMORY[0x1E699B868] promise];
    emailAddressCacheFinished = self->_emailAddressCacheFinished;
    self->_emailAddressCacheFinished = promise;

    if (schedulerCopy)
    {
      v26 = schedulerCopy;
      addressCacheScheduler = self->_addressCacheScheduler;
      self->_addressCacheScheduler = v26;
    }

    else
    {
      v28 = MEMORY[0x1E699B978];
      addressCacheScheduler = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.%p", objc_opt_class(), self];
      v29 = [v28 serialDispatchQueueSchedulerWithName:addressCacheScheduler qualityOfService:17];
      v30 = self->_addressCacheScheduler;
      self->_addressCacheScheduler = v29;
    }

    if (cacheCopy)
    {
      v31 = [MEMORY[0x1E699B7C8] futureWithResult:cacheCopy];
      [(EMCachingContactStore *)self setEmailAddressCacheFuture:v31];

      emailAddressCacheFinished = [(EMCachingContactStore *)self emailAddressCacheFinished];
      null = [MEMORY[0x1E695DFB0] null];
      [emailAddressCacheFinished finishWithResult:null];
    }

    else
    {
      [(EMCachingContactStore *)self _scheduleEmailAddressCachePopulation];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__invalidateEmailAddressCache name:*MEMORY[0x1E695C3D8] object:0];
  }
}

- (id)displayNameForEmailAddress:(id)address
{
  v3 = [(EMCachingContactStore *)self displayNameForEmailAddress:address abbreviated:0];

  return v3;
}

- (id)displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  addressCopy = address;
  if (addressCopy)
  {
    if (abbreviatedCopy)
    {
      v7 = @"short:";
    }

    else
    {
      v7 = @"full:";
    }

    v8 = [(__CFString *)v7 stringByAppendingString:addressCopy];
    displayNameCache = [(EMCachingContactStore *)self displayNameCache];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__EMCachingContactStore_displayNameForEmailAddress_abbreviated___block_invoke;
    v12[3] = &unk_1E826C4A0;
    v12[4] = self;
    v13 = addressCopy;
    v14 = abbreviatedCopy;
    v10 = [displayNameCache objectForKey:v8 generator:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchDisplayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  v31[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (abbreviatedCopy)
  {
    v7 = 1000;
  }

  else
  {
    v7 = 0;
  }

  emailAddressCacheFuture = [(EMCachingContactStore *)self emailAddressCacheFuture];
  resultIfAvailable = [emailAddressCacheFuture resultIfAvailable];
  if (resultIfAvailable)
  {
    v10 = [(EMCachingContactStore *)self contactExistsForEmailAddress:addressCopy];

    if (!v10)
    {
      emailAddressValue = [addressCopy emailAddressValue];
      v12 = emailAddressValue;
      if (emailAddressValue)
      {
        v13 = MEMORY[0x1E695CD58];
        displayName = [emailAddressValue displayName];
        ec_personNameComponents = [displayName ec_personNameComponents];
        simpleAddress = [v12 simpleAddress];
        v17 = [v13 em_contactWithPersonNameComponents:ec_personNameComponents emailAddress:simpleAddress emailAddressLabel:0 allowInvalidEmailAddress:1];
      }

      else
      {
        stringValue = [addressCopy stringValue];
        displayName = stringValue;
        if (!stringValue)
        {
          v17 = 0;
LABEL_14:

          if (!v17)
          {
            goto LABEL_15;
          }

LABEL_10:
          v21 = [MEMORY[0x1E695CD80] stringFromContact:v17 style:v7];
          goto LABEL_16;
        }

        v23 = MEMORY[0x1E695CD58];
        ec_personNameComponents = [stringValue ea_addressCommentPersonNameComponents];
        v17 = [v23 em_contactWithPersonNameComponents:ec_personNameComponents emailAddress:displayName emailAddressLabel:0 allowInvalidEmailAddress:1];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  cnStore = [(EMCachingContactStore *)self cnStore];
  v19 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:v7];
  v31[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v17 = [cnStore em_fetchContactForEmailAddress:addressCopy keysToFetch:v20 createIfNeeded:1];

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_15:
  v21 = 0;
LABEL_16:
  if (![v21 length])
  {
    ea_addressComment = [addressCopy ea_addressComment];

    v21 = ea_addressComment;
  }

  if (v21 == addressCopy)
  {
    ea_uncommentedAddress = [addressCopy ea_uncommentedAddress];

    v21 = ea_uncommentedAddress;
  }

  if ([v21 isEqualToString:@"Hide My Email"])
  {
    ea_uncommentedAddress2 = [addressCopy ea_uncommentedAddress];
    v27 = [ea_uncommentedAddress2 hasSuffix:@"icloud.com"];

    if (v27)
    {
      v28 = _EFLocalizedString();

      v21 = v28;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)contactExistsForEmailAddress:(id)address
{
  v21[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  options = [(EMCachingContactStore *)self options];
  emailAddressCacheFuture = [(EMCachingContactStore *)self emailAddressCacheFuture];
  v20 = 0;
  v7 = [emailAddressCacheFuture resultIfAvailable:&v20];
  v8 = v20;

  if (v7)
  {
    v9 = addressCopy;
    emailAddressValue = [v9 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v12 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [v9 stringValue];
    }

    cnStore = stringValue;

    v17 = [v7 containsObject:cnStore];
  }

  else
  {
    if (!v8 && (options & 2) != 0)
    {
      [(EMCachingContactStore *)self _scheduleEmailAddressCachePopulation];
    }

    cnStore = [(EMCachingContactStore *)self cnStore];
    v21[0] = *MEMORY[0x1E695C258];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v16 = [cnStore em_fetchContactForEmailAddress:addressCopy keysToFetch:v15 createIfNeeded:0];
    v17 = v16 != 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)emailAddressCacheFinishedFuture
{
  emailAddressCacheFinished = [(EMCachingContactStore *)self emailAddressCacheFinished];
  future = [emailAddressCacheFinished future];

  return future;
}

- (void)_invalidateDisplayNameCache
{
  displayNameCache = [(EMCachingContactStore *)self displayNameCache];
  [displayNameCache removeAllObjects];
}

- (void)_invalidateEmailAddressCache
{
  addressCacheScheduler = [(EMCachingContactStore *)self addressCacheScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__EMCachingContactStore__invalidateEmailAddressCache__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [addressCacheScheduler performBlock:v4];
}

void __53__EMCachingContactStore__invalidateEmailAddressCache__block_invoke(uint64_t a1)
{
  v2 = +[EMCachingContactStore log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "[Email Address Cache] Invalidating cache", v4, 2u);
  }

  [*(a1 + 32) setEmailAddressCacheFuture:0];
  v3 = [MEMORY[0x1E699B868] promise];
  [*(a1 + 32) setEmailAddressCacheFinished:v3];
}

- (void)_scheduleEmailAddressCachePopulation
{
  objc_initWeak(&location, self);
  cacheCanStartFuture = [(EMCachingContactStore *)self cacheCanStartFuture];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__EMCachingContactStore__scheduleEmailAddressCachePopulation__block_invoke;
  v4[3] = &unk_1E826C4C8;
  objc_copyWeak(&v5, &location);
  [cacheCanStartFuture addSuccessBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__EMCachingContactStore__scheduleEmailAddressCachePopulation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleEmailAddressCachePopulationImpl];
}

- (void)_scheduleEmailAddressCachePopulationImpl
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _scheduleEmailAddressCachePopulationImpl_cacheRequestCount++;
  v4 = +[EMCachingContactStore log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "[Email Address Cache] %lld: Scheduling cache population", buf, 0xCu);
  }

  addressCacheScheduler = [(EMCachingContactStore *)self addressCacheScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__EMCachingContactStore__scheduleEmailAddressCachePopulationImpl__block_invoke;
  v7[3] = &unk_1E826C4F0;
  v7[4] = self;
  v7[5] = v3;
  [addressCacheScheduler performBlock:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __65__EMCachingContactStore__scheduleEmailAddressCachePopulationImpl__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B868] promise];
  v3 = [*(a1 + 32) emailAddressCacheFuture];
  v4 = [v3 resultIfAvailable];

  if (v4)
  {
    v5 = +[EMCachingContactStore log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 134217984;
      v27 = v6;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "[Email Address Cache] %lld: Population request already fulfilled", buf, 0xCu);
    }
  }

  else
  {
    v7 = [v2 future];
    [*(a1 + 32) setEmailAddressCacheFuture:v7];

    v8 = +[EMCachingContactStore signpostLog];
    v9 = os_signpost_id_make_with_pointer(v8, [MEMORY[0x1E696AD98] numberWithInteger:_scheduleEmailAddressCachePopulationImpl_cacheRequestCount]);

    v10 = +[EMCachingContactStore signpostLog];
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Begin populating email address cache", byte_1C6760DBE, buf, 2u);
    }

    v12 = [*(a1 + 32) cnStore];
    v25 = 0;
    v13 = [v12 allContactEmailAddressesWithError:&v25];
    v5 = v25;

    v14 = +[EMCachingContactStore signpostLog];
    v15 = v14;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v15, OS_SIGNPOST_INTERVAL_END, v9, "Finish populating email address cache", byte_1C6760DBE, buf, 2u);
    }

    if (v5)
    {
      v16 = +[EMCachingContactStore log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        v18 = [v5 ef_publicDescription];
        __65__EMCachingContactStore__scheduleEmailAddressCachePopulationImpl__block_invoke_cold_1(v18, buf, v17, v16);
      }

      [v2 finishWithError:v5];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
      [v2 finishWithResult:v19];

      v20 = [*(a1 + 32) emailAddressCacheFinished];
      v21 = [MEMORY[0x1E695DFB0] null];
      [v20 finishWithResult:v21];

      v22 = +[EMCachingContactStore log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        *buf = 134217984;
        v27 = v23;
        _os_log_impl(&dword_1C6655000, v22, OS_LOG_TYPE_DEFAULT, "[Email Address Cache] %lld: Population request finished", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __65__EMCachingContactStore__scheduleEmailAddressCachePopulationImpl__block_invoke_cold_1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "[Email Address Cache] %lld: Population request failed: %{public}@", buf, 0x16u);
}

@end