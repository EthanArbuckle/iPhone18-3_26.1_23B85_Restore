@interface FCNewsletterManager
- (BOOL)canSubscribe;
- (BOOL)enabled;
- (BOOL)isEligibleForIssues;
- (BOOL)isSignedIntoEmailAccount;
- (BOOL)shouldSubmitPersonalizationVector;
- (FCNewsletterManager)initWithEndpointConnection:(id)connection endpointCommandQueue:(id)queue appleAccount:(id)account appConfig:(id)config userInfo:(id)info bundleSubscriptionManager:(id)manager privateDataContext:(id)context;
- (double)cacheTimeout;
- (id)forceSubscriptionThen:(id)then;
- (id)forceUpdateSubscription;
- (id)getWebToken;
- (id)updateSubscription;
- (int64_t)activeNewsletter;
- (int64_t)includeOptionsForNewsletter:(int64_t)newsletter;
- (int64_t)issueOptinStatus;
- (int64_t)subscriptionStatusForNewsletter:(int64_t)newsletter;
- (int64_t)updatedIncludeOptionsWithNewsletter:(int64_t)newsletter includeOptions:(int64_t)options;
- (void)addObserver:(id)observer;
- (void)appleAccountChanged;
- (void)deletePersonalizationVector;
- (void)notifyObservers;
- (void)notifyObserversWithPreviousNewsletters:(id)newsletters updatedNewsletters:(id)updatedNewsletters;
- (void)notifyObserversWithPreviousSubscription:(int64_t)subscription;
- (void)optIntoSports;
- (void)optOutOfIssues;
- (void)optOutOfSports;
- (void)removeObserver:(id)observer;
- (void)resetCaches;
- (void)saveToCloudKitSubscribedChannels:(id)channels;
- (void)submitPersonalizationVector:(id)vector subscribedBundleChannelIDs:(id)ds;
- (void)subscribeFromPrivacyModalCTA;
- (void)subscribeFromPrivacyModalCTAWithCompletion:(id)completion;
- (void)subscribeTo:(int64_t)to;
- (void)subscribeTo:(int64_t)to completion:(id)completion;
- (void)subscribeTo:(int64_t)to includeOptions:(int64_t)options;
- (void)subscribeTo:(int64_t)to includeOptions:(int64_t)options completion:(id)completion;
- (void)unsubscribe;
- (void)updateCacheWithNewsletterString:(id)string includeArray:(id)array newsletters:(id)newsletters;
@end

@implementation FCNewsletterManager

- (id)forceUpdateSubscription
{
  if ([(FCNewsletterManager *)self enabled])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_2;
    v9[3] = &unk_1E7C39ED0;
    v9[4] = selfCopy;
    v5 = [v4 initWithResolver:v9];
    updateSubscriptionPromise = selfCopy->_updateSubscriptionPromise;
    selfCopy->_updateSubscriptionPromise = v5;

    v7 = selfCopy->_updateSubscriptionPromise;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9[5] = MEMORY[0x1E69E9820];
    v9[6] = 3221225472;
    v9[7] = __46__FCNewsletterManager_forceUpdateSubscription__block_invoke;
    v9[8] = &unk_1E7C396C0;
    v9[9] = self;
    v7 = self->_updateSubscriptionPromise;
  }

  return v7;
}

- (void)appleAccountChanged
{
  iTunesAccountName = [(FCAppleAccount *)self->_appleAccount iTunesAccountName];
  v4 = iTunesAccountName;
  if (iTunesAccountName != self->_activeiTunesAccountName && ![(NSString *)iTunesAccountName isEqualToString:?])
  {
    v5 = FCNewsletterLog;
    if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Newsletter Manager: account changed, resetting caches", v7, 2u);
    }

    [(FCNewsletterManager *)self resetCaches];
  }

  forceUpdateSubscription = [(FCNewsletterManager *)self forceUpdateSubscription];
}

- (BOOL)enabled
{
  possiblyUnfetchedAppConfiguration = [(FCNewsAppConfigurationManager *)self->_appConfig possiblyUnfetchedAppConfiguration];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults integerForKey:@"news.onboarding.version.latest_completed"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults2 integerForKey:@"news.onboarding.version.debug_latest_completed"];

  v7 = v6 >= 0 ? v6 : v4;
  if (v7 >= 1)
  {
    v8 = [possiblyUnfetchedAppConfiguration newsletterSubscriptionType] != 0;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (double)cacheTimeout
{
  possiblyUnfetchedAppConfiguration = [(FCNewsAppConfigurationManager *)self->_appConfig possiblyUnfetchedAppConfiguration];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 86400.0;
  }

  possiblyUnfetchedAppConfiguration2 = [(FCNewsAppConfigurationManager *)self->_appConfig possiblyUnfetchedAppConfiguration];
  [possiblyUnfetchedAppConfiguration2 newsletterSubscriptionStatusCacheTimeout];
  v7 = v6;

  return v7;
}

