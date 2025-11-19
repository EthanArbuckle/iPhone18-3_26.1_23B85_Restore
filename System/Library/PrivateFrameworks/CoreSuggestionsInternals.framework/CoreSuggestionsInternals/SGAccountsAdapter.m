@interface SGAccountsAdapter
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (SGAccountsAdapter)sharedInstance;
- (BOOL)hasCalendarAccount:(id)a3;
- (BOOL)readCachedAccounts;
- (SGAccountsAdapter)init;
- (id)primaryICloudCalendarAccount;
- (id)serverIdentifierForAccount:(id)a3;
- (void)accountsStoreDidChange:(id)a3;
- (void)cancelUpdateTimer;
- (void)dealloc;
- (void)refreshCacheFromAccountsService;
- (void)registerNotificationObserver;
- (void)removeNotificationObserver;
- (void)setCachedAccounts;
- (void)setUpdateTimerWithDelaySeconds:(unint64_t)a3;
@end

@implementation SGAccountsAdapter

+ (SGAccountsAdapter)sharedInstance
{
  if (sharedInstance__pasOnceToken2_6733 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_6733, &__block_literal_global_6734);
  }

  v3 = sharedInstance__pasExprOnceResult_6735;

  return v3;
}

- (id)primaryICloudCalendarAccount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedPrimaryICloudAccount;
  objc_sync_exit(v2);

  return v3;
}

- (id)serverIdentifierForAccount:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ACAccountStore *)v5->_accountStore accountWithIdentifier:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 parentAccount];
    if (v8)
    {
      v9 = [v7 parentAccount];
      v10 = [v9 accountType];
      v11 = [v10 identifier];
      v12 = *MEMORY[0x277CB8BA0];
      v13 = [v11 isEqualToString:*MEMORY[0x277CB8BA0]];

      if (v13)
      {
        v14 = v12;
LABEL_7:
        v19 = v14;
        goto LABEL_13;
      }
    }

    v15 = [v7 accountType];
    v16 = [v15 identifier];
    v17 = *MEMORY[0x277CB8C40];
    v18 = [v16 isEqualToString:*MEMORY[0x277CB8C40]];

    if (v18)
    {
      v14 = v17;
      goto LABEL_7;
    }

    v20 = [v7 accountProperties];
    v21 = *MEMORY[0x277CB8AC8];
    v22 = [v20 objectForKeyedSubscript:*MEMORY[0x277CB8AC8]];

    if (v22 || (v21 = *MEMORY[0x277CB8AD0], [v20 objectForKeyedSubscript:*MEMORY[0x277CB8AD0]], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
    {
      v19 = [v20 objectForKeyedSubscript:v21];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  objc_sync_exit(v5);

  return v19;
}

- (BOOL)hasCalendarAccount:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  v6 = v4->_usernamesCache;
  objc_sync_exit(v4);

  LOBYTE(v4) = [(NSSet *)v6 containsObject:v5];
  return v4;
}

- (void)removeNotificationObserver
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

- (void)dealloc
{
  [(SGAccountsAdapter *)self removeNotificationObserver];
  v3.receiver = self;
  v3.super_class = SGAccountsAdapter;
  [(SGAccountsAdapter *)&v3 dealloc];
}

- (void)registerNotificationObserver
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_accountsStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:self->_accountStore];
}

- (void)setUpdateTimerWithDelaySeconds:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_updateTimerIsSet)
  {
    dispatch_suspend(obj->_updateTimerSource);
    v4 = obj;
  }

  updateTimerSource = v4->_updateTimerSource;
  v6 = a3;
  if (a3)
  {
    if (a3 <= 0x225C17D04)
    {
      v7 = dispatch_time(0, (v6 * 1000000000.0));
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 0;
  }

  dispatch_source_set_timer(updateTimerSource, v7, 0xFFFFFFFFFFFFFFFFLL, (v6 * 0.1 * 1000000000.0));
  dispatch_resume(obj->_updateTimerSource);
  obj->_updateTimerIsSet = 1;
  objc_sync_exit(obj);
}

- (void)cancelUpdateTimer
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_updateTimerIsSet)
  {
    dispatch_suspend(obj->_updateTimerSource);
    obj->_updateTimerIsSet = 0;
  }

  objc_sync_exit(obj);
}

