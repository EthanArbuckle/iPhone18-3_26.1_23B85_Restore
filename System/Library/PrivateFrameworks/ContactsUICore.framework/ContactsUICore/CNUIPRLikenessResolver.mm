@interface CNUIPRLikenessResolver
+ (id)badgeCacheKeyForLikenessBadge:(id)badge;
+ (unint64_t)maxContacts;
- (CNContactStore)contactStore;
- (CNSchedulerProvider)schedulerProvider;
- (CNUIPRLikenessProvider)loadingPlaceholderLikeness;
- (CNUIPRLikenessResolver)initWithContactStore:(id)store scheduler:(id)scheduler;
- (CNUIPRLikenessResolver)initWithContactStore:(id)store scheduler:(id)scheduler meMonitor:(id)monitor;
- (CNUIPRLikenessResolver)initWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity;
- (CNUIPRLikenessResolver)initWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity schedulerProvider:(id)provider;
- (id)badgeObservableWithLikenessBadge:(id)badge workScheduler:(id)scheduler;
- (id)badgeWithLikenessBadge:(id)badge;
- (id)basicMonogramFromString:(id)string color:(id)color;
- (id)basicMonogramObservableFromString:(id)string color:(id)color;
- (id)likenessForContact:(id)contact error:(id *)error;
- (id)likenessForContact:(id)contact options:(id)options error:(id *)error;
- (id)likenessLookup;
- (id)likenessesForContact:(id)contact options:(id)options workScheduler:(id)scheduler;
- (id)likenessesForContacts:(id)contacts options:(id)options error:(id)error;
- (id)resolveLikenessesForContacts:(id)contacts workScheduler:(id)scheduler withContentHandler:(id)handler;
- (int64_t)prohibitedSources;
- (void)dealloc;
- (void)setPlaceholderProviderFactory:(id)factory;
- (void)setProhibitedSources:(int64_t)sources;
@end

@implementation CNUIPRLikenessResolver

- (CNContactStore)contactStore
{
  likenessLookup = [(CNUIPRLikenessResolver *)self likenessLookup];
  contactStore = [likenessLookup contactStore];

  return contactStore;
}

- (id)likenessLookup
{
  objc_opt_class();
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];
  if (objc_opt_isKindOfClass())
  {
    v4 = likenessResolver;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (unint64_t)maxContacts
{
  if (+[CNUISnowglobeUtilities enableGroupPhoto])
  {
    return 7;
  }

  else
  {
    return 2;
  }
}

- (CNUIPRLikenessResolver)initWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity
{
  v6 = MEMORY[0x1E6996820];
  resolverCopy = resolver;
  defaultProvider = [v6 defaultProvider];
  v9 = [(CNUIPRLikenessResolver *)self initWithLikenessResolver:resolverCopy capacity:capacity schedulerProvider:defaultProvider];

  return v9;
}

- (CNUIPRLikenessResolver)initWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity schedulerProvider:(id)provider
{
  v45[1] = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  providerCopy = provider;
  v44.receiver = self;
  v44.super_class = CNUIPRLikenessResolver;
  v11 = [(CNUIPRLikenessResolver *)&v44 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_likenessResolver, resolver);
    atomicCache = [MEMORY[0x1E6996660] atomicCache];
    workTrackingCache = v12->_workTrackingCache;
    v12->_workTrackingCache = atomicCache;

    v15 = objc_alloc_init(MEMORY[0x1E6996878]);
    lock = v12->_lock;
    v12->_lock = v15;

    v17 = objc_alloc(MEMORY[0x1E6996660]);
    v18 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:capacity];
    v45[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    atomicCacheScheduler = [MEMORY[0x1E6996660] atomicCacheScheduler];
    v21 = [v17 initWithBoundingStrategies:v19 resourceScheduler:atomicCacheScheduler];
    likenessProviderCache = v12->_likenessProviderCache;
    v12->_likenessProviderCache = v21;

    placeholderProviderFactory = [resolverCopy placeholderProviderFactory];
    placeholderProviderFactory = v12->_placeholderProviderFactory;
    v12->_placeholderProviderFactory = placeholderProviderFactory;

    mainThreadScheduler = [providerCopy mainThreadScheduler];
    v26 = [providerCopy newSynchronousSerialSchedulerWithName:@"com.apple.contacts.ContactsUICore._CNUIPRLikenessCachingResolver"];
    immediateScheduler = [providerCopy immediateScheduler];
    v28 = objc_alloc(MEMORY[0x1E6996820]);
    v41 = v26;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __78__CNUIPRLikenessResolver_initWithLikenessResolver_capacity_schedulerProvider___block_invoke;
    v42[3] = &unk_1E76E89B0;
    v43 = mainThreadScheduler;
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __78__CNUIPRLikenessResolver_initWithLikenessResolver_capacity_schedulerProvider___block_invoke_2;
    v40 = &unk_1E76E89B0;
    v29 = v26;
    v30 = mainThreadScheduler;
    v31 = [v28 initWithBackgroundScheduler:v30 mainThreadScheduler:v30 immediateScheduler:immediateScheduler serialSchedulerProvider:v42 synchronousSerialSchedulerProvider:&v37 readerWriterSchedulerProvider:&__block_literal_global_26];
    mainThreadSchedulerProvider = v12->_mainThreadSchedulerProvider;
    v12->_mainThreadSchedulerProvider = v31;

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    notificationCenter = [currentEnvironment notificationCenter];
    [notificationCenter addObserver:v12 selector:sel_databaseChanged_ name:*MEMORY[0x1E695C3D8] object:0];

    v35 = v12;
  }

  return v12;
}

