@interface EMCachingContactStore
+ (OS_os_log)signpostLog;
+ (id)log;
- (BOOL)contactExistsForEmailAddress:(id)a3;
- (EMCachingContactStore)initWithOptions:(unint64_t)a3 cacheFuture:(id)a4;
- (EMCachingContactStore)initWithStore:(id)a3 options:(unint64_t)a4 cacheFuture:(id)a5;
- (id)_fetchDisplayNameForEmailAddress:(id)a3 abbreviated:(BOOL)a4;
- (id)displayNameForEmailAddress:(id)a3;
- (id)displayNameForEmailAddress:(id)a3 abbreviated:(BOOL)a4;
- (id)emailAddressCacheFinishedFuture;
- (id)initForTestingWithStore:(id)a3 options:(unint64_t)a4 cacheFuture:(id)a5 scheduler:(id)a6;
- (id)initForTestingWithStore:(id)a3 options:(unint64_t)a4 emailAddressCache:(id)a5;
- (unint64_t)signpostID;
- (void)_commonInitWithStore:(id)a3 options:(unint64_t)a4 emailAddressCache:(id)a5 cacheFuture:(id)a6 scheduler:(id)a7;
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
  block[4] = a1;
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
  block[4] = a1;
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
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (EMCachingContactStore)initWithOptions:(unint64_t)a3 cacheFuture:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v8 = [(EMCachingContactStore *)self initWithStore:v7 options:a3 cacheFuture:v6];

  return v8;
}

- (EMCachingContactStore)initWithStore:(id)a3 options:(unint64_t)a4 cacheFuture:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = EMCachingContactStore;
  v10 = [(EMCachingContactStore *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(EMCachingContactStore *)v10 _commonInitWithStore:v8 options:a4 emailAddressCache:0 cacheFuture:v9];
  }

  return v11;
}

- (id)initForTestingWithStore:(id)a3 options:(unint64_t)a4 emailAddressCache:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = EMCachingContactStore;
  v10 = [(EMCachingContactStore *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(EMCachingContactStore *)v10 _commonInitWithStore:v8 options:a4 emailAddressCache:v9 cacheFuture:0];
  }

  return v11;
}

- (id)initForTestingWithStore:(id)a3 options:(unint64_t)a4 cacheFuture:(id)a5 scheduler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = EMCachingContactStore;
  v13 = [(EMCachingContactStore *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(EMCachingContactStore *)v13 _commonInitWithStore:v10 options:a4 emailAddressCache:0 cacheFuture:v11 scheduler:v12];
  }

  return v14;
}

- (void)_commonInitWithStore:(id)a3 options:(unint64_t)a4 emailAddressCache:(id)a5 cacheFuture:(id)a6 scheduler:(id)a7
{
  v35 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_storeStrong(&self->_cnStore, a3);
  self->_options = a4;
  if (a4)
  {
    v16 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:100];
    displayNameCache = self->_displayNameCache;
    self->_displayNameCache = v16;

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:self selector:sel__invalidateDisplayNameCache name:*MEMORY[0x1E695C3D8] object:0];
  }

  if ((a4 & 2) != 0)
  {
    if (v14)
    {
      v19 = v14;
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

    v24 = [MEMORY[0x1E699B868] promise];
    emailAddressCacheFinished = self->_emailAddressCacheFinished;
    self->_emailAddressCacheFinished = v24;

    if (v15)
    {
      v26 = v15;
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

    if (v13)
    {
      v31 = [MEMORY[0x1E699B7C8] futureWithResult:v13];
      [(EMCachingContactStore *)self setEmailAddressCacheFuture:v31];

      v32 = [(EMCachingContactStore *)self emailAddressCacheFinished];
      v33 = [MEMORY[0x1E695DFB0] null];
      [v32 finishWithResult:v33];
    }

    else
    {
      [(EMCachingContactStore *)self _scheduleEmailAddressCachePopulation];
    }

    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 addObserver:self selector:sel__invalidateEmailAddressCache name:*MEMORY[0x1E695C3D8] object:0];
  }
}

- (id)displayNameForEmailAddress:(id)a3
{
  v3 = [(EMCachingContactStore *)self displayNameForEmailAddress:a3 abbreviated:0];

  return v3;
}

