@interface FCNewsletterManager
- (BOOL)canSubscribe;
- (BOOL)enabled;
- (BOOL)isEligibleForIssues;
- (BOOL)isSignedIntoEmailAccount;
- (BOOL)shouldSubmitPersonalizationVector;
- (FCNewsletterManager)initWithEndpointConnection:(id)a3 endpointCommandQueue:(id)a4 appleAccount:(id)a5 appConfig:(id)a6 userInfo:(id)a7 bundleSubscriptionManager:(id)a8 privateDataContext:(id)a9;
- (double)cacheTimeout;
- (id)forceSubscriptionThen:(id)a3;
- (id)forceUpdateSubscription;
- (id)getWebToken;
- (id)updateSubscription;
- (int64_t)activeNewsletter;
- (int64_t)includeOptionsForNewsletter:(int64_t)a3;
- (int64_t)issueOptinStatus;
- (int64_t)subscriptionStatusForNewsletter:(int64_t)a3;
- (int64_t)updatedIncludeOptionsWithNewsletter:(int64_t)a3 includeOptions:(int64_t)a4;
- (void)addObserver:(id)a3;
- (void)appleAccountChanged;
- (void)deletePersonalizationVector;
- (void)notifyObservers;
- (void)notifyObserversWithPreviousNewsletters:(id)a3 updatedNewsletters:(id)a4;
- (void)notifyObserversWithPreviousSubscription:(int64_t)a3;
- (void)optIntoSports;
- (void)optOutOfIssues;
- (void)optOutOfSports;
- (void)removeObserver:(id)a3;
- (void)resetCaches;
- (void)saveToCloudKitSubscribedChannels:(id)a3;
- (void)submitPersonalizationVector:(id)a3 subscribedBundleChannelIDs:(id)a4;
- (void)subscribeFromPrivacyModalCTA;
- (void)subscribeFromPrivacyModalCTAWithCompletion:(id)a3;
- (void)subscribeTo:(int64_t)a3;
- (void)subscribeTo:(int64_t)a3 completion:(id)a4;
- (void)subscribeTo:(int64_t)a3 includeOptions:(int64_t)a4;
- (void)subscribeTo:(int64_t)a3 includeOptions:(int64_t)a4 completion:(id)a5;
- (void)unsubscribe;
- (void)updateCacheWithNewsletterString:(id)a3 includeArray:(id)a4 newsletters:(id)a5;
@end

@implementation FCNewsletterManager

- (id)forceUpdateSubscription
{
  if ([(FCNewsletterManager *)self enabled])
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__FCNewsletterManager_forceUpdateSubscription__block_invoke_2;
    v9[3] = &unk_1E7C39ED0;
    v9[4] = v3;
    v5 = [v4 initWithResolver:v9];
    updateSubscriptionPromise = v3->_updateSubscriptionPromise;
    v3->_updateSubscriptionPromise = v5;

    v7 = v3->_updateSubscriptionPromise;
    objc_sync_exit(v3);
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
  v3 = [(FCAppleAccount *)self->_appleAccount iTunesAccountName];
  v4 = v3;
  if (v3 != self->_activeiTunesAccountName && ![(NSString *)v3 isEqualToString:?])
  {
    v5 = FCNewsletterLog;
    if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Newsletter Manager: account changed, resetting caches", v7, 2u);
    }

    [(FCNewsletterManager *)self resetCaches];
  }

  v6 = [(FCNewsletterManager *)self forceUpdateSubscription];
}

- (BOOL)enabled
{
  v2 = [(FCNewsAppConfigurationManager *)self->_appConfig possiblyUnfetchedAppConfiguration];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 integerForKey:@"news.onboarding.version.latest_completed"];

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 integerForKey:@"news.onboarding.version.debug_latest_completed"];

  v7 = v6 >= 0 ? v6 : v4;
  if (v7 >= 1)
  {
    v8 = [v2 newsletterSubscriptionType] != 0;
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
  v3 = [(FCNewsAppConfigurationManager *)self->_appConfig possiblyUnfetchedAppConfiguration];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 86400.0;
  }

  v5 = [(FCNewsAppConfigurationManager *)self->_appConfig possiblyUnfetchedAppConfiguration];
  [v5 newsletterSubscriptionStatusCacheTimeout];
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
    v8 = self->_updateSubscriptionPromise;
    goto LABEL_5;
  }

  v3 = self;
  objc_sync_enter(v3);
  [(NSDate *)v3->_cacheExpiration timeIntervalSinceNow];
  if (v4 < 0.0)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    v6 = [v5 dateByAddingTimeInterval:60.0];
    cacheExpiration = v3->_cacheExpiration;
    v3->_cacheExpiration = v6;

    objc_sync_exit(v3);
    v8 = [(FCNewsletterManager *)v3 forceUpdateSubscription];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = v3->_updateSubscriptionPromise;
  objc_sync_exit(v3);

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
  v2 = [MEMORY[0x1E695DEC8] array];
  cachedNewsletters = obj->_cachedNewsletters;
  obj->_cachedNewsletters = v2;

  v4 = [MEMORY[0x1E695DF00] distantPast];
  cacheExpiration = obj->_cacheExpiration;
  obj->_cacheExpiration = v4;

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = v6;
  v8 = obj->_subscription - 1;
  if (v8 > 2)
  {
    v9 = @"UNKNOWN";
  }

  else
  {
    v9 = off_1E7C46CC0[v8];
  }

  [v6 setObject:v9 forKey:FCNewsletterManagerSubscriptionKey];

  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v10 setInteger:obj->_includeOptions forKey:FCNewsletterManagerIncludeKey];

  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:obj->_cachedNewsletters];
  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v12 setObject:v11 forKey:FCNewsletterManagerNewslettersKey];

  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v13 setObject:obj->_cacheExpiration forKey:FCNewsletterManagerCacheAgeKey];

  objc_sync_exit(obj);
}

- (FCNewsletterManager)initWithEndpointConnection:(id)a3 endpointCommandQueue:(id)a4 appleAccount:(id)a5 appConfig:(id)a6 userInfo:(id)a7 bundleSubscriptionManager:(id)a8 privateDataContext:(id)a9
{
  v16 = a3;
  v56 = a4;
  v17 = a5;
  v55 = a6;
  v54 = a7;
  v53 = a8;
  v18 = a9;
  v58.receiver = self;
  v58.super_class = FCNewsletterManager;
  v19 = [(FCNewsletterManager *)&v58 init];
  v20 = v19;
  if (v19)
  {
    v51 = v17;
    v52 = v16;
    objc_storeStrong(&v19->_endpointConnection, a3);
    objc_storeStrong(&v20->_endpointCommandQueue, a4);
    objc_storeStrong(&v20->_appleAccount, a5);
    objc_storeStrong(&v20->_appConfig, a6);
    objc_storeStrong(&v20->_userInfo, a7);
    objc_storeStrong(&v20->_bundleSubscriptionManager, a8);
    v21 = [v18 internalPrivateDataContext];
    v22 = [v21 privateDatabase];
    database = v20->_database;
    v20->_database = v22;

    v24 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v20->_observers;
    v20->_observers = v24;

    v26 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:v20];
    updateSubscriptionPromise = v20->_updateSubscriptionPromise;
    v20->_updateSubscriptionPromise = v26;

    v28 = [MEMORY[0x1E695E000] standardUserDefaults];
    v29 = [v28 objectForKey:FCNewsletterManagerSubscriptionKey];

    v30 = [MEMORY[0x1E695E000] standardUserDefaults];
    v31 = [v30 integerForKey:FCNewsletterManagerIncludeKey];

    v32 = [MEMORY[0x1E695E000] standardUserDefaults];
    v33 = [v32 objectForKey:FCNewsletterManagerNewslettersKey];

    v57 = 0;
    v34 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v33 error:&v57];
    v50 = v57;
    v35 = [MEMORY[0x1E695E000] standardUserDefaults];
    v36 = [v35 objectForKey:FCNewsletterManagerCacheAgeKey];

    v37 = [MEMORY[0x1E695E000] standardUserDefaults];
    v38 = [v37 objectForKey:FCNewsletterManagerCachedVectorKey];

    cachedWebToken = v20->_cachedWebToken;
    v20->_cachedWebToken = 0;

    v40 = [MEMORY[0x1E695DF00] distantPast];
    webTokenExpiration = v20->_webTokenExpiration;
    v20->_webTokenExpiration = v40;

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
      v44 = v34;
    }

    else
    {
      v44 = [MEMORY[0x1E695DEC8] array];
    }

    cachedNewsletters = v20->_cachedNewsletters;
    v20->_cachedNewsletters = v44;
    v17 = v51;

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

    v48 = [(FCAppleAccount *)v20->_appleAccount iTunesAccountName];
    [(FCNewsletterManager *)v20 setActiveiTunesAccountName:v48];

    [v51 addObserver:v20];
    v16 = v52;
  }

  return v20;
}

- (int64_t)activeNewsletter
{
  if (![(FCNewsletterManager *)self enabled])
  {
    return 0;
  }

  v3 = [(FCNewsAppConfigurationManager *)self->_appConfig appConfiguration];
  v4 = [v3 newsletterSubscriptionType];

  return v4;
}

- (BOOL)canSubscribe
{
  v3 = [(FCNewsletterManager *)self activeNewsletter];
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  return [(FCNewsletterManager *)self canSubscribeToNewsletter:v3];
}

- (int64_t)subscriptionStatusForNewsletter:(int64_t)a3
{
  if (!a3)
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

  if (a3 == 2 && self->_subscription == 3)
  {
    return 5;
  }

  v7 = [(FCNewsletterManager *)self activeNewsletter];
  if (a3 != 1 && v7 != a3)
  {
    return 3;
  }

  if (self->_subscription == a3)
  {
    return 2;
  }

  return v6;
}

- (BOOL)isEligibleForIssues
{
  v3 = [(FCNewsAppConfigurationManager *)self->_appConfig appConfiguration];
  v4 = [v3 issuesNewsletterOptinEnabled];

  if (!v4 || ![(FCAppleAccount *)self->_appleAccount isUserSignedInToiCloud]|| ![(FCAppleAccount *)self->_appleAccount isPrimaryAccountEmailAddress])
  {
    return 0;
  }

  v5 = [(FCBundleSubscriptionManagerType *)self->_bundleSubscriptionManager cachedSubscription];
  v6 = objc_getAssociatedObject(v5, (v5 + 1));
  v7 = [v6 unsignedIntegerValue];
  v8 = v7;
  v9 = objc_getAssociatedObject(v5, ~v7);
  v10 = ([v9 unsignedIntegerValue] ^ v8) & 1;

  return v10;
}

- (BOOL)isSignedIntoEmailAccount
{
  v3 = [(FCAppleAccount *)self->_appleAccount isUserSignedInToiCloud];
  if (v3)
  {
    appleAccount = self->_appleAccount;

    LOBYTE(v3) = [(FCAppleAccount *)appleAccount isPrimaryAccountEmailAddress];
  }

  return v3;
}

- (int64_t)issueOptinStatus
{
  v3 = [(FCNewsAppConfigurationManager *)self->_appConfig appConfiguration];
  v4 = [v3 issuesNewsletterOptinEnabled];

  if (!v4)
  {
    return 3;
  }

  if (![(FCNewsletterManager *)self isSignedIntoEmailAccount])
  {
    return 4;
  }

  v5 = [(FCBundleSubscriptionManagerType *)self->_bundleSubscriptionManager cachedSubscription];
  v6 = objc_getAssociatedObject(v5, (v5 + 1));
  v7 = [v6 unsignedIntegerValue];
  v8 = v7;
  v9 = objc_getAssociatedObject(v5, ~v7);
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

- (int64_t)updatedIncludeOptionsWithNewsletter:(int64_t)a3 includeOptions:(int64_t)a4
{
  v4 = a4 & 4;
  v5 = a4 | 1;
  if (a3 != 3)
  {
    v5 = a4;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a3 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)subscribeTo:(int64_t)a3 includeOptions:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCNewsletterManager *)self enabled];
  if (!a3 || !v7)
  {
    goto LABEL_25;
  }

  v8 = [(FCNewsletterManager *)self updatedIncludeOptionsWithNewsletter:a3 includeOptions:a4];
  v9 = FCNewsletterLog;
  if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v10 = @"UNKNOWN";
    }

    else
    {
      v10 = off_1E7C46CC0[a3 - 1];
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
  v17 = self;
  objc_sync_enter(v17);
  subscription = v17->_subscription;
  includeOptions = v17->_includeOptions;
  v17->_subscription = a3;
  v17->_includeOptions = v8;
  if (subscription != a3 || v8 != includeOptions)
  {
    [(FCNewsletterManager *)v17 notifyObserversWithPreviousSubscription:?];
  }

  objc_sync_exit(v17);

  v20 = [FCNewsletterSubscribeCommand alloc];
  if (a3 > 3)
  {
    v21 = @"UNKNOWN";
  }

  else
  {
    v21 = off_1E7C46CC0[a3 - 1];
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
  [(FCCommandQueue *)v17->_endpointCommandQueue addCommand:v25];

LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)subscribeTo:(int64_t)a3 includeOptions:(int64_t)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a5;
  [MEMORY[0x1E696AF00] isMainThread];
  v9 = [(FCNewsletterManager *)self enabled];
  if (a3 && v9)
  {
    v10 = [(FCNewsletterManager *)self updatedIncludeOptionsWithNewsletter:a3 includeOptions:a4];
    v11 = FCNewsletterLog;
    if (!os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    if (a3 > 3)
    {
      v12 = @"UNKNOWN";
    }

    else
    {
      v12 = off_1E7C46CC0[a3 - 1];
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
          v19 = [(FCNewsletterManager *)self endpointConnection];
          if (a3 > 3)
          {
            v20 = @"UNKNOWN";
          }

          else
          {
            v20 = off_1E7C46CC0[a3 - 1];
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
                v27 = v8;
                [v19 newsletterSubscribeTo:v20 includeArray:v23 callbackQueue:v24 completion:v26];

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

- (int64_t)includeOptionsForNewsletter:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(FCNewsletterManager *)self userInfo];
    v6 = [v5 sportsOnboardingState] == 1;

    return 4 * v6;
  }

  else if (a3 == 3)
  {
    if ([(FCNewsletterManager *)self canOptIntoIssues]|| [(FCNewsletterManager *)self isOptedIntoIssues])
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    v8 = [(FCNewsletterManager *)self userInfo];
    v9 = [v8 sportsOnboardingState];

    if (v9 == 1)
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

- (void)subscribeTo:(int64_t)a3
{
  v5 = [(FCNewsletterManager *)self includeOptionsForNewsletter:?];

  [(FCNewsletterManager *)self subscribeTo:a3 includeOptions:v5];
}

- (void)subscribeTo:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(FCNewsletterManager *)self subscribeTo:a3 includeOptions:[(FCNewsletterManager *)self includeOptionsForNewsletter:a3] completion:v6];
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

- (void)subscribeFromPrivacyModalCTAWithCompletion:(id)a3
{
  v4 = a3;
  [(FCNewsletterManager *)self subscribeTo:[(FCNewsletterManager *)self activeNewsletter] completion:v4];
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
  v3 = [(FCNewsletterManager *)self includeOptions];
  v4 = FCNewsletterLog;
  v5 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 2) != 0)
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

- (id)forceSubscriptionThen:(id)a3
{
  v4 = a3;
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
  v11 = v4;
  v7 = v4;
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
  v3 = [(FCNewsletterManager *)self includeOptions];
  v4 = FCNewsletterLog;
  v5 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 4) != 0)
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
  v3 = [(FCNewsletterManager *)self includeOptions];
  v4 = FCNewsletterLog;
  v5 = os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 4) != 0)
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
    v3 = [(FCNewsletterManager *)self webTokenExpiration];
    [v3 timeIntervalSinceNow];
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

- (void)updateCacheWithNewsletterString:(id)a3 includeArray:(id)a4 newsletters:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v44 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v45 = v10;
  subscription = v10->_subscription;
  if (v8)
  {
    v11 = v8;
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

  if (v9)
  {
    v13 = v9;
    v14 = [MEMORY[0x1E695DFB0] null];

    if (v14 == v13)
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
      v40 = a5;
      v41 = v9;
      v42 = v8;
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
            v20 = [v19 isEqualToString:{@"ARTICLES", v39, v40, v41, v42}];
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

      v9 = v41;
      v8 = v42;
      a5 = v40;
      v13 = v39;
    }

    v45->_includeOptions = v16;
  }

  if (v44)
  {
    p_cachedNewsletters = &v45->_cachedNewsletters;
    if (![(NSArray *)v45->_cachedNewsletters fc_isEqualToArray:v44])
    {
      v25 = [*p_cachedNewsletters mutableCopy];
      objc_storeStrong(p_cachedNewsletters, a5);
      [(FCNewsletterManager *)v45 notifyObserversWithPreviousNewsletters:v25 updatedNewsletters:v44];
    }
  }

  if (v45->_subscription)
  {
    v26 = [MEMORY[0x1E695DF00] now];
    [(FCNewsletterManager *)v45 cacheTimeout];
    v27 = [v26 dateByAddingTimeInterval:?];
    cacheExpiration = v45->_cacheExpiration;
    v45->_cacheExpiration = v27;

    v29 = [MEMORY[0x1E695E000] standardUserDefaults];
    v30 = v29;
    v31 = v45->_subscription - 1;
    if (v31 > 2)
    {
      v32 = @"UNKNOWN";
    }

    else
    {
      v32 = off_1E7C46CC0[v31];
    }

    [v29 setObject:v32 forKey:{FCNewsletterManagerSubscriptionKey, v39, v40, v41, v42}];

    v33 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v33 setInteger:v45->_includeOptions forKey:FCNewsletterManagerIncludeKey];

    v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v45->_cachedNewsletters];
    v35 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v35 setObject:v34 forKey:FCNewsletterManagerNewslettersKey];

    v36 = [MEMORY[0x1E695E000] standardUserDefaults];
    v37 = [MEMORY[0x1E695DF00] now];
    [v36 setObject:v37 forKey:FCNewsletterManagerCacheAgeKey];

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
  v3 = [(FCNewsletterManager *)self enabled];
  if (v3)
  {
    LOBYTE(v3) = [(FCNewsletterManager *)self subscription]== 3 || [(FCNewsletterManager *)self subscription]== 2 && ([(FCNewsletterManager *)self isOptedIntoIssues]|| [(FCNewsletterManager *)self includeSportsVector]);
  }

  return v3;
}

- (void)submitPersonalizationVector:(id)a3 subscribedBundleChannelIDs:(id)a4
{
  v14 = a3;
  v6 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v14 && [(FCNewsletterManager *)self shouldSubmitPersonalizationVector])
  {
    v7 = [v14 data];
    v8 = [v7 base64EncodedStringWithOptions:0];

    if (([v8 isEqualToString:&stru_1F2DC7DC0] & 1) == 0)
    {
      v9 = [(FCNewsletterManager *)self cachedVector];
      v10 = [v8 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        [(FCNewsletterManager *)self setCachedVector:v8];
        v11 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v11 setObject:v8 forKey:FCNewsletterManagerCachedVectorKey];

        v12 = [[FCSubmitNewsletterPersonalizationVectorCommand alloc] initWithPersonalizationVector:v8];
        [(FCCommandQueue *)self->_endpointCommandQueue addCommand:v12];
      }
    }

    if ([(FCNewsletterManager *)self isOptedIntoIssues])
    {
      v13 = [v6 allObjects];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    [(FCNewsletterManager *)self saveToCloudKitSubscribedChannels:v13];
  }
}

- (void)saveToCloudKitSubscribedChannels:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695BA90]);
  v6 = [v5 initWithZoneName:@"UserPrivacyExporter" ownerName:*MEMORY[0x1E695B728]];
  v7 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v6];
  v8 = objc_alloc_init(FCCKPrivateSaveRecordZonesOperation);
  v19[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(FCCKPrivateSaveRecordZonesOperation *)v8 setRecordZonesToSave:v9];

  v10 = [(FCNewsletterManager *)self database];
  [(FCCKPrivateDatabaseOperation *)v8 setDatabase:v10];

  [(FCOperation *)v8 setQualityOfService:17];
  [(FCCKPrivateDatabaseOperation *)v8 setSkipPreflight:1];
  [(FCCKPrivateSaveRecordZonesOperation *)v8 setCanBypassEncryptionRequirement:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__FCNewsletterManager_saveToCloudKitSubscribedChannels___block_invoke;
  v15[3] = &unk_1E7C46CA0;
  v16 = v6;
  v17 = v4;
  v18 = self;
  v11 = v4;
  v12 = v6;
  [(FCCKPrivateSaveRecordZonesOperation *)v8 setSaveRecordZonesCompletionBlock:v15];
  v13 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v13 addOperation:v8];

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
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 removeObjectForKey:FCNewsletterManagerCachedVectorKey];

    v4 = objc_alloc_init(FCDeleteNewsletterPersonalizationVectorCommand);
    [(FCCommandQueue *)self->_endpointCommandQueue addCommand:v4];
    [(FCNewsletterManager *)self saveToCloudKitSubscribedChannels:MEMORY[0x1E695E0F0]];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(FCNewsletterManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(FCNewsletterManager *)self observers];
  [v5 removeObject:v4];
}

- (void)notifyObservers
{
  [(FCNewsletterManager *)self notifyObserversWithPreviousSubscription:self->_subscription];
  cachedNewsletters = self->_cachedNewsletters;

  [(FCNewsletterManager *)self notifyObserversWithPreviousNewsletters:cachedNewsletters updatedNewsletters:cachedNewsletters];
}

- (void)notifyObserversWithPreviousSubscription:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(FCNewsletterManager *)self observers];
  v5 = [v4 copy];

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

        [*(*(&v11 + 1) + 8 * v9++) newsletterSubscriptionChangedFromSubscription:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversWithPreviousNewsletters:(id)a3 updatedNewsletters:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(FCNewsletterManager *)self observers];
  v9 = [v8 copy];

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

        [*(*(&v15 + 1) + 8 * v13++) didUpdateNewslettersFrom:v6 to:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end