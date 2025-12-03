@interface HSAccountStore
+ (id)defaultStore;
- (BOOL)canDetermineGroupID;
- (HSAccountStore)init;
- (NSString)appleID;
- (NSString)groupID;
- (void)_onBackgroundQueue_determineGroupIDWithCompletionHandler:(id)handler;
- (void)clearAllCredentials;
- (void)clearCaches;
- (void)clearGroupID;
- (void)dealloc;
- (void)determineGroupIDWithCompletionHandler:(id)handler;
- (void)setAppleID:(id)d;
- (void)setGroupID:(id)d;
- (void)setPassword:(id)password;
@end

@implementation HSAccountStore

+ (id)defaultStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HSAccountStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore_onceToken != -1)
  {
    dispatch_once(&defaultStore_onceToken, block);
  }

  v2 = defaultStore_defaultStore;

  return v2;
}

uint64_t __30__HSAccountStore_defaultStore__block_invoke()
{
  defaultStore_defaultStore = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (HSAccountStore)init
{
  v8.receiver = self;
  v8.super_class = HSAccountStore;
  v2 = [(HSAccountStore *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.HomeSharing.HSAccountStore", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __22__HSAccountStore_init__block_invoke;
    handler[3] = &unk_279779CB0;
    v7 = v2;
    notify_register_dispatch("com.apple.mobileipod.HomeSharingDefaultsDidChange", &v2->_defaultsDidChangeToken, MEMORY[0x277D85CD0], handler);
    CFPreferencesAppSynchronize(@"com.apple.homesharing");
  }

  return v2;
}

- (NSString)groupID
{
  v2 = CFPreferencesCopyAppValue(@"homeSharingGroupID", @"com.apple.homesharing");

  return v2;
}

- (BOOL)canDetermineGroupID
{
  appleID = [(HSAccountStore *)self appleID];
  if (appleID)
  {
    password = [(HSAccountStore *)self password];
    v5 = password != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)appleID
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__829;
  v16 = __Block_byref_object_dispose__830;
  v17 = CFPreferencesCopyAppValue(@"homeSharingAppleID", @"com.apple.homesharing");
  if (!CFPreferencesGetAppBooleanValue(@"homeSharingDidSetDefaultAppleID", @"com.apple.homesharing", 0) && ![v13[5] length])
  {
    v3 = dispatch_semaphore_create(0);
    defaultIdentityStore = [MEMORY[0x277D7FCA8] defaultIdentityStore];
    activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__HSAccountStore_appleID__block_invoke;
    v9[3] = &unk_279779CD8;
    v11 = &v12;
    v9[4] = self;
    v6 = v3;
    v10 = v6;
    [defaultIdentityStore getPropertiesForUserIdentity:activeAccount completionHandler:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __25__HSAccountStore_appleID__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 username];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 username];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    CFPreferencesSetAppValue(@"homeSharingAppleID", *(*(*(a1 + 48) + 8) + 40), @"com.apple.homesharing");
    CFPreferencesSetAppValue(@"homeSharingDidSetDefaultAppleID", *MEMORY[0x277CBED28], @"com.apple.homesharing");
    CFPreferencesAppSynchronize(@"com.apple.homesharing");
    v9 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_254418000, v9, OS_LOG_TYPE_DEFAULT, "Setting anAppleID=%@", &v11, 0xCu);
    }

    notify_set_state(*(*(a1 + 32) + 8), 0);
    notify_post("com.apple.mobileipod.HomeSharingDefaultsDidChange");
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setGroupID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dCopy;
    _os_log_impl(&dword_254418000, v5, OS_LOG_TYPE_DEFAULT, "Setting groupID=%{public}@", &v6, 0xCu);
  }

  CFPreferencesSetAppValue(@"homeSharingGroupID", dCopy, @"com.apple.homesharing");
  CFPreferencesAppSynchronize(@"com.apple.homesharing");
  notify_set_state(self->_defaultsDidChangeToken, 1uLL);
  notify_post("com.apple.mobileipod.HomeSharingDefaultsDidChange");
}

- (void)clearGroupID
{
  v3 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_DEFAULT, "Clearing group id", v4, 2u);
  }

  [(HSAccountStore *)self setGroupID:0];
}