id __78__CNUIPRLikenessResolver_initWithLikenessResolver_capacity_schedulerProvider___block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x1E69967F8]);

  return v0;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  notificationCenter = [currentEnvironment notificationCenter];
  [notificationCenter removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  workTrackingCache = [(CNUIPRLikenessResolver *)self workTrackingCache];
  allObjects = [workTrackingCache allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = CNUIPRLikenessResolver;
  [(CNUIPRLikenessResolver *)&v11 dealloc];
}

- (id)resolveLikenessesForContacts:(id)contacts workScheduler:(id)scheduler withContentHandler:(id)handler
{
  schedulerCopy = scheduler;
  handlerCopy = handler;
  contactsCopy = contacts;
  v11 = +[CNUICoreLogProvider likenesses_os_log];
  v12 = os_signpost_id_generate(v11);

  v13 = +[CNUICoreLogProvider likenesses_os_log];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A31E6000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Resolve Likeness", "", buf, 2u);
  }

  v15 = [contactsCopy _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __88__CNUIPRLikenessResolver_resolveLikenessesForContacts_workScheduler_withContentHandler___block_invoke;
  v32[3] = &unk_1E76E89F8;
  v32[4] = self;
  v33 = schedulerCopy;
  v16 = schedulerCopy;
  v17 = [v15 _cn_map:v32];

  v18 = MEMORY[0x1E6996798];
  mainThreadSchedulerProvider = [(CNUIPRLikenessResolver *)self mainThreadSchedulerProvider];
  v20 = [v18 combineLatest:v17 resultScheduler:v16 schedulerProvider:mainThreadSchedulerProvider];
  v21 = MEMORY[0x1E69967A0];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __88__CNUIPRLikenessResolver_resolveLikenessesForContacts_workScheduler_withContentHandler___block_invoke_2;
  v29 = &unk_1E76E8A20;
  v30 = handlerCopy;
  v31 = v12;
  v22 = handlerCopy;
  v23 = [v21 observerWithResultBlock:&v26];
  v24 = [v20 subscribe:{v23, v26, v27, v28, v29}];

  return v24;
}

void __88__CNUIPRLikenessResolver_resolveLikenessesForContacts_workScheduler_withContentHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CNUICoreLogProvider likenesses_os_log];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A31E6000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Resolve Likeness", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)likenessesForContact:(id)contact options:(id)options workScheduler:(id)scheduler
{
  contactCopy = contact;
  optionsCopy = options;
  schedulerCopy = scheduler;
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];

  if (likenessResolver)
  {
    v12 = [objc_opt_class() _cacheKeyForContact:contactCopy];
    v13 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessResolver likenessesForContact:options:workScheduler:];
    }

    v14 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessResolver likenessesForContact:options:workScheduler:];
    }

    likenessProviderCache = [(CNUIPRLikenessResolver *)self likenessProviderCache];
    v16 = [likenessProviderCache objectForKey:v12];

    if (v16)
    {
      emptyObservable = [MEMORY[0x1E6996798] observableWithResult:v16];
    }

    else
    {
      v35 = optionsCopy;
      v18 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CNUIPRLikenessResolver likenessesForContact:options:workScheduler:];
      }

      mainThreadSchedulerProvider = [(CNUIPRLikenessResolver *)self mainThreadSchedulerProvider];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v33 = mainThreadSchedulerProvider;
      v20 = [(CNReplaySubject *)[CNUIPRLikenessResolverReplaySubject alloc] initWithCapacity:1 schedulerProvider:mainThreadSchedulerProvider];
      loadingPlaceholderLikeness = [(CNUIPRLikenessResolver *)self loadingPlaceholderLikeness];
      [(CNReplaySubject *)v20 observerDidReceiveResult:?];
      v21 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [CNUIPRLikenessResolver likenessesForContact:options:workScheduler:];
      }

      likenessProviderCache2 = [(CNUIPRLikenessResolver *)self likenessProviderCache];
      workTrackingCache = [(CNUIPRLikenessResolver *)self workTrackingCache];
      lock = [(CNUIPRLikenessResolver *)self lock];
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v50 = 0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke;
      v39[3] = &unk_1E76E8A70;
      v39[4] = self;
      v40 = contactCopy;
      v41 = v35;
      v25 = v20;
      v42 = v25;
      v31 = likenessProviderCache2;
      v43 = v31;
      v44 = v12;
      v26 = lock;
      v45 = v26;
      v27 = workTrackingCache;
      v46 = v27;
      v28 = uUID;
      v47 = v28;
      v48 = v49;
      v29 = [schedulerCopy performCancelableBlock:v39];
      v36 = v27;
      v37 = v28;
      v38 = v29;
      CNRunWithLock();
      emptyObservable = v25;

      _Block_object_dispose(v49, 8);
      optionsCopy = v35;
    }
  }

  else
  {
    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  return emptyObservable;
}

void __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) likenessResolver];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11 = 0;
  v5 = [v2 likenessForContact:v3 options:v4 error:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke_cold_1();
    }

    [*(a1 + 56) observerDidReceiveResult:v5];
    [*(a1 + 56) observerDidComplete];
    [*(a1 + 64) setObject:v5 forKeyedSubscript:*(a1 + 72)];
  }

  else if (v6)
  {
    v8 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke_cold_2();
    }
  }

  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  CNRunWithLock();
}

uint64_t __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke_39(uint64_t a1)
{
  result = [*(a1 + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

uint64_t __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    return [*(result + 32) setObject:*(result + 48) forKeyedSubscript:*(result + 40)];
  }

  return result;
}

- (id)basicMonogramObservableFromString:(id)string color:(id)color
{
  colorCopy = color;
  stringCopy = string;
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];
  v9 = [likenessResolver basicMonogramObservableFromString:stringCopy color:colorCopy];

  return v9;
}

- (id)badgeObservableWithLikenessBadge:(id)badge workScheduler:(id)scheduler
{
  badgeCopy = badge;
  schedulerCopy = scheduler;
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];

  if (likenessResolver)
  {
    v9 = [objc_opt_class() badgeCacheKeyForLikenessBadge:badgeCopy];
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessResolver badgeObservableWithLikenessBadge:workScheduler:];
    }

    v11 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessResolver badgeObservableWithLikenessBadge:workScheduler:];
    }

    likenessProviderCache = [(CNUIPRLikenessResolver *)self likenessProviderCache];
    v13 = [likenessProviderCache objectForKey:v9];

    if (v13)
    {
      emptyObservable = [MEMORY[0x1E6996798] observableWithResult:v13];
    }

    else
    {
      v15 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CNUIPRLikenessResolver badgeObservableWithLikenessBadge:workScheduler:];
      }

      mainThreadSchedulerProvider = [(CNUIPRLikenessResolver *)self mainThreadSchedulerProvider];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v30 = mainThreadSchedulerProvider;
      v17 = [(CNReplaySubject *)[CNUIPRLikenessResolverReplaySubject alloc] initWithCapacity:1 schedulerProvider:mainThreadSchedulerProvider];
      loadingPlaceholderLikeness = [(CNUIPRLikenessResolver *)self loadingPlaceholderLikeness];
      [(CNReplaySubject *)v17 observerDidReceiveResult:?];
      v18 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CNUIPRLikenessResolver likenessesForContact:options:workScheduler:];
      }

      likenessProviderCache2 = [(CNUIPRLikenessResolver *)self likenessProviderCache];
      workTrackingCache = [(CNUIPRLikenessResolver *)self workTrackingCache];
      lock = [(CNUIPRLikenessResolver *)self lock];
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x2020000000;
      v45 = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __73__CNUIPRLikenessResolver_badgeObservableWithLikenessBadge_workScheduler___block_invoke;
      v35[3] = &unk_1E76E8AC0;
      v35[4] = self;
      v36 = badgeCopy;
      v37 = v9;
      v22 = v17;
      v38 = v22;
      v28 = likenessProviderCache2;
      v39 = v28;
      v23 = lock;
      v40 = v23;
      v24 = workTrackingCache;
      v41 = v24;
      v25 = uUID;
      v42 = v25;
      v43 = v44;
      v26 = [schedulerCopy performCancelableBlock:v35];
      v32 = v24;
      v33 = v25;
      v34 = v26;
      CNRunWithLock();
      emptyObservable = v22;

      _Block_object_dispose(v44, 8);
    }
  }

  else
  {
    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  return emptyObservable;
}

void __73__CNUIPRLikenessResolver_badgeObservableWithLikenessBadge_workScheduler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) likenessResolver];
  v3 = [v2 badgeWithLikenessBadge:*(a1 + 40)];

  v4 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __73__CNUIPRLikenessResolver_badgeObservableWithLikenessBadge_workScheduler___block_invoke_cold_1();
  }

  [*(a1 + 56) observerDidReceiveResult:v3];
  [*(a1 + 64) setObject:v3 forKeyedSubscript:*(a1 + 48)];
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  CNRunWithLock();
}

uint64_t __73__CNUIPRLikenessResolver_badgeObservableWithLikenessBadge_workScheduler___block_invoke_43(uint64_t a1)
{
  result = [*(a1 + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

uint64_t __73__CNUIPRLikenessResolver_badgeObservableWithLikenessBadge_workScheduler___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    return [*(result + 32) setObject:*(result + 48) forKeyedSubscript:*(result + 40)];
  }

  return result;
}

+ (id)badgeCacheKeyForLikenessBadge:(id)badge
{
  v3 = MEMORY[0x1E696AEC0];
  imageData = [badge imageData];
  _cn_md5Hash = [imageData _cn_md5Hash];
  _cn_hexString = [_cn_md5Hash _cn_hexString];
  v7 = [v3 stringWithFormat:@"Badge-%@", _cn_hexString];

  return v7;
}

- (id)badgeWithLikenessBadge:(id)badge
{
  badgeCopy = badge;
  v5 = [objc_opt_class() badgeCacheKeyForLikenessBadge:badgeCopy];
  v6 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNUIPRLikenessResolver badgeWithLikenessBadge:];
  }

  v7 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CNUIPRLikenessResolver badgeObservableWithLikenessBadge:workScheduler:];
  }

  likenessProviderCache = [(CNUIPRLikenessResolver *)self likenessProviderCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__CNUIPRLikenessResolver_badgeWithLikenessBadge___block_invoke;
  v13[3] = &unk_1E76E8AE8;
  v14 = v5;
  selfCopy = self;
  v16 = badgeCopy;
  v9 = badgeCopy;
  v10 = v5;
  v11 = [likenessProviderCache objectForKey:v10 onCacheMiss:v13];

  return v11;
}

id __49__CNUIPRLikenessResolver_badgeWithLikenessBadge___block_invoke(uint64_t a1)
{
  v2 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__CNUIPRLikenessResolver_badgeWithLikenessBadge___block_invoke_cold_1();
  }

  v3 = [*(a1 + 40) likenessResolver];
  v4 = [v3 badgeWithLikenessBadge:*(a1 + 48)];

  return v4;
}

- (id)basicMonogramFromString:(id)string color:(id)color
{
  colorCopy = color;
  stringCopy = string;
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];
  v9 = [likenessResolver basicMonogramFromString:stringCopy color:colorCopy];

  return v9;
}

- (id)likenessForContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];
  v8 = [likenessResolver likenessForContact:contactCopy options:0 error:error];

  return v8;
}

- (id)likenessForContact:(id)contact options:(id)options error:(id *)error
{
  contactCopy = contact;
  optionsCopy = options;
  v10 = [objc_opt_class() _cacheKeyForContact:contactCopy];
  v11 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CNUIPRLikenessResolver likenessForContact:options:error:];
  }

  v12 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CNUIPRLikenessResolver likenessesForContact:options:workScheduler:];
  }

  likenessProviderCache = [(CNUIPRLikenessResolver *)self likenessProviderCache];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__CNUIPRLikenessResolver_likenessForContact_options_error___block_invoke;
  v19[3] = &unk_1E76E8B10;
  v20 = v10;
  selfCopy = self;
  v22 = contactCopy;
  v23 = optionsCopy;
  errorCopy = error;
  v14 = optionsCopy;
  v15 = contactCopy;
  v16 = v10;
  v17 = [likenessProviderCache objectForKey:v16 onCacheMiss:v19];

  return v17;
}

id __59__CNUIPRLikenessResolver_likenessForContact_options_error___block_invoke(uint64_t a1)
{
  v2 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__CNUIPRLikenessResolver_likenessForContact_options_error___block_invoke_cold_1();
  }

  v3 = [*(a1 + 40) likenessResolver];
  v4 = [v3 likenessForContact:*(a1 + 48) options:*(a1 + 56) error:*(a1 + 64)];

  return v4;
}

- (id)likenessesForContacts:(id)contacts options:(id)options error:(id)error
{
  optionsCopy = options;
  contactsCopy = contacts;
  v9 = [contactsCopy _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNUIPRLikenessResolver_likenessesForContacts_options_error___block_invoke;
  v13[3] = &unk_1E76E89F8;
  v13[4] = self;
  v14 = optionsCopy;
  v10 = optionsCopy;
  v11 = [v9 _cn_map:v13];

  return v11;
}

- (CNUIPRLikenessProvider)loadingPlaceholderLikeness
{
  likenessResolver = [(CNUIPRLikenessResolver *)self likenessResolver];
  loadingPlaceholderLikeness = [likenessResolver loadingPlaceholderLikeness];

  return loadingPlaceholderLikeness;
}

- (void)setProhibitedSources:(int64_t)sources
{
  likenessLookup = [(CNUIPRLikenessResolver *)self likenessLookup];
  [likenessLookup setProhibitedSources:sources];
}

- (int64_t)prohibitedSources
{
  likenessLookup = [(CNUIPRLikenessResolver *)self likenessLookup];
  prohibitedSources = [likenessLookup prohibitedSources];

  return prohibitedSources;
}

- (void)setPlaceholderProviderFactory:(id)factory
{
  objc_storeStrong(&self->_placeholderProviderFactory, factory);
  factoryCopy = factory;
  likenessLookup = [(CNUIPRLikenessResolver *)self likenessLookup];
  [likenessLookup setPlaceholderProviderFactory:factoryCopy];
}

- (CNSchedulerProvider)schedulerProvider
{
  likenessLookup = [(CNUIPRLikenessResolver *)self likenessLookup];
  schedulerProvider = [likenessLookup schedulerProvider];

  return schedulerProvider;
}

- (CNUIPRLikenessResolver)initWithContactStore:(id)store scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  storeCopy = store;
  v8 = [[CNUIPRLikenessLookup alloc] initWithContactStore:storeCopy scheduler:schedulerCopy];

  v9 = [(CNUIPRLikenessResolver *)self initWithLikenessResolver:v8];
  return v9;
}

- (CNUIPRLikenessResolver)initWithContactStore:(id)store scheduler:(id)scheduler meMonitor:(id)monitor
{
  monitorCopy = monitor;
  schedulerCopy = scheduler;
  storeCopy = store;
  v11 = [[CNUIPRLikenessLookup alloc] initWithContactStore:storeCopy scheduler:schedulerCopy meMonitor:monitorCopy];

  v12 = [(CNUIPRLikenessResolver *)self initWithLikenessResolver:v11];
  return v12;
}

- (void)likenessesForContact:options:workScheduler:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__CNUIPRLikenessResolver_likenessesForContact_options_workScheduler___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1A31E6000, v0, OS_LOG_TYPE_ERROR, "[LikenessCache] Error in fetching new image: %@", v1, 0xCu);
}

- (void)badgeObservableWithLikenessBadge:workScheduler:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)badgeWithLikenessBadge:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end