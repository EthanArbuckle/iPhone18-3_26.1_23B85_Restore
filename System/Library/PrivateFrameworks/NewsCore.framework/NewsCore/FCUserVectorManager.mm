@interface FCUserVectorManager
- (FCUserVectorManager)initWithContext:(id)context;
- (void)_applicationDidEnterBackground;
- (void)_cacheGSToken;
- (void)_fetchUserVector:(id)vector;
- (void)_submitPersonalizationVector;
@end

@implementation FCUserVectorManager

- (void)_cacheGSToken
{
  context = [(FCUserVectorManager *)self context];
  newsletterManager = [context newsletterManager];

  v3 = +[FCAppleAccount sharedAccount];
  if ([newsletterManager enabled])
  {
    getGSToken = [v3 getGSToken];
  }
}

- (FCUserVectorManager)initWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = FCUserVectorManager;
  v6 = [(FCUserVectorManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:17];
    queue = v7->_queue;
    v7->_queue = v8;

    appActivityMonitor = [contextCopy appActivityMonitor];
    [appActivityMonitor addObserver:v7];
  }

  return v7;
}

- (void)_applicationDidEnterBackground
{
  [MEMORY[0x1E696AF00] isMainThread];

  [(FCUserVectorManager *)self _submitPersonalizationVector];
}

- (void)_submitPersonalizationVector
{
  context = [(FCUserVectorManager *)self context];
  newsletterManager = [context newsletterManager];
  shouldSubmitPersonalizationVector = [newsletterManager shouldSubmitPersonalizationVector];

  if (shouldSubmitPersonalizationVector)
  {
    context2 = [(FCUserVectorManager *)self context];
    appConfigurationManager = [context2 appConfigurationManager];
    possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
    personalizationTreatment = [possiblyUnfetchedAppConfiguration personalizationTreatment];

    context3 = [(FCUserVectorManager *)self context];
    backgroundTaskable = [context3 backgroundTaskable];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_2;
    v29[3] = &unk_1E7C3A3A0;
    v12 = backgroundTaskable;
    v30 = v12;
    v31 = &v32;
    v13 = [v12 fc_beginBackgroundTaskWithName:@"User Vector Upload" expirationHandler:v29];
    v33[3] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_3;
    aBlock[3] = &unk_1E7C3A3A0;
    v14 = v12;
    v27 = v14;
    v28 = &v32;
    v15 = _Block_copy(aBlock);
    aggregateVectorProvider = [(FCUserVectorManager *)self aggregateVectorProvider];
    v17 = aggregateVectorProvider;
    if (aggregateVectorProvider)
    {
      v18 = aggregateVectorProvider;
      v19 = dispatch_get_global_queue(17, 0);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_8;
      v22[3] = &unk_1E7C43498;
      v22[4] = self;
      v23 = v18;
      v24 = personalizationTreatment;
      v25 = v15;
      v20 = v18;
      dispatch_async(v19, v22);
    }

    else
    {
      v21 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_FAULT, "Not submitting personalization vector due to missing aggregate vector provider", buf, 2u);
      }
    }

    _Block_object_dispose(&v32, 8);
  }
}

void __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_4;
  v4[3] = &unk_1E7C3A3A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  FCPerformBlockOnMainThread(v4);
}

void __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_8(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_2_9;
  v9[3] = &unk_1E7C434C0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 _fetchUserVector:v9];
}

void __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_2_9(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) context];
  v7 = [v6 feedPersonalizer];
  v8 = [*(a1 + 48) context];
  v9 = [v8 newsletterManager];
  v10 = [v3 computePersonalizationVectorWithAggregateVectorProvider:v4 personalizationTreatment:v5 tagRanker:v7 options:{objc_msgSend(v9, "includeOptions")}];

  v11 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v10 personalizationVector];
    v14 = [v10 version];
    v15 = [v10 bundleSubscribedVector];
    v16 = [v10 bundleSubscribedVectorVersion];
    *buf = 138413058;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "Generated personalization vector %@ with version %@, and bundle subscribed vector %@ with version %@.", buf, 0x2Au);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_10;
  v21[3] = &unk_1E7C43498;
  v17 = *(a1 + 56);
  v21[4] = *(a1 + 48);
  v22 = v10;
  v23 = v3;
  v24 = v17;
  v18 = v3;
  v19 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v21);

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __51__FCUserVectorManager__submitPersonalizationVector__block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 newsletterManager];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) subscribedBundleChannelIDs];
  [v3 submitPersonalizationVector:v4 subscribedBundleChannelIDs:v5];

  v6 = *(*(a1 + 56) + 16);

  return v6();
}

- (void)_fetchUserVector:(id)vector
{
  vectorCopy = vector;
  userVector = [(FCUserVectorManager *)self userVector];
  if (!userVector)
  {
    goto LABEL_4;
  }

  v6 = userVector;
  userVector2 = [(FCUserVectorManager *)self userVector];
  if (!userVector2)
  {

    goto LABEL_6;
  }

  v8 = userVector2;
  date = [MEMORY[0x1E695DF00] date];
  lastUpdated = [(FCUserVectorManager *)self lastUpdated];
  [date timeIntervalSinceDate:lastUpdated];
  v12 = v11;

  if (v12 <= 86400.0)
  {
LABEL_6:
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke;
    v18[3] = &unk_1E7C37778;
    v18[4] = self;
    v19 = vectorCopy;
    __40__FCUserVectorManager__fetchUserVector___block_invoke(v18);

    goto LABEL_7;
  }

LABEL_4:
  objc_initWeak(&location, self);
  queue = [(FCUserVectorManager *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_2;
  v14[3] = &unk_1E7C435B0;
  objc_copyWeak(&v16, &location);
  v14[4] = self;
  v15 = vectorCopy;
  [queue enqueueBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
LABEL_7:
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) userVector];
    (*(v1 + 16))(v1, v2, 0);
  }
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained context];
  v6 = [v5 subscriptionController];
  v7 = dispatch_get_global_queue(17, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_3;
  v9[3] = &unk_1E7C43588;
  v10 = *(a1 + 40);
  v8 = v3;
  v11 = v8;
  objc_copyWeak(&v12, (a1 + 48));
  v9[4] = *(a1 + 32);
  [v6 fetchSubscribedTagsWithCallbackQueue:v7 preferCache:1 completion:v9];

  objc_destroyWeak(&v12);
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_3(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_4;
  aBlock[3] = &unk_1E7C434E8;
  v41 = *(a1 + 40);
  v42 = *(a1 + 48);
  v4 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v25 = WeakRetained;
    v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [v13 asSports];

          if (v14)
          {
            v15 = [v13 identifier];
            [v7 insertObject:v15 atIndex:{objc_msgSend(v7, "count")}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v10);
    }

    v16 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Attempting a user vector resource fetch", buf, 2u);
    }

    v17 = v25;
    v18 = [v25 context];
    v19 = [v18 appConfigurationManager];
    v20 = dispatch_get_global_queue(17, 0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_15;
    v27[3] = &unk_1E7C43560;
    v27[4] = *(a1 + 32);
    v27[5] = v17;
    v28 = v7;
    v29 = v4;
    v21 = v4;
    v22 = v7;
    [v19 fetchAppConfigurationIfNeededWithCompletionQueue:v20 completion:v27];

    v3 = v26;
    goto LABEL_16;
  }

  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __40__FCUserVectorManager__fetchUserVector___block_invoke_5;
  v38 = &unk_1E7C379C8;
  v39 = v4;
  if (v4)
  {
    v23 = v4[2];
    v17 = v4;
    v23();
    v22 = v39;
LABEL_16:
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

uint64_t __40__FCUserVectorManager__fetchUserVector___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_2_16;
    v41[3] = &unk_1E7C37BC0;
    v42 = v6;
    v43 = *(a1 + 56);
    __40__FCUserVectorManager__fetchUserVector___block_invoke_2_16(v41);

    v8 = v42;
  }

  else
  {
    v9 = [v5 userVectorWhitelistResourceId];
    if (v9)
    {
      v8 = v9;
      v10 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v8;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Found userVectorWhitelistResourceId: %@, building fetch operation", buf, 0xCu);
      }

      v11 = [v5 userVectorModelResourceId];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v14 = FCPersonalizationLog;
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v13;
          _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Found userVectorModelResourceId: %@, building fetch operation", buf, 0xCu);
        }

        v15 = [FCResourcesFetchOperation alloc];
        v16 = [*(a1 + 32) context];
        v44[0] = v8;
        v44[1] = v13;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
        v18 = [(FCResourcesFetchOperation *)v15 initWithContext:v16 resourceIDs:v17 downloadAssets:1];

        [(FCFetchOperation *)v18 setCachePolicy:4];
        [(FCFetchOperation *)v18 setMaximumCachedAge:86400.0];
        [(FCOperation *)v18 setQualityOfService:9];
        [(FCOperation *)v18 setRelativePriority:0];
        v19 = [(FCOperation *)v18 shortOperationDescription];
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __40__FCUserVectorManager__fetchUserVector___block_invoke_29;
        v28 = &unk_1E7C43538;
        v29 = v19;
        v36 = *(a1 + 56);
        v30 = v8;
        v31 = v13;
        v32 = *(a1 + 40);
        v20 = v5;
        v21 = *(a1 + 32);
        v33 = v20;
        v34 = v21;
        v35 = *(a1 + 48);
        v22 = v13;
        v23 = v19;
        [(FCFetchOperation *)v18 setFetchCompletionBlock:&v25];
        [(FCOperation *)v18 start:v25];
      }

      else
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_23;
        v37[3] = &unk_1E7C379C8;
        v38 = *(a1 + 56);
        __40__FCUserVectorManager__fetchUserVector___block_invoke_23(v37);
        v18 = v38;
      }
    }

    else
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_17;
      v39[3] = &unk_1E7C379C8;
      v40 = *(a1 + 56);
      __40__FCUserVectorManager__fetchUserVector___block_invoke_17(v39);

      v8 = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __40__FCUserVectorManager__fetchUserVector___block_invoke_2_16(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "App config returned error: %@", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0, *(a1 + 32));
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_17(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "App config contained no userVectorWhitelistResourceId", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Didn't find a userVectorWhitelistResourceId in the News app config";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v5];
    (*(v3 + 16))(v3, 0, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_23(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "App config contained no userVectorModelResourceId", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Didn't find a userVectorModelResourceId in the News app config";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v5];
    (*(v3 + 16))(v3, 0, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_29(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_2_30;
    v62[3] = &unk_1E7C38FF0;
    v5 = &v63;
    v63 = *(a1 + 32);
    v64 = v3;
    v65 = *(a1 + 88);
    __40__FCUserVectorManager__fetchUserVector___block_invoke_2_30(v62);

    v6 = v64;
  }

  else
  {
    v7 = MEMORY[0x1E695DF20];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_31;
    v60[3] = &unk_1E7C36EC8;
    v5 = &v61;
    v61 = v3;
    v6 = [v7 fc_dictionary:v60];
    v8 = [v6 objectForKeyedSubscript:*(a1 + 40)];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = [v6 objectForKeyedSubscript:*(a1 + 48)];
      v12 = v11;
      if (v11)
      {
        v45 = v11;
        v13 = FCPersonalizationLog;
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v67 = v10;
          v68 = 2112;
          v69 = v45;
          _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Got resources: %@, %@", buf, 0x16u);
        }

        v14 = [v10 fileURL];
        v44 = v14;
        if (v14)
        {
          v43 = v14;
          v15 = v45;
          v16 = [v45 fileURL];
          v42 = v16;
          if (v16)
          {
            v40 = v12;
            v41 = v10;
            v17 = v16;
            v18 = FCPersonalizationLog;
            if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v67 = v43;
              v68 = 2112;
              v69 = v17;
              _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Got file URLs: %@, %@", buf, 0x16u);
            }

            v38 = [FCUserVector alloc];
            v32 = [*(a1 + 64) personalizationTreatment];
            v37 = [*(a1 + 72) context];
            v36 = [v37 bundleSubscriptionManager];
            v35 = [v36 bundleSubscription];
            v30 = [v35 bundleChannelIDs];
            v34 = [*(a1 + 72) context];
            v33 = [v34 bundleSubscriptionManager];
            v31 = [v33 bundleSubscription];
            v19 = [v31 bundleChannelIDsVersion];
            v20 = [*(a1 + 72) context];
            v21 = [v20 subscriptionController];
            v22 = v38;
            v39 = v17;
            v23 = [(FCUserVector *)v22 initWithWhitelistURL:v43 modelURL:v17 personalizationTreatment:v32 bundleChannelIDs:v30 bundleChannelIDsVersion:v19 subscriptionController:v21 sportsTagIDs:*(a1 + 80)];
            [*(a1 + 56) setUserVector:v23];

            v24 = [MEMORY[0x1E695DF00] date];
            [*(a1 + 56) setLastUpdated:v24];

            v25 = *(a1 + 88);
            if (v25)
            {
              v26 = [*(a1 + 56) userVector];
              (*(v25 + 16))(v25, v26, 0);
            }

            v12 = v40;
            v10 = v41;
            v15 = v45;
            v27 = v39;
          }

          else
          {
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_50;
            v46[3] = &unk_1E7C37778;
            v48 = *(a1 + 88);
            v47 = v45;
            __40__FCUserVectorManager__fetchUserVector___block_invoke_50(v46);

            v27 = v48;
          }

          v28 = v43;
        }

        else
        {
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_46;
          v49[3] = &unk_1E7C37778;
          v51 = *(a1 + 88);
          v50 = v10;
          __40__FCUserVectorManager__fetchUserVector___block_invoke_46(v49);

          v28 = v51;
          v15 = v45;
        }
      }

      else
      {
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_45;
        v52[3] = &unk_1E7C3A060;
        v55 = *(a1 + 88);
        v53 = *(a1 + 48);
        v54 = v6;
        __40__FCUserVectorManager__fetchUserVector___block_invoke_45(v52);

        v15 = v55;
      }
    }

    else
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_41;
      v56[3] = &unk_1E7C3A060;
      v59 = *(a1 + 88);
      v57 = *(a1 + 40);
      v58 = v6;
      __40__FCUserVectorManager__fetchUserVector___block_invoke_41(v56);

      v10 = v59;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_2_30(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v2;
    v9 = [v6 error];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "Fetch operation: %@ error: %@", &v10, 0x16u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 40) error];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fetchedObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FCUserVectorManager__fetchUserVector___block_invoke_2_32;
  v6[3] = &unk_1E7C43510;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_2_32(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 resourceID];
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resourceIdentifier"];
    *buf = 136315906;
    v8 = "[FCUserVectorManager _fetchUserVector:]_block_invoke_2";
    v9 = 2080;
    v10 = "FCUserVectorManager.m";
    v11 = 1024;
    v12 = 241;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [*(a1 + 32) fc_safelySetObjectAllowingNil:v3 forKeyAllowingNil:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_41(uint64_t a1)
{
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "No whitelist resource provided back from fetch operation", buf, 2u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = MEMORY[0x1E696AEC0];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v8 = [v5 stringWithFormat:@"Failed to find a resource for ID: %@, got back: %@", v6, v7];
    v9 = [v4 fc_missingResourceErrorWithDescription:v8];
    (*(v3 + 16))(v3, 0, v9);
  }
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_45(uint64_t a1)
{
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "No model resource provided back from fetch operation", buf, 2u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = MEMORY[0x1E696AEC0];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v8 = [v5 stringWithFormat:@"Failed to find a resource for ID: %@, got back: %@", v6, v7];
    v9 = [v4 fc_missingResourceErrorWithDescription:v8];
    (*(v3 + 16))(v3, 0, v9);
  }
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_46(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Whitelist resource had no fileURL", buf, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got a nil fileURL for resource: %@", *(a1 + 32)];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v6];
    (*(v3 + 16))(v3, 0, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __40__FCUserVectorManager__fetchUserVector___block_invoke_50(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Model resource had no fileURL", buf, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got a nil fileURL for resource: %@", *(a1 + 32)];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v6];
    (*(v3 + 16))(v3, 0, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end