- (void)clearCaches
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = HSLibraryCacheAllKnownCacheDirectories();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v16 = v9;
          _os_log_impl(&dword_254418000, v10, OS_LOG_TYPE_DEFAULT, "Removing sharing Home Sharing library caches at path: %{public}@", buf, 0xCu);
        }

        [defaultManager removeItemAtPath:v9 error:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }

  notify_post([@"HSCachesClearedNotification" UTF8String]);
}

- (void)clearAllCredentials
{
  v3 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all credentials", v4, 2u);
  }

  [(HSAccountStore *)self setAppleID:0];
  [(HSAccountStore *)self setPassword:0];
  [(HSAccountStore *)self setGroupID:0];
}

- (void)_onBackgroundQueue_determineGroupIDWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(HSAccountStore *)self canDetermineGroupID])
  {
    v5 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      appleID = [(HSAccountStore *)self appleID];
      *buf = 138412290;
      v16 = appleID;
      _os_log_impl(&dword_254418000, v5, OS_LOG_TYPE_DEFAULT, "Determining Group ID for Apple ID: %@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277D7FC30]);
    activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
    v9 = [v7 initWithIdentity:activeAccount];

    mEMORY[0x277D7FC68] = [MEMORY[0x277D7FC68] sharedBagProvider];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke;
    v12[3] = &unk_279779D50;
    v13 = v9;
    v14 = handlerCopy;
    v12[4] = self;
    v11 = v9;
    [mEMORY[0x277D7FC68] getBagForRequestContext:v11 withCompletionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [a2 urlForBagKey:*MEMORY[0x277D7F9D8]];
    v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v5];
    [v6 setHTTPMethod:@"POST"];
    v7 = [MEMORY[0x277D7FA80] currentDeviceInfo];
    v8 = [v7 deviceGUID];

    v9 = MEMORY[0x277CBEAC0];
    v10 = [*(a1 + 32) appleID];
    v11 = [*(a1 + 32) password];
    v12 = [v9 dictionaryWithObjectsAndKeys:{v10, @"appleId", v11, @"password", v8, @"guid", 0}];

    v30 = 0;
    v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:0 error:&v30];
    v14 = v30;
    v15 = v14;
    if (!v13 || v14)
    {
      v24 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = v15;
        v33 = 2114;
        v34 = v12;
        _os_log_impl(&dword_254418000, v24, OS_LOG_TYPE_DEFAULT, "failed to serialize body data. err=%{public}@, bodyDictionary=%{public}@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [v6 setHTTPBody:v13];
      v16 = [objc_alloc(MEMORY[0x277D7FC38]) initWithURLRequest:v6 requestContext:*(a1 + 40)];
      v17 = [MEMORY[0x277D7FC90] defaultSession];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_53;
      v27[3] = &unk_279779D28;
      v18 = *(a1 + 48);
      v19 = *(a1 + 32);
      v29 = v18;
      v27[4] = v19;
      v20 = v16;
      v28 = v20;
      [v17 enqueueDataRequest:v20 withCompletionHandler:v27];

      v21 = *(a1 + 32);
      v22 = *(v21 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_2_62;
      block[3] = &unk_279779E90;
      block[4] = v21;
      v26 = v20;
      v23 = v20;
      dispatch_sync(v22, block);
    }
  }
}

void __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279779D00;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v17 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_2_62(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = [MEMORY[0x277D7FC90] defaultSession];
    [v3 cancelRequest:*(*(a1 + 32) + 16)];

    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(a1 + 40);

  objc_storeStrong((v2 + 16), v6);
}

void __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) urlResponse];
  v3 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 statusCode];
    v5 = *(a1 + 40);
    *buf = 134218242;
    v23 = v4;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_DEFAULT, "Request got status code: %ld, error = %{public}@", buf, 0x16u);
  }

  if (*(a1 + 40) && (v6 = *(a1 + 64)) != 0)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    if ([v2 statusCode] >= 200 && objc_msgSend(v2, "statusCode") <= 299 && (objc_msgSend(*(a1 + 32), "bodyData"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
    {
      v9 = [*(a1 + 32) parsedBodyDictionary];
      v10 = [v9 objectForKey:@"status"];
      v11 = [v10 integerValue];

      if (v11)
      {
        v12 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v23 = v11;
          _os_log_impl(&dword_254418000, v12, OS_LOG_TYPE_DEFAULT, "Determine Group ID request returned status %ld", buf, 0xCu);
        }
      }

      v13 = [v9 objectForKey:@"sgid"];
      v14 = [v13 length];
      if (v14)
      {
        [*(a1 + 48) setGroupID:v13];
        [*(a1 + 48) setPassword:0];
      }

      else if (v11 == 5507)
      {
        HSSetKeychainValueForAccountWithService(0);
        CFPreferencesSetAppValue(@"homeSharingAppleID", 0, @"com.apple.homesharing");
        CFPreferencesAppSynchronize(@"com.apple.homesharing");
        notify_post("com.apple.mobileipod.HomeSharingDefaultsDidChange");
      }

      v16 = *(a1 + 64);
      if (v16)
      {
        (*(v16 + 16))(v16, v14 != 0, 0);
      }
    }

    else
    {
      v15 = *(a1 + 64);
      if (v15)
      {
        (*(v15 + 16))(v15, 0, 0);
      }
    }

    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = *(v18 + 24);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_60;
    v20[3] = &unk_279779E90;
    v20[4] = v18;
    v21 = v17;
    dispatch_sync(v19, v20);
  }
}