void __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_3;
  block[3] = &unk_1E7C390B8;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_3(uint64_t a1)
{
  v2 = [FCGetNewsletterSubscriptionOperation alloc];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_4;
  v7[3] = &unk_1E7C46C30;
  v7[4] = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v6 = [(FCGetNewsletterSubscriptionOperation *)v2 initWithEndpointConnection:v5 completion:v7];
  [(FCOperation *)v6 start];
}

- (id)updateSubscription
{
  if (![(FCNewsletterManager *)self enabled])
  {
    forceUpdateSubscription = self->_updateSubscriptionPromise;
    goto LABEL_5;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSDate *)selfCopy->_cacheExpiration timeIntervalSinceNow];
  if (v4 < 0.0)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    v6 = [v5 dateByAddingTimeInterval:60.0];
    cacheExpiration = selfCopy->_cacheExpiration;
    selfCopy->_cacheExpiration = v6;

    objc_sync_exit(selfCopy);
    forceUpdateSubscription = [(FCNewsletterManager *)selfCopy forceUpdateSubscription];
LABEL_5:
    v9 = forceUpdateSubscription;
    goto LABEL_7;
  }

  v9 = selfCopy->_updateSubscriptionPromise;
  objc_sync_exit(selfCopy);

LABEL_7:

  return v9;
}

void __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v12 = v9;
  if (a2)
  {
    [*(a1 + 32) updateCacheWithNewsletterString:a2 includeArray:a3 newsletters:a4];
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    if ([v9 fc_hasErrorCode:32])
    {
      [*(a1 + 32) resetCaches];
    }

    v11 = *(*(a1 + 48) + 16);
  }

  v11();
}

- (void)resetCaches
{
  obj = self;
  objc_sync_enter(obj);
  obj->_subscription = 0;
  obj->_includeOptions = 0;
  array = [MEMORY[0x1E695DEC8] array];
  cachedNewsletters = obj->_cachedNewsletters;
  obj->_cachedNewsletters = array;

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  cacheExpiration = obj->_cacheExpiration;
  obj->_cacheExpiration = distantPast;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = standardUserDefaults;
  v8 = obj->_subscription - 1;
  if (v8 > 2)
  {
    v9 = @"UNKNOWN";
  }

  else
  {
    v9 = off_1E7C46CC0[v8];
  }

  [standardUserDefaults setObject:v9 forKey:FCNewsletterManagerSubscriptionKey];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setInteger:obj->_includeOptions forKey:FCNewsletterManagerIncludeKey];

  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:obj->_cachedNewsletters];
  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults3 setObject:v11 forKey:FCNewsletterManagerNewslettersKey];

  standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults4 setObject:obj->_cacheExpiration forKey:FCNewsletterManagerCacheAgeKey];

  objc_sync_exit(obj);
}