- (void)refreshCacheFromAccountsService
{
  v42[1] = *MEMORY[0x277D85DE8];
  [(SGAccountsAdapter *)self cancelUpdateTimer];
  accountStore = self->_accountStore;
  v42[0] = *MEMORY[0x277CB8BC8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v41 = *MEMORY[0x277CB8E70];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v37 = 0;
  v6 = [(ACAccountStore *)accountStore accountsWithAccountTypeIdentifiers:v4 preloadedProperties:v5 error:&v37];
  v7 = v37;

  if (v7)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch CalDAV accounts: %@", buf, 0xCu);
    }

    [(SGAccountsAdapter *)self setUpdateTimerWithDelaySeconds:3600];
    goto LABEL_25;
  }

  obj = objc_opt_new();
  v30 = self;
  location = &self->_cachedPrimaryICloudAccount;
  v29 = self->_cachedPrimaryICloudAccount;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v6;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v34;
  v14 = *MEMORY[0x277CB90F0];
  v15 = *MEMORY[0x277CEC688];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v33 + 1) + 8 * i);
      v18 = [v17 enabledDataclasses];
      if (![v18 containsObject:v14])
      {
        goto LABEL_14;
      }

      v19 = [v17 username];

      if (v19)
      {
        v20 = [v17 username];
        [obj addObject:v20];

        v21 = [v17 parentAccount];
        v22 = [v21 aa_isAccountClass:v15];

        if (v22)
        {
          [v17 identifier];
          v12 = v18 = v12;
LABEL_14:

          continue;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v11);
LABEL_19:

  v23 = sgLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    v40 = obj;
    _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "Calendar accounts updated: %{sensitive}@", buf, 0xCu);
  }

  v24 = v30;
  objc_sync_enter(v24);
  objc_storeStrong(v24 + 1, obj);
  objc_sync_exit(v24);

  if (v12 != v29 && ([(NSString *)v12 isEqual:v29]& 1) == 0)
  {
    v25 = NSStringFromSelector(sel_primaryICloudCalendarAccount);
    [v24 willChangeValueForKey:v25];
    v26 = v24;
    objc_sync_enter(v26);
    objc_storeStrong(location, v12);
    objc_sync_exit(v26);

    [v26 didChangeValueForKey:v25];
  }

  [v24 setCachedAccounts];

  v7 = 0;
  v6 = v31;
LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)accountsStoreDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8C90]];

    if (v7 && [v7 isEqual:*MEMORY[0x277CB8BC8]])
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v5 userInfo];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Refreshing due to account change: %@", &v12, 0xCu);
      }

      dispatch_source_merge_data(self->_updateSource, 1uLL);
      goto LABEL_10;
    }
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = [v5 userInfo];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Filtering account change that we don't care about: %@", &v12, 0xCu);
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setCachedAccounts
{
  v5 = objc_opt_new();
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_cachedPrimaryICloudAccount && v3->_usernamesCache)
  {
    [v5 addObject:?];
    v4 = [(NSSet *)v3->_usernamesCache allObjects];
    [v5 addObjectsFromArray:v4];
  }

  [MEMORY[0x277D02098] setUserAccountsPersistedState:v5];
  objc_sync_exit(v3);
}

- (BOOL)readCachedAccounts
{
  v3 = [MEMORY[0x277D02098] userAccountsPersistedState];
  v4 = self;
  objc_sync_enter(v4);
  if (v3 && [v3 count])
  {
    v5 = [v3 firstObject];
    cachedPrimaryICloudAccount = v4->_cachedPrimaryICloudAccount;
    v4->_cachedPrimaryICloudAccount = v5;

    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v9 = [v7 initWithArray:v8];
    usernamesCache = v4->_usernamesCache;
    v4->_usernamesCache = v9;
  }

  else
  {
    v11 = v4->_cachedPrimaryICloudAccount;
    v4->_cachedPrimaryICloudAccount = 0;

    v12 = objc_opt_new();
    v8 = v4->_usernamesCache;
    v4->_usernamesCache = v12;
  }

  objc_sync_exit(v4);
  return v3 != 0;
}

- (SGAccountsAdapter)init
{
  v28.receiver = self;
  v28.super_class = SGAccountsAdapter;
  v2 = [(SGAccountsAdapter *)&v28 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = dispatch_queue_create([v7 UTF8String], v5);
    v9 = *(v2 + 4);
    *(v2 + 4) = v8;

    v10 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, *(v2 + 4));
    v11 = *(v2 + 5);
    *(v2 + 5) = v10;

    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 initWithFormat:@"%@-timer", v14];
    v16 = dispatch_queue_create([v15 UTF8String], v5);
    v17 = *(v2 + 7);
    *(v2 + 7) = v16;

    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 7));
    v19 = *(v2 + 8);
    *(v2 + 8) = v18;

    objc_initWeak(&location, v2);
    v20 = *(v2 + 5);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __25__SGAccountsAdapter_init__block_invoke;
    handler[3] = &unk_278955AC0;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v20, handler);
    v21 = *(v2 + 8);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __25__SGAccountsAdapter_init__block_invoke_2;
    v23[3] = &unk_278955AC0;
    objc_copyWeak(&v24, &location);
    dispatch_source_set_event_handler(v21, v23);
    if (([v2 readCachedAccounts] & 1) == 0)
    {
      [v2 refreshCacheFromAccountsService];
    }

    dispatch_activate(*(v2 + 5));
    [v2 registerNotificationObserver];
    [v2 setUpdateTimerWithDelaySeconds:10];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__SGAccountsAdapter_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshCacheFromAccountsService];
}

void __25__SGAccountsAdapter_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_source_merge_data(WeakRetained[5], 1uLL);
    WeakRetained = v2;
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_primaryICloudCalendarAccount);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___SGAccountsAdapter;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v7;
}

void __35__SGAccountsAdapter_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_6735;
  sharedInstance__pasExprOnceResult_6735 = v1;

  objc_autoreleasePoolPop(v0);
}

@end