void __75__HSAccountStore__onBackgroundQueue_determineGroupIDWithCompletionHandler___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = 0;
  }
}

- (void)determineGroupIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HSAccountStore_determineGroupIDWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A2D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  password = [(HSAccountStore *)self password];
  v6 = [passwordCopy isEqualToString:password];

  if ((v6 & 1) == 0)
  {
    if (passwordCopy)
    {
      v7 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_DEFAULT, "passwords are different - clearing groupid", buf, 2u);
      }

      [(HSAccountStore *)self clearGroupID];
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__HSAccountStore_setPassword___block_invoke;
    block[3] = &unk_27977A350;
    block[4] = self;
    dispatch_sync(queue, block);
    HSSetKeychainValueForAccountWithService(passwordCopy);
  }
}

void __30__HSAccountStore_setPassword___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x277D7FC90] defaultSession];
    [v2 cancelRequest:*(*(a1 + 32) + 16)];

    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (void)setAppleID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  appleID = [(HSAccountStore *)self appleID];
  v6 = [dCopy isEqualToString:appleID];

  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      appleID2 = [(HSAccountStore *)self appleID];
      *buf = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = appleID2;
      _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_DEFAULT, "ids are different new=%@, old=%@", buf, 0x16u);
    }

    [(HSAccountStore *)self clearGroupID];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__HSAccountStore_setAppleID___block_invoke;
    block[3] = &unk_27977A350;
    block[4] = self;
    dispatch_sync(queue, block);
    CFPreferencesSetAppValue(@"homeSharingAppleID", dCopy, @"com.apple.homesharing");
    CFPreferencesAppSynchronize(@"com.apple.homesharing");
    notify_set_state(self->_defaultsDidChangeToken, 0);
    notify_post("com.apple.mobileipod.HomeSharingDefaultsDidChange");
  }
}

void __29__HSAccountStore_setAppleID___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x277D7FC90] defaultSession];
    [v2 cancelRequest:*(*(a1 + 32) + 16)];

    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (void)dealloc
{
  notify_cancel(self->_defaultsDidChangeToken);
  if (self->_groupIDRequest)
  {
    defaultSession = [MEMORY[0x277D7FC90] defaultSession];
    [defaultSession cancelRequest:self->_groupIDRequest];

    groupIDRequest = self->_groupIDRequest;
    self->_groupIDRequest = 0;
  }

  v5.receiver = self;
  v5.super_class = HSAccountStore;
  [(HSAccountStore *)&v5 dealloc];
}

void __22__HSAccountStore_init__block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.homesharing");
  state64 = 0;
  if (!notify_get_state(a2, &state64) && state64 == 1)
  {
    v4 = [*(a1 + 32) groupID];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"groupID"];
    }

    else
    {
      v5 = 0;
    }

    v6 = os_log_create("com.apple.amp.HomeSharing", "Accounts");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_254418000, v6, OS_LOG_TYPE_DEFAULT, "Responding to group id changed notification - newGroupID=%@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"HSGroupIDDidChangeNotification" object:*(a1 + 32) userInfo:v5];
  }
}

@end