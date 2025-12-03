@interface FCBundleChannelProvider
- (FCBundleChannelProviderDelegate)delegate;
- (NSArray)bundleChannelIDs;
- (NSString)bundleChannelIDsVersion;
- (id)initWithLocalStore:(void *)store appActivityMonitor:(void *)monitor configurationManager:(void *)manager contentContext:;
- (void)activityObservingApplicationWindowWillBecomeForeground;
- (void)loadInitialBundleChannelIDsWithCompletion:(id)completion;
- (void)refreshBundleChannelIDsWithCompletion:(id *)completion;
@end

@implementation FCBundleChannelProvider

- (NSArray)bundleChannelIDs
{
  selfCopy = self;
  if (self)
  {
    self = self->_accessLock;
  }

  [(FCBundleChannelProvider *)self lock];
  v3 = selfCopy->_bundleChannelIDs;
  [(NFUnfairLock *)selfCopy->_accessLock unlock];

  return v3;
}

- (NSString)bundleChannelIDsVersion
{
  selfCopy = self;
  if (self)
  {
    self = self->_accessLock;
  }

  [(FCBundleChannelProvider *)self lock];
  v3 = selfCopy->_bundleChannelIDsVersion;
  [(NFUnfairLock *)selfCopy->_accessLock unlock];

  return v3;
}

- (void)activityObservingApplicationWindowWillBecomeForeground
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __81__FCBundleChannelProvider_activityObservingApplicationWindowWillBecomeForeground__block_invoke;
  v2[3] = &unk_1E7C36EA0;
  v2[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v2];
}

- (id)initWithLocalStore:(void *)store appActivityMonitor:(void *)monitor configurationManager:(void *)manager contentContext:
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a2;
  storeCopy = store;
  monitorCopy = monitor;
  managerCopy = manager;
  if (self && (v42.receiver = self, v42.super_class = FCBundleChannelProvider, (v14 = objc_msgSendSuper2(&v42, sel_init)) != 0))
  {
    v15 = v14;
    v38 = managerCopy;
    v39 = monitorCopy;
    v41 = v10;
    objc_storeStrong(v14 + 2, a2);
    objc_storeStrong(v15 + 4, monitor);
    objc_storeStrong(v15 + 5, manager);
    v16 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    v17 = v15[3];
    v15[3] = v16;

    v40 = storeCopy;
    [storeCopy addObserver:v15];
    array = [MEMORY[0x1E695DEC8] array];
    [v15 setBundleChannelIDs:array];

    string = [MEMORY[0x1E696AEC0] string];
    [v15 setBundleChannelIDsVersion:string];

    v20 = v15;
    v21 = v15[2];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    allKeys = [v21 allKeys];
    v23 = [allKeys countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(allKeys);
          }

          v27 = *(*(&v43 + 1) + 8 * i);
          objc_opt_class();
          v28 = [v21 objectForKey:v27];
          if (v28)
          {
            if (objc_opt_isKindOfClass())
            {
              v29 = v28;
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          if (v30 && [v27 isEqualToString:@"bundleChannelIDs"])
          {
            v31 = [v30 copy];
            [v20 setBundleChannelIDs:v31];
          }

          objc_opt_class();
          v32 = [v21 objectForKey:v27];
          if (v32)
          {
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          if (v34 && [v27 isEqualToString:@"bundleChannelIDsVersion"])
          {
            v35 = [v34 copy];
            [v20 setBundleChannelIDsVersion:v35];
          }
        }

        v24 = [allKeys countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v24);
    }

    storeCopy = v40;
    v10 = v41;
    managerCopy = v38;
    monitorCopy = v39;
  }

  else
  {
    v20 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)refreshBundleChannelIDsWithCompletion:(id *)completion
{
  v3 = a2;
  if (completion)
  {
    objc_initWeak(&location, completion);
    v4 = completion[4];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke;
    v5[3] = &unk_1E7C40DA0;
    objc_copyWeak(&v7, &location);
    v6 = v3;
    FCCoreConfigurationFetch(v4, v5);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)loadInitialBundleChannelIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  bundleChannelIDs = [(FCBundleChannelProvider *)self bundleChannelIDs];
  if ([bundleChannelIDs count])
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    [(FCBundleChannelProvider *)&self->super.isa refreshBundleChannelIDsWithCompletion:completionCopy];
  }
}

void __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7C40D78;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);
}

void __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 paidBundleConfig];
  v6 = [v5 offeredBundlePurchaseIDs];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = +[FCAppleAccount sharedAccount];
    v10 = [v9 contentStoreFrontID];
    v11 = [v8 stringWithFormat:@"%@-%@", v7, v10];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_12;
    v20[3] = &unk_1E7C40D50;
    v21 = v11;
    v22 = v4;
    v23 = *(a1 + 40);
    v12 = v11;
    v13 = v20;
    if (v4)
    {
      v14 = v12;
      v15 = [FCPurchaseLookupFetchOperation alloc];
      v28[0] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v17 = [(FCPurchaseLookupFetchOperation *)v15 initWithPurchaseIDs:v16 contentContext:v4[5]];

      [(FCOperation *)v17 setQualityOfService:25];
      [(FCOperation *)v17 setRelativePriority:1];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __69__FCBundleChannelProvider_fetchBundleTagIDsForPurchaseID_completion___block_invoke;
      v26[3] = &unk_1E7C37A38;
      v27 = v13;
      [(FCFetchOperation *)v17 setFetchCompletionBlock:v26];
      v18 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
      [v18 addOperation:v17];
    }
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_3;
    v24[3] = &unk_1E7C379C8;
    v25 = *(a1 + 40);
    __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_3(v24);
    v12 = v25;
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "BundleChannelProvider couldn't find bundle purchaseID from configuration", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__FCBundleChannelProvider_refreshBundleChannelIDsWithCompletion___block_invoke_12(uint64_t a1, void *a2)
{
  v19 = a2;
  if (v19)
  {
    v3 = [v19 bundleChannelIDsByPurchaseID];
    v4 = [v3 objectForKey:*(a1 + 32)];

    v5 = [v19 bundleChannelIDsVersion];
    if (v4)
    {
      v6 = [*(a1 + 40) bundleChannelIDs];
      v7 = [v6 copy];

      v8 = [*(a1 + 40) bundleChannelIDsVersion];
      v9 = [v8 copy];

      if (![v7 isEqualToArray:v4] || (objc_msgSend(v9, "isEqualToString:", v5) & 1) == 0)
      {
        v10 = *(a1 + 40);
        v11 = v4;
        v12 = v5;
        if (v10)
        {
          [v10[3] lock];
          objc_storeStrong(v10 + 6, v4);
          objc_storeStrong(v10 + 7, v5);
          [v10[3] unlock];
        }

        v13 = *(a1 + 40);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        [v14 setObject:v11 forKey:@"bundleChannelIDs"];
        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = *(v15 + 16);
        }

        else
        {
          v16 = 0;
        }

        [v16 setObject:v12 forKey:@"bundleChannelIDsVersion"];
        v17 = [*(a1 + 40) delegate];
        [v17 bundleChannelProvider:*(a1 + 40) bundleChannelIDsDidChangeWithChannelIDs:v11 version:v12];
      }
    }
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))();
  }
}

void __69__FCBundleChannelProvider_fetchBundleTagIDsForPurchaseID_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 fetchedObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (FCBundleChannelProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end