- (FCNewsletterManager)initWithEndpointConnection:(id)connection endpointCommandQueue:(id)queue appleAccount:(id)account appConfig:(id)config userInfo:(id)info bundleSubscriptionManager:(id)manager privateDataContext:(id)context
{
  connectionCopy = connection;
  queueCopy = queue;
  accountCopy = account;
  configCopy = config;
  infoCopy = info;
  managerCopy = manager;
  contextCopy = context;
  v58.receiver = self;
  v58.super_class = FCNewsletterManager;
  v19 = [(FCNewsletterManager *)&v58 init];
  v20 = v19;
  if (v19)
  {
    v51 = accountCopy;
    v52 = connectionCopy;
    objc_storeStrong(&v19->_endpointConnection, connection);
    objc_storeStrong(&v20->_endpointCommandQueue, queue);
    objc_storeStrong(&v20->_appleAccount, account);
    objc_storeStrong(&v20->_appConfig, config);
    objc_storeStrong(&v20->_userInfo, info);
    objc_storeStrong(&v20->_bundleSubscriptionManager, manager);
    internalPrivateDataContext = [contextCopy internalPrivateDataContext];
    privateDatabase = [internalPrivateDataContext privateDatabase];
    database = v20->_database;
    v20->_database = privateDatabase;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v20->_observers;
    v20->_observers = weakObjectsHashTable;

    v26 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:v20];
    updateSubscriptionPromise = v20->_updateSubscriptionPromise;
    v20->_updateSubscriptionPromise = v26;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v29 = [standardUserDefaults objectForKey:FCNewsletterManagerSubscriptionKey];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v31 = [standardUserDefaults2 integerForKey:FCNewsletterManagerIncludeKey];

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v33 = [standardUserDefaults3 objectForKey:FCNewsletterManagerNewslettersKey];

    v57 = 0;
    v34 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v33 error:&v57];
    v50 = v57;
    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v36 = [standardUserDefaults4 objectForKey:FCNewsletterManagerCacheAgeKey];

    standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v38 = [standardUserDefaults5 objectForKey:FCNewsletterManagerCachedVectorKey];

    cachedWebToken = v20->_cachedWebToken;
    v20->_cachedWebToken = 0;

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    webTokenExpiration = v20->_webTokenExpiration;
    v20->_webTokenExpiration = distantPast;

    if (v29)
    {
      v42 = v29;
      if ([v42 isEqualToString:@"NONE"])
      {
        v43 = 1;
      }

      else if ([v42 isEqualToString:@"NEWSLETTER"])
      {
        v43 = 2;
      }

      else if ([v42 isEqualToString:@"PERSONALIZED_NEWSLETTER"])
      {
        v43 = 3;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v20->_subscription = v43;
    v20->_includeOptions = v31;
    if (v34)
    {
      array = v34;
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    cachedNewsletters = v20->_cachedNewsletters;
    v20->_cachedNewsletters = array;
    accountCopy = v51;

    if (v36)
    {
      [(FCNewsletterManager *)v20 cacheTimeout];
      [v36 dateByAddingTimeInterval:?];
    }

    else
    {
      [MEMORY[0x1E695DF00] distantPast];
    }
    v46 = ;
    cacheExpiration = v20->_cacheExpiration;
    v20->_cacheExpiration = v46;

    if (v38)
    {
      objc_storeStrong(&v20->_cachedVector, v38);
    }

    iTunesAccountName = [(FCAppleAccount *)v20->_appleAccount iTunesAccountName];
    [(FCNewsletterManager *)v20 setActiveiTunesAccountName:iTunesAccountName];

    [v51 addObserver:v20];
    connectionCopy = v52;
  }

  return v20;
}

- (int64_t)activeNewsletter
{
  if (![(FCNewsletterManager *)self enabled])
  {
    return 0;
  }

  appConfiguration = [(FCNewsAppConfigurationManager *)self->_appConfig appConfiguration];
  newsletterSubscriptionType = [appConfiguration newsletterSubscriptionType];

  return newsletterSubscriptionType;
}

- (BOOL)canSubscribe
{
  activeNewsletter = [(FCNewsletterManager *)self activeNewsletter];
  if ((activeNewsletter & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  return [(FCNewsletterManager *)self canSubscribeToNewsletter:activeNewsletter];
}

- (int64_t)subscriptionStatusForNewsletter:(int64_t)newsletter
{
  if (!newsletter)
  {
    return 0;
  }

  result = [(FCNewsletterManager *)self activeNewsletter];
  if (!result)
  {
    return result;
  }

  if ([(FCAppleAccount *)self->_appleAccount isUserSignedInToiCloud]&& [(FCAppleAccount *)self->_appleAccount isPrimaryAccountEmailAddress])
  {
    if (!self->_subscription)
    {
      return 6;
    }

    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  if (newsletter == 2 && self->_subscription == 3)
  {
    return 5;
  }

  activeNewsletter = [(FCNewsletterManager *)self activeNewsletter];
  if (newsletter != 1 && activeNewsletter != newsletter)
  {
    return 3;
  }

  if (self->_subscription == newsletter)
  {
    return 2;
  }

  return v6;
}

- (BOOL)isEligibleForIssues
{
  appConfiguration = [(FCNewsAppConfigurationManager *)self->_appConfig appConfiguration];
  issuesNewsletterOptinEnabled = [appConfiguration issuesNewsletterOptinEnabled];

  if (!issuesNewsletterOptinEnabled || ![(FCAppleAccount *)self->_appleAccount isUserSignedInToiCloud]|| ![(FCAppleAccount *)self->_appleAccount isPrimaryAccountEmailAddress])
  {
    return 0;
  }

  cachedSubscription = [(FCBundleSubscriptionManagerType *)self->_bundleSubscriptionManager cachedSubscription];
  v6 = objc_getAssociatedObject(cachedSubscription, (cachedSubscription + 1));
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = unsignedIntegerValue;
  v9 = objc_getAssociatedObject(cachedSubscription, ~unsignedIntegerValue);
  v10 = ([v9 unsignedIntegerValue] ^ v8) & 1;

  return v10;
}

- (BOOL)isSignedIntoEmailAccount
{
  isUserSignedInToiCloud = [(FCAppleAccount *)self->_appleAccount isUserSignedInToiCloud];
  if (isUserSignedInToiCloud)
  {
    appleAccount = self->_appleAccount;

    LOBYTE(isUserSignedInToiCloud) = [(FCAppleAccount *)appleAccount isPrimaryAccountEmailAddress];
  }

  return isUserSignedInToiCloud;
}

- (int64_t)issueOptinStatus
{
  appConfiguration = [(FCNewsAppConfigurationManager *)self->_appConfig appConfiguration];
  issuesNewsletterOptinEnabled = [appConfiguration issuesNewsletterOptinEnabled];

  if (!issuesNewsletterOptinEnabled)
  {
    return 3;
  }

  if (![(FCNewsletterManager *)self isSignedIntoEmailAccount])
  {
    return 4;
  }

  cachedSubscription = [(FCBundleSubscriptionManagerType *)self->_bundleSubscriptionManager cachedSubscription];
  v6 = objc_getAssociatedObject(cachedSubscription, (cachedSubscription + 1));
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = unsignedIntegerValue;
  v9 = objc_getAssociatedObject(cachedSubscription, ~unsignedIntegerValue);
  v10 = [v9 unsignedIntegerValue] ^ v8;

  if ((v10 & 1) == 0)
  {
    return 6;
  }

  if (!self->_subscription)
  {
    return 0;
  }

  if (([(FCNewsletterManager *)self includeOptions]& 2) != 0)
  {
    return 2;
  }

  return 1;
}

- (int64_t)updatedIncludeOptionsWithNewsletter:(int64_t)newsletter includeOptions:(int64_t)options
{
  v4 = options & 4;
  optionsCopy = options | 1;
  if (newsletter != 3)
  {
    optionsCopy = options;
  }

  if (newsletter != 2)
  {
    v4 = optionsCopy;
  }

  if (newsletter >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)subscribeTo:(int64_t)to includeOptions:(int64_t)options
{
  v31 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  enabled = [(FCNewsletterManager *)self enabled];
  if (!to || !enabled)
  {
    goto LABEL_25;
  }

  v8 = [(FCNewsletterManager *)self updatedIncludeOptionsWithNewsletter:to includeOptions:options];
  v9 = FCNewsletterLog;
  if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
  {
    if (to > 3)
    {
      v10 = @"UNKNOWN";
    }

    else
    {
      v10 = off_1E7C46CC0[to - 1];
    }

    v11 = MEMORY[0x1E695DF70];
    v12 = v9;
    v13 = objc_alloc_init(v11);
    v14 = v13;
    if (v8)
    {
      [v13 addObject:@"ARTICLES"];
      if ((v8 & 2) == 0)
      {
LABEL_9:
        if ((v8 & 4) == 0)
        {
LABEL_11:
          v15 = [v14 copy];

          v16 = [v15 componentsJoinedByString:@"|"];
          v27 = 138412546;
          v28 = v10;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Subscribing to newsletter [%@] options [%@]", &v27, 0x16u);

          goto LABEL_12;
        }

LABEL_10:
        [v14 addObject:@"SPORTS"];
        goto LABEL_11;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_9;
    }

    [v14 addObject:@"NEWSPLUS_CHANNELS"];
    if ((v8 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  subscription = selfCopy->_subscription;
  includeOptions = selfCopy->_includeOptions;
  selfCopy->_subscription = to;
  selfCopy->_includeOptions = v8;
  if (subscription != to || v8 != includeOptions)
  {
    [(FCNewsletterManager *)selfCopy notifyObserversWithPreviousSubscription:?];
  }

  objc_sync_exit(selfCopy);

  v20 = [FCNewsletterSubscribeCommand alloc];
  if (to > 3)
  {
    v21 = @"UNKNOWN";
  }

  else
  {
    v21 = off_1E7C46CC0[to - 1];
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = v22;
  if (v8)
  {
    [v22 addObject:@"ARTICLES"];
  }

  if ((v8 & 2) != 0)
  {
    [v23 addObject:@"NEWSPLUS_CHANNELS"];
  }

  if ((v8 & 4) != 0)
  {
    [v23 addObject:@"SPORTS"];
  }

  v24 = [v23 copy];

  v25 = [(FCNewsletterSubscribeCommand *)v20 initWithNewsletter:v21 includeArray:v24];
  [(FCCommandQueue *)selfCopy->_endpointCommandQueue addCommand:v25];

LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)subscribeTo:(int64_t)to includeOptions:(int64_t)options completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [MEMORY[0x1E696AF00] isMainThread];
  enabled = [(FCNewsletterManager *)self enabled];
  if (to && enabled)
  {
    v10 = [(FCNewsletterManager *)self updatedIncludeOptionsWithNewsletter:to includeOptions:options];
    v11 = FCNewsletterLog;
    if (!os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    if (to > 3)
    {
      v12 = @"UNKNOWN";
    }

    else
    {
      v12 = off_1E7C46CC0[to - 1];
    }

    v13 = MEMORY[0x1E695DF70];
    v14 = v11;
    v15 = objc_alloc_init(v13);
    v16 = v15;
    if (v10)
    {
      [v15 addObject:@"ARTICLES"];
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
LABEL_11:
          v17 = [v16 copy];

          v18 = [v17 componentsJoinedByString:@"|"];
          *buf = 138412546;
          v29 = v12;
          v30 = 2112;
          v31 = v18;
          _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Subscribing to newsletter [%@] options [%@]", buf, 0x16u);

LABEL_12:
          endpointConnection = [(FCNewsletterManager *)self endpointConnection];
          if (to > 3)
          {
            v20 = @"UNKNOWN";
          }

          else
          {
            v20 = off_1E7C46CC0[to - 1];
          }

          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v22 = v21;
          if (v10)
          {
            [v21 addObject:@"ARTICLES"];
            if ((v10 & 2) == 0)
            {
LABEL_17:
              if ((v10 & 4) == 0)
              {
LABEL_19:
                v23 = [v22 copy];

                v24 = dispatch_get_global_queue(-2, 0);
                v26[0] = MEMORY[0x1E69E9820];
                v26[1] = 3221225472;
                v26[2] = __61__FCNewsletterManager_subscribeTo_includeOptions_completion___block_invoke_40;
                v26[3] = &unk_1E7C46BE0;
                v26[4] = self;
                v27 = completionCopy;
                [endpointConnection newsletterSubscribeTo:v20 includeArray:v23 callbackQueue:v24 completion:v26];

                goto LABEL_20;
              }

LABEL_18:
              [v22 addObject:@"SPORTS"];
              goto LABEL_19;
            }
          }

          else if ((v10 & 2) == 0)
          {
            goto LABEL_17;
          }

          [v22 addObject:@"NEWSPLUS_CHANNELS"];
          if ((v10 & 4) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_10:
        [v16 addObject:@"SPORTS"];
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    [v16 addObject:@"NEWSPLUS_CHANNELS"];
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_20:

  v25 = *MEMORY[0x1E69E9840];
}

void __61__FCNewsletterManager_subscribeTo_includeOptions_completion___block_invoke_40(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    [*(a1 + 32) updateCacheWithNewsletterString:v9 includeArray:v10 newsletters:v11];
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FCNewsletterManager_subscribeTo_includeOptions_completion___block_invoke_2;
    block[3] = &unk_1E7C3A700;
    v17 = v14;
    v18 = v13;
    v16 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (int64_t)includeOptionsForNewsletter:(int64_t)newsletter
{
  if (newsletter == 2)
  {
    userInfo = [(FCNewsletterManager *)self userInfo];
    v6 = [userInfo sportsOnboardingState] == 1;

    return 4 * v6;
  }

  else if (newsletter == 3)
  {
    if ([(FCNewsletterManager *)self canOptIntoIssues]|| [(FCNewsletterManager *)self isOptedIntoIssues])
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    userInfo2 = [(FCNewsletterManager *)self userInfo];
    sportsOnboardingState = [userInfo2 sportsOnboardingState];

    if (sportsOnboardingState == 1)
    {
      return v4 | 4;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return 0;
  }
}

- (void)subscribeTo:(int64_t)to
{
  v5 = [(FCNewsletterManager *)self includeOptionsForNewsletter:?];

  [(FCNewsletterManager *)self subscribeTo:to includeOptions:v5];
}

- (void)subscribeTo:(int64_t)to completion:(id)completion
{
  completionCopy = completion;
  [(FCNewsletterManager *)self subscribeTo:to includeOptions:[(FCNewsletterManager *)self includeOptionsForNewsletter:to] completion:completionCopy];
}

- (void)subscribeFromPrivacyModalCTA
{
  v3 = FCNewsletterLog;
  if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: subscribeFromPrivacyModalCTA", v4, 2u);
  }

  [(FCNewsletterManager *)self subscribeTo:[(FCNewsletterManager *)self activeNewsletter]];
}

- (void)subscribeFromPrivacyModalCTAWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FCNewsletterManager *)self subscribeTo:[(FCNewsletterManager *)self activeNewsletter] completion:completionCopy];
}

- (void)unsubscribe
{
  v3 = FCNewsletterLog;
  if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: unsubscribe", v5, 2u);
  }

  if ([(FCNewsletterManager *)self isSubscribed])
  {
    [(FCNewsletterManager *)self subscribeTo:1];
  }

  else
  {
    v4 = FCNewsletterLog;
    if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Already unsubscribed. Skipping operation.", buf, 2u);
    }
  }
}

- (void)optOutOfIssues
{
  includeOptions = [(FCNewsletterManager *)self includeOptions];
  v4 = FCNewsletterLog;
  v5 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if ((includeOptions & 2) != 0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Opting out of Issues...", buf, 2u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__FCNewsletterManager_optOutOfIssues__block_invoke_46;
    v7[3] = &unk_1E7C36EA0;
    v7[4] = self;
    v6 = [(FCNewsletterManager *)self forceSubscriptionThen:v7];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Already opted out of Issues. Skipping update.", buf, 2u);
  }
}

uint64_t __37__FCNewsletterManager_optOutOfIssues__block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) includeOptions];
  v3 = *(a1 + 32);
  v4 = [v3 subscription];

  return [v3 subscribeTo:v4 includeOptions:v2 & 0xFFFFFFFFFFFFFFFDLL];
}

- (id)forceSubscriptionThen:(id)then
{
  thenCopy = then;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__FCNewsletterManager_forceSubscriptionThen___block_invoke;
  v12[3] = &unk_1E7C396C0;
  v12[4] = self;
  v5 = [MEMORY[0x1E69B68F8] firstly:v12];
  v6 = zalgoIfMain();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__FCNewsletterManager_forceSubscriptionThen___block_invoke_2;
  v10[3] = &unk_1E7C46C08;
  v10[4] = self;
  v11 = thenCopy;
  v7 = thenCopy;
  v8 = [v5 thenOn:v6 then:v10];

  return v8;
}

uint64_t __45__FCNewsletterManager_forceSubscriptionThen___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCNewsletterLog;
  if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Updated subscription state.", buf, 2u);
  }

  v5 = [*(a1 + 32) isSubscribed];
  v6 = FCNewsletterLog;
  v7 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: user is subscribed. Continuing...", v10, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v7)
  {
    *v9 = 0;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: user is not subscribed. Skipping update.", v9, 2u);
  }

  return 0;
}

- (void)optIntoSports
{
  includeOptions = [(FCNewsletterManager *)self includeOptions];
  v4 = FCNewsletterLog;
  v5 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if ((includeOptions & 4) != 0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Already opted into sports. Skipping subscription.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Opting into sports...", buf, 2u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__FCNewsletterManager_optIntoSports__block_invoke_51;
    v7[3] = &unk_1E7C36EA0;
    v7[4] = self;
    v6 = [(FCNewsletterManager *)self forceSubscriptionThen:v7];
  }
}

uint64_t __36__FCNewsletterManager_optIntoSports__block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) includeOptions];
  v3 = *(a1 + 32);
  v4 = [v3 subscription];

  return [v3 subscribeTo:v4 includeOptions:v2 | 4];
}

- (void)optOutOfSports
{
  includeOptions = [(FCNewsletterManager *)self includeOptions];
  v4 = FCNewsletterLog;
  v5 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if ((includeOptions & 4) != 0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Opting out from sports...", buf, 2u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__FCNewsletterManager_optOutOfSports__block_invoke_54;
    v7[3] = &unk_1E7C36EA0;
    v7[4] = self;
    v6 = [(FCNewsletterManager *)self forceSubscriptionThen:v7];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "FCNewsletterManager: Already opted out from sports. Skipping unsubscribing.", buf, 2u);
  }
}

uint64_t __37__FCNewsletterManager_optOutOfSports__block_invoke_54(uint64_t a1)
{
  v2 = [*(a1 + 32) includeOptions];
  v3 = *(a1 + 32);
  v4 = [v3 subscription];

  return [v3 subscribeTo:v4 includeOptions:v2 & 0xFFFFFFFFFFFFFFFBLL];
}

- (id)getWebToken
{
  if ([(FCNewsletterManager *)self enabled])
  {
    webTokenExpiration = [(FCNewsletterManager *)self webTokenExpiration];
    [webTokenExpiration timeIntervalSinceNow];
    v5 = v4;

    if (v5 < 0.0)
    {
      v6 = [MEMORY[0x1E695DF00] now];
      v7 = [v6 dateByAddingTimeInterval:60.0];
      [(FCNewsletterManager *)self setWebTokenExpiration:v7];

      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __34__FCNewsletterManager_getWebToken__block_invoke_3;
      v13[3] = &unk_1E7C39ED0;
      v13[4] = self;
      v9 = [v8 initWithResolver:v13];
      getWebTokenPromise = self->_getWebTokenPromise;
      self->_getWebTokenPromise = v9;
    }

    else
    {
      v13[5] = MEMORY[0x1E69E9820];
      v13[6] = 3221225472;
      v13[7] = __34__FCNewsletterManager_getWebToken__block_invoke_2;
      v13[8] = &unk_1E7C396C0;
      v13[9] = self;
    }
  }

  else
  {
    v13[10] = MEMORY[0x1E69E9820];
    v13[11] = 3221225472;
    v13[12] = __34__FCNewsletterManager_getWebToken__block_invoke;
    v13[13] = &unk_1E7C396C0;
    v13[14] = self;
  }

  v11 = self->_getWebTokenPromise;

  return v11;
}

void __34__FCNewsletterManager_getWebToken__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCGetWebTokenOperation alloc];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__FCNewsletterManager_getWebToken__block_invoke_4;
  v13[3] = &unk_1E7C46C58;
  v13[4] = v8;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  v12 = [(FCGetWebTokenOperation *)v7 initWithEndpointConnection:v9 completion:v13];
  [(FCOperation *)v12 start];
}

void __34__FCNewsletterManager_getWebToken__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 length])
  {
    [*(a1 + 32) setCachedWebToken:v10];
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 dateByAddingTimeInterval:300.0];
    [*(a1 + 32) setWebTokenExpiration:v7];

    v8 = *(a1 + 40);
    v9 = [v10 copy];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)updateCacheWithNewsletterString:(id)string includeArray:(id)array newsletters:(id)newsletters
{
  v52 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  arrayCopy = array;
  newslettersCopy = newsletters;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v45 = selfCopy;
  subscription = selfCopy->_subscription;
  if (stringCopy)
  {
    v11 = stringCopy;
    if ([v11 isEqualToString:@"NONE"])
    {
      v12 = 1;
    }

    else if ([v11 isEqualToString:@"NEWSLETTER"])
    {
      v12 = 2;
    }

    else if ([v11 isEqualToString:@"PERSONALIZED_NEWSLETTER"])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    v45->_subscription = v12;
  }

  if (arrayCopy)
  {
    v13 = arrayCopy;
    null = [MEMORY[0x1E695DFB0] null];

    if (null == v13)
    {
      v16 = 0;
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v13;
      v15 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      v39 = v13;
      newslettersCopy2 = newsletters;
      v41 = arrayCopy;
      v42 = stringCopy;
      v16 = 0;
      if (v15)
      {
        v17 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            v20 = [v19 isEqualToString:{@"ARTICLES", v39, newslettersCopy2, v41, v42}];
            v21 = [v19 isEqualToString:@"NEWSPLUS_CHANNELS"];
            v22 = [v19 isEqualToString:@"SPORTS"];
            v23 = v16 | v20;
            if (v21)
            {
              v23 |= 2uLL;
            }

            if (v22)
            {
              v16 = v23 | 4;
            }

            else
            {
              v16 = v23;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v15);
      }

      arrayCopy = v41;
      stringCopy = v42;
      newsletters = newslettersCopy2;
      v13 = v39;
    }

    v45->_includeOptions = v16;
  }

  if (newslettersCopy)
  {
    p_cachedNewsletters = &v45->_cachedNewsletters;
    if (![(NSArray *)v45->_cachedNewsletters fc_isEqualToArray:newslettersCopy])
    {
      v25 = [*p_cachedNewsletters mutableCopy];
      objc_storeStrong(p_cachedNewsletters, newsletters);
      [(FCNewsletterManager *)v45 notifyObserversWithPreviousNewsletters:v25 updatedNewsletters:newslettersCopy];
    }
  }

  if (v45->_subscription)
  {
    v26 = [MEMORY[0x1E695DF00] now];
    [(FCNewsletterManager *)v45 cacheTimeout];
    v27 = [v26 dateByAddingTimeInterval:?];
    cacheExpiration = v45->_cacheExpiration;
    v45->_cacheExpiration = v27;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v30 = standardUserDefaults;
    v31 = v45->_subscription - 1;
    if (v31 > 2)
    {
      v32 = @"UNKNOWN";
    }

    else
    {
      v32 = off_1E7C46CC0[v31];
    }

    [standardUserDefaults setObject:v32 forKey:{FCNewsletterManagerSubscriptionKey, v39, newslettersCopy2, v41, v42}];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setInteger:v45->_includeOptions forKey:FCNewsletterManagerIncludeKey];

    v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v45->_cachedNewsletters];
    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults3 setObject:v34 forKey:FCNewsletterManagerNewslettersKey];

    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v37 = [MEMORY[0x1E695DF00] now];
    [standardUserDefaults4 setObject:v37 forKey:FCNewsletterManagerCacheAgeKey];

    if (v45->_subscription != subscription)
    {
      [(FCNewsletterManager *)v45 notifyObserversWithPreviousSubscription:subscription];
    }
  }

  objc_sync_exit(v45);

  v38 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldSubmitPersonalizationVector
{
  enabled = [(FCNewsletterManager *)self enabled];
  if (enabled)
  {
    LOBYTE(enabled) = [(FCNewsletterManager *)self subscription]== 3 || [(FCNewsletterManager *)self subscription]== 2 && ([(FCNewsletterManager *)self isOptedIntoIssues]|| [(FCNewsletterManager *)self includeSportsVector]);
  }

  return enabled;
}

- (void)submitPersonalizationVector:(id)vector subscribedBundleChannelIDs:(id)ds
{
  vectorCopy = vector;
  dsCopy = ds;
  [MEMORY[0x1E696AF00] isMainThread];
  if (vectorCopy && [(FCNewsletterManager *)self shouldSubmitPersonalizationVector])
  {
    data = [vectorCopy data];
    v8 = [data base64EncodedStringWithOptions:0];

    if (([v8 isEqualToString:&stru_1F2DC7DC0] & 1) == 0)
    {
      cachedVector = [(FCNewsletterManager *)self cachedVector];
      v10 = [v8 isEqualToString:cachedVector];

      if ((v10 & 1) == 0)
      {
        [(FCNewsletterManager *)self setCachedVector:v8];
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults setObject:v8 forKey:FCNewsletterManagerCachedVectorKey];

        v12 = [[FCSubmitNewsletterPersonalizationVectorCommand alloc] initWithPersonalizationVector:v8];
        [(FCCommandQueue *)self->_endpointCommandQueue addCommand:v12];
      }
    }

    if ([(FCNewsletterManager *)self isOptedIntoIssues])
    {
      allObjects = [dsCopy allObjects];
    }

    else
    {
      allObjects = MEMORY[0x1E695E0F0];
    }

    [(FCNewsletterManager *)self saveToCloudKitSubscribedChannels:allObjects];
  }
}

- (void)saveToCloudKitSubscribedChannels:(id)channels
{
  v19[1] = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v5 = objc_alloc(MEMORY[0x1E695BA90]);
  v6 = [v5 initWithZoneName:@"UserPrivacyExporter" ownerName:*MEMORY[0x1E695B728]];
  v7 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v6];
  v8 = objc_alloc_init(FCCKPrivateSaveRecordZonesOperation);
  v19[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(FCCKPrivateSaveRecordZonesOperation *)v8 setRecordZonesToSave:v9];

  database = [(FCNewsletterManager *)self database];
  [(FCCKPrivateDatabaseOperation *)v8 setDatabase:database];

  [(FCOperation *)v8 setQualityOfService:17];
  [(FCCKPrivateDatabaseOperation *)v8 setSkipPreflight:1];
  [(FCCKPrivateSaveRecordZonesOperation *)v8 setCanBypassEncryptionRequirement:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke;
  v15[3] = &unk_1E7C46CA0;
  v16 = v6;
  v17 = channelsCopy;
  selfCopy = self;
  v11 = channelsCopy;
  v12 = v6;
  [(FCCKPrivateSaveRecordZonesOperation *)v8 setSaveRecordZonesCompletionBlock:v15];
  fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v8];

  v14 = *MEMORY[0x1E69E9840];
}

void __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_2;
    v15[3] = &unk_1E7C36EA0;
    v16 = v4;
    __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_2(v15);
    v6 = v16;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"static_user_privacy_exporter_record" zoneID:*(a1 + 32)];
    v7 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"UserPrivacyExporter" recordID:v6];
    v8 = *(a1 + 40);
    v9 = [v7 encryptedValuesByKey];
    [v9 setObject:v8 forKeyedSubscript:@"subscribedChannelTagIDs"];

    v10 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    v17[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(FCCKPrivateSaveRecordsOperation *)v10 setRecordsToSave:v11];

    v12 = [*(a1 + 48) database];
    [(FCCKPrivateDatabaseOperation *)v10 setDatabase:v12];

    [(FCOperation *)v10 setQualityOfService:17];
    [(FCCKPrivateSaveRecordsOperation *)v10 setSavePolicy:1];
    [(FCCKPrivateDatabaseOperation *)v10 setSkipPreflight:1];
    [(FCCKPrivateSaveRecordsOperation *)v10 setCanBypassEncryptionRequirement:1];
    [(FCCKPrivateSaveRecordsOperation *)v10 setSaveRecordsCompletionBlock:&__block_literal_global_78_2];
    v13 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v13 addOperation:v10];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "failed to save subscribed channels to CK with error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_75(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_2_79;
    v5[3] = &unk_1E7C36EA0;
    v6 = v3;
    __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_2_79(v5);
  }
}

void __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke_2_79(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "failed to save subscribed channels to CK with error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)deletePersonalizationVector
{
  [MEMORY[0x1E696AF00] isMainThread];
  if ([(FCNewsletterManager *)self enabled])
  {
    [(FCNewsletterManager *)self setCachedVector:0];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:FCNewsletterManagerCachedVectorKey];

    v4 = objc_alloc_init(FCDeleteNewsletterPersonalizationVectorCommand);
    [(FCCommandQueue *)self->_endpointCommandQueue addCommand:v4];
    [(FCNewsletterManager *)self saveToCloudKitSubscribedChannels:MEMORY[0x1E695E0F0]];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(FCNewsletterManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(FCNewsletterManager *)self observers];
  [observers removeObject:observerCopy];
}

- (void)notifyObservers
{
  [(FCNewsletterManager *)self notifyObserversWithPreviousSubscription:self->_subscription];
  cachedNewsletters = self->_cachedNewsletters;

  [(FCNewsletterManager *)self notifyObserversWithPreviousNewsletters:cachedNewsletters updatedNewsletters:cachedNewsletters];
}

- (void)notifyObserversWithPreviousSubscription:(int64_t)subscription
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(FCNewsletterManager *)self observers];
  v5 = [observers copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) newsletterSubscriptionChangedFromSubscription:subscription];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversWithPreviousNewsletters:(id)newsletters updatedNewsletters:(id)updatedNewsletters
{
  v20 = *MEMORY[0x1E69E9840];
  newslettersCopy = newsletters;
  updatedNewslettersCopy = updatedNewsletters;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  observers = [(FCNewsletterManager *)self observers];
  v9 = [observers copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) didUpdateNewslettersFrom:newslettersCopy to:updatedNewslettersCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end