- (id)displayNameForEmailAddress:(id)a3 abbreviated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if (v4)
    {
      v7 = @"short:";
    }

    else
    {
      v7 = @"full:";
    }

    v8 = [(__CFString *)v7 stringByAppendingString:v6];
    v9 = [(EMCachingContactStore *)self displayNameCache];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__EMCachingContactStore_displayNameForEmailAddress_abbreviated___block_invoke;
    v12[3] = &unk_1E826C4A0;
    v12[4] = self;
    v13 = v6;
    v14 = v4;
    v10 = [v9 objectForKey:v8 generator:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchDisplayNameForEmailAddress:(id)a3 abbreviated:(BOOL)a4
{
  v4 = a4;
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    v7 = 1000;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(EMCachingContactStore *)self emailAddressCacheFuture];
  v9 = [v8 resultIfAvailable];
  if (v9)
  {
    v10 = [(EMCachingContactStore *)self contactExistsForEmailAddress:v6];

    if (!v10)
    {
      v11 = [v6 emailAddressValue];
      v12 = v11;
      if (v11)
      {
        v13 = MEMORY[0x1E695CD58];
        v14 = [v11 displayName];
        v15 = [v14 ec_personNameComponents];
        v16 = [v12 simpleAddress];
        v17 = [v13 em_contactWithPersonNameComponents:v15 emailAddress:v16 emailAddressLabel:0 allowInvalidEmailAddress:1];
      }

      else
      {
        v22 = [v6 stringValue];
        v14 = v22;
        if (!v22)
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
        v15 = [v22 ea_addressCommentPersonNameComponents];
        v17 = [v23 em_contactWithPersonNameComponents:v15 emailAddress:v14 emailAddressLabel:0 allowInvalidEmailAddress:1];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v18 = [(EMCachingContactStore *)self cnStore];
  v19 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:v7];
  v31[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v17 = [v18 em_fetchContactForEmailAddress:v6 keysToFetch:v20 createIfNeeded:1];

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_15:
  v21 = 0;
LABEL_16:
  if (![v21 length])
  {
    v24 = [v6 ea_addressComment];

    v21 = v24;
  }

  if (v21 == v6)
  {
    v25 = [v6 ea_uncommentedAddress];

    v21 = v25;
  }

  if ([v21 isEqualToString:@"Hide My Email"])
  {
    v26 = [v6 ea_uncommentedAddress];
    v27 = [v26 hasSuffix:@"icloud.com"];

    if (v27)
    {
      v28 = _EFLocalizedString();

      v21 = v28;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)contactExistsForEmailAddress:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMCachingContactStore *)self options];
  v6 = [(EMCachingContactStore *)self emailAddressCacheFuture];
  v20 = 0;
  v7 = [v6 resultIfAvailable:&v20];
  v8 = v20;

  if (v7)
  {
    v9 = v4;
    v10 = [v9 emailAddressValue];
    v11 = [v10 simpleAddress];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v9 stringValue];
    }

    v14 = v13;

    v17 = [v7 containsObject:v14];
  }

  else
  {
    if (!v8 && (v5 & 2) != 0)
    {
      [(EMCachingContactStore *)self _scheduleEmailAddressCachePopulation];
    }

    v14 = [(EMCachingContactStore *)self cnStore];
    v21[0] = *MEMORY[0x1E695C258];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v16 = [v14 em_fetchContactForEmailAddress:v4 keysToFetch:v15 createIfNeeded:0];
    v17 = v16 != 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)emailAddressCacheFinishedFuture
{
  v2 = [(EMCachingContactStore *)self emailAddressCacheFinished];
  v3 = [v2 future];

  return v3;
}

- (void)_invalidateDisplayNameCache
{
  v2 = [(EMCachingContactStore *)self displayNameCache];
  [v2 removeAllObjects];
}

- (void)_invalidateEmailAddressCache
{
  v3 = [(EMCachingContactStore *)self addressCacheScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__EMCachingContactStore__invalidateEmailAddressCache__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [v3 performBlock:v4];
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
  v3 = [(EMCachingContactStore *)self cacheCanStartFuture];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__EMCachingContactStore__scheduleEmailAddressCachePopulation__block_invoke;
  v4[3] = &unk_1E826C4C8;
  objc_copyWeak(&v5, &location);
  [v3 addSuccessBlock:v4];

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

  v5 = [(EMCachingContactStore *)self addressCacheScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__EMCachingContactStore__scheduleEmailAddressCachePopulationImpl__block_invoke;
  v7[3] = &unk_1E826C4F0;
  v7[4] = self;
  v7[5] = v3;
  [v5 performBlock:v7];

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