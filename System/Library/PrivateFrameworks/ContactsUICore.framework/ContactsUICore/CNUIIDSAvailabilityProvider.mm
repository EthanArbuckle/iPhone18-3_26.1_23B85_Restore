@interface CNUIIDSAvailabilityProvider
+ (id)makeExpanseRequestsCache;
+ (id)makeFaceTimeRequestsCache;
+ (id)makeIMessageRequestsCache;
- (CNUIIDSAvailabilityProvider)init;
- (CNUIIDSAvailabilityProvider)initWithQueryControllerWrapper:(id)wrapper;
- (id)cacheForService:(int64_t)service;
- (id)validateHandles:(id)handles forService:(int64_t)service schedulerProvider:(id)provider;
- (void)startRequestForCacheMisses:(id)misses service:(int64_t)service scheduler:(id)scheduler;
@end

@implementation CNUIIDSAvailabilityProvider

- (CNUIIDSAvailabilityProvider)initWithQueryControllerWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v19.receiver = self;
  v19.super_class = CNUIIDSAvailabilityProvider;
  v6 = [(CNUIIDSAvailabilityProvider *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryControllerWrapper, wrapper);
    makeFaceTimeRequestsCache = [objc_opt_class() makeFaceTimeRequestsCache];
    faceTimeRequests = v7->_faceTimeRequests;
    v7->_faceTimeRequests = makeFaceTimeRequestsCache;

    makeIMessageRequestsCache = [objc_opt_class() makeIMessageRequestsCache];
    iMessageRequests = v7->_iMessageRequests;
    v7->_iMessageRequests = makeIMessageRequestsCache;

    makeExpanseRequestsCache = [objc_opt_class() makeExpanseRequestsCache];
    expanseRequests = v7->_expanseRequests;
    v7->_expanseRequests = makeExpanseRequestsCache;

    requestFutures = v7->_requestFutures;
    v7->_requestFutures = MEMORY[0x1E695E0F0];

    v15 = [MEMORY[0x1E6996818] synchronousSerialDispatchQueueWithName:@"com.apple.contactsuicore.CNUIIDSAvailabilityProvider"];
    resourceLock = v7->_resourceLock;
    v7->_resourceLock = v15;

    v17 = v7;
  }

  return v7;
}

+ (id)makeFaceTimeRequestsCache
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:20];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v4 = [CNUIDSFaceTimeHandleAvailabilityCache alloc];
  nonatomicCacheScheduler = [MEMORY[0x1E6996660] nonatomicCacheScheduler];
  v6 = [(CNCache *)v4 initWithBoundingStrategies:v3 resourceScheduler:nonatomicCacheScheduler];

  [(CNCache *)v6 addDidEvictHandler:&__block_literal_global_42];

  return v6;
}

+ (id)makeIMessageRequestsCache
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:20];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v4 = [CNUIDSIMessageHandleAvailabilityCache alloc];
  nonatomicCacheScheduler = [MEMORY[0x1E6996660] nonatomicCacheScheduler];
  v6 = [(CNCache *)v4 initWithBoundingStrategies:v3 resourceScheduler:nonatomicCacheScheduler];

  [(CNCache *)v6 addDidEvictHandler:&__block_literal_global_22];

  return v6;
}

+ (id)makeExpanseRequestsCache
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:20];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v4 = [CNUIDSExpanseHandleAvailabilityCache alloc];
  nonatomicCacheScheduler = [MEMORY[0x1E6996660] nonatomicCacheScheduler];
  v6 = [(CNCache *)v4 initWithBoundingStrategies:v3 resourceScheduler:nonatomicCacheScheduler];

  [(CNCache *)v6 addDidEvictHandler:&__block_literal_global_25_1];

  return v6;
}

- (CNUIIDSAvailabilityProvider)init
{
  v3 = objc_alloc_init(CNUIIDSIDQueryControllerWrapper);
  v4 = [(CNUIIDSAvailabilityProvider *)self initWithQueryControllerWrapper:v3];

  return v4;
}

- (void)startRequestForCacheMisses:(id)misses service:(int64_t)service scheduler:(id)scheduler
{
  missesCopy = misses;
  schedulerCopy = scheduler;
  if (((*(*MEMORY[0x1E6996548] + 16))() & 1) == 0)
  {
    allKeys = [missesCopy allKeys];
    queryControllerWrapper = [(CNUIIDSAvailabilityProvider *)self queryControllerWrapper];
    v12 = [CNUIIDSRequest validateHandles:allKeys forService:service scheduler:schedulerCopy queryControllerWrapper:queryControllerWrapper];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__CNUIIDSAvailabilityProvider_startRequestForCacheMisses_service_scheduler___block_invoke;
    v16[3] = &unk_1E76E92E8;
    v13 = missesCopy;
    v17 = v13;
    [v12 addSuccessBlock:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__CNUIIDSAvailabilityProvider_startRequestForCacheMisses_service_scheduler___block_invoke_2;
    v14[3] = &unk_1E76E7970;
    v15 = v13;
    [v12 addFailureBlock:v14];
  }
}

void __76__CNUIIDSAvailabilityProvider_startRequestForCacheMisses_service_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 _cn_filter:&__block_literal_global_33];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v9 handle];
        v12 = [v10 objectForKeyedSubscript:v11];
        [v12 finishWithResult:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = CNLogicalNot();
  v14 = [v3 _cn_filter:{v13, 0}];

  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(a1 + 32);
        v20 = [*(*(&v23 + 1) + 8 * j) handle];
        v21 = [v19 objectForKeyedSubscript:v20];
        v22 = [CNContactsUIError errorWithCode:209];
        [v21 finishWithError:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }
}

void __76__CNUIIDSAvailabilityProvider_startRequestForCacheMisses_service_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) finishWithError:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)cacheForService:(int64_t)service
{
  if (service == 2)
  {
    expanseRequests = [(CNUIIDSAvailabilityProvider *)self expanseRequests];
  }

  else if (service == 1)
  {
    expanseRequests = [(CNUIIDSAvailabilityProvider *)self iMessageRequests];
  }

  else
  {
    if (service)
    {
      goto LABEL_8;
    }

    expanseRequests = [(CNUIIDSAvailabilityProvider *)self faceTimeRequests];
  }

  a2 = expanseRequests;
LABEL_8:

  return a2;
}

- (id)validateHandles:(id)handles forService:(int64_t)service schedulerProvider:(id)provider
{
  handlesCopy = handles;
  v9 = MEMORY[0x1E695DF70];
  providerCopy = provider;
  array = [v9 array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = [(CNUIIDSAvailabilityProvider *)self cacheForService:service];
  resourceLock = [(CNUIIDSAvailabilityProvider *)self resourceLock];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __76__CNUIIDSAvailabilityProvider_validateHandles_forService_schedulerProvider___block_invoke;
  v26 = &unk_1E76E9330;
  v27 = handlesCopy;
  v28 = v13;
  v29 = dictionary;
  v30 = array;
  v15 = array;
  v16 = dictionary;
  v17 = v13;
  v18 = handlesCopy;
  [resourceLock performBlock:&v23];

  backgroundScheduler = [providerCopy backgroundScheduler];
  [(CNUIIDSAvailabilityProvider *)self startRequestForCacheMisses:v16 service:service scheduler:backgroundScheduler];

  v20 = [v15 _cn_map:&__block_literal_global_40];
  v21 = [MEMORY[0x1E6996798] merge:v20 schedulerProvider:providerCopy];

  return v21;
}

void __76__CNUIIDSAvailabilityProvider_validateHandles_forService_schedulerProvider___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [a1[5] objectForKey:{v7, v13}];
        v9 = v8;
        if (!v8 || [v8 isFinished] && (objc_msgSend(v9, "result:", 0), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
        {
          v11 = objc_alloc_init(CNUIDSHandleAvailabilityPromise);
          [a1[6] setObject:v11 forKeyedSubscript:v7];
          v12 = [(CNPromise *)v11 future];

          [a1[5] setObject:v12 forKey:v7];
          v9 = v12;
        }

        [a1[7] addObject:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

id __76__CNUIIDSAvailabilityProvider_validateHandles_forService_schedulerProvider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E6996798] observableWithFuture:a2];
  v3 = [MEMORY[0x1E6996798] emptyObservable];
  v4 = [v2 onError:v3];

  return v4;
}

@end