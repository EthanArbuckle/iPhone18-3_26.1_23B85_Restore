@interface DDSAssetCenter
+ (id)sharedInstance;
- (DDSAssetCenter)initWithQueue:(id)queue provider:(id)provider trialManager:(id)manager autoAssetManager:(id)assetManager createXPCInterface:(id)interface;
- (NSSet)delegates;
- (NSSet)managerInterfaces;
- (id)allContentItemsMatchingQuery:(id)query error:(id *)error;
- (id)assertionIDsForClientID:(id)d assetType:(id)type;
- (id)assetsForQuery:(id)query error:(id *)error;
- (id)contentItemsFromAssets:(id)assets matchingFilter:(id)filter;
- (id)managerInterfaceForAssetType:(id)type;
- (void)addAssertionForAssetsWithQuery:(id)query policy:(id)policy assertionID:(id)d clientID:(id)iD;
- (void)fetchAssetUpdateStatusForQuery:(id)query callback:(id)callback;
- (void)fetchTrialAssetForQuery:(id)query callback:(id)callback;
- (void)registerDelegate:(id)delegate;
- (void)removeAssertionWithIdentifier:(id)identifier assetType:(id)type;
- (void)serverDidUpdateAssetsWithType:(id)type;
- (void)setAssetTypesForDelegates:(id)delegates;
- (void)setCompatabilityVersion:(int64_t)version forAssetType:(id)type;
- (void)setUpTrialForQuery:(id)query;
- (void)setXPCServiceName:(id)name forAssetType:(id)type;
- (void)start;
- (void)trialDidReceiveAsset:(id)asset forQuery:(id)query;
- (void)trialDidStopForQuery:(id)query;
- (void)triggerDumpWithReply:(id)reply;
- (void)triggerUpdate;
- (void)unregisterDelegate:(id)delegate;
- (void)updateAssetForQuery:(id)query callback:(id)callback;
@end

@implementation DDSAssetCenter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DDSAssetCenter sharedInstance];
  }

  v3 = sharedInstance_sharedAssetCenter;

  return v3;
}

void __32__DDSAssetCenter_sharedInstance__block_invoke()
{
  attr = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create([@"com.apple.DataDeliveryServices.ddsassetcenter.queue" cStringUsingEncoding:4], attr);
  v1 = objc_alloc_init(DDSMobileAssetv2Provider);
  v2 = [[DDSTrialManager alloc] initWithWorkQueue:v0];
  v3 = objc_alloc_init(DDSMAAutoAssetManager);
  v4 = [[DDSAssetCenter alloc] initWithQueue:v0 provider:v1 trialManager:v2 autoAssetManager:v3 createXPCInterface:&__block_literal_global_301];
  v5 = sharedInstance_sharedAssetCenter;
  sharedInstance_sharedAssetCenter = v4;

  [sharedInstance_sharedAssetCenter start];
}

- (void)start
{
  assetObserver = [(DDSAssetCenter *)self assetObserver];
  [assetObserver setDelegate:self];

  trialManager = [(DDSAssetCenter *)self trialManager];
  [trialManager setDelegate:self];

  assetObserver2 = [(DDSAssetCenter *)self assetObserver];
  [assetObserver2 observeAssetType:@"com.apple.MobileAsset.LinguisticData"];

  assetObserver3 = [(DDSAssetCenter *)self assetObserver];
  [assetObserver3 observeAssetType:@"com.apple.MobileAsset.LinguisticDataAuto"];

  [(DDSAssetCenter *)self setXPCServiceName:@"com.apple.DataDeliveryServices.AssetService" forAssetType:@"com.apple.MobileAsset.LinguisticData"];

  [(DDSAssetCenter *)self setXPCServiceName:@"com.apple.DataDeliveryServices.AssetService" forAssetType:@"com.apple.MobileAsset.MecabraDictionaryRapidUpdates"];
}

DDSInterface *__32__DDSAssetCenter_sharedInstance__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DDSInterface alloc] initWithXPCServiceName:v2];

  return v3;
}

- (DDSAssetCenter)initWithQueue:(id)queue provider:(id)provider trialManager:(id)manager autoAssetManager:(id)assetManager createXPCInterface:(id)interface
{
  queueCopy = queue;
  providerCopy = provider;
  managerCopy = manager;
  assetManagerCopy = assetManager;
  interfaceCopy = interface;
  v29.receiver = self;
  v29.super_class = DDSAssetCenter;
  v17 = [(DDSAssetCenter *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_provider, provider);
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_trialManager, manager);
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    delegates = v18->_delegates;
    v18->_delegates = v19;

    v21 = objc_alloc_init(DDSAssetObserver);
    assetObserver = v18->_assetObserver;
    v18->_assetObserver = v21;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    managerInterfaceByAssetType = v18->_managerInterfaceByAssetType;
    v18->_managerInterfaceByAssetType = dictionary;

    v18->_lock._os_unfair_lock_opaque = 0;
    v25 = MEMORY[0x1E12DF5E0](interfaceCopy);
    createXPCInterface = v18->_createXPCInterface;
    v18->_createXPCInterface = v25;

    objc_storeStrong(&v18->_autoAssetManager, assetManager);
  }

  return v18;
}

- (id)managerInterfaceForAssetType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  managerInterfaceByAssetType = [(DDSAssetCenter *)self managerInterfaceByAssetType];
  v6 = [managerInterfaceByAssetType objectForKeyedSubscript:typeCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSSet)managerInterfaces
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  managerInterfaceByAssetType = [(DDSAssetCenter *)self managerInterfaceByAssetType];
  v5 = [managerInterfaceByAssetType countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(managerInterfaceByAssetType);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        managerInterfaceByAssetType2 = [(DDSAssetCenter *)self managerInterfaceByAssetType];
        v11 = [managerInterfaceByAssetType2 objectForKeyedSubscript:v9];
        [v3 addObject:v11];
      }

      v6 = [managerInterfaceByAssetType countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setCompatabilityVersion:(int64_t)version forAssetType:(id)type
{
  typeCopy = type;
  provider = [(DDSAssetCenter *)self provider];
  [provider setCompatabilityVersion:version forAssetType:typeCopy];
}

- (void)setXPCServiceName:(id)name forAssetType:(id)type
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(DDSAssetCenter *)self managerInterfaceByAssetType];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      managerInterfaceByAssetType = [(DDSAssetCenter *)self managerInterfaceByAssetType];
      v13 = [managerInterfaceByAssetType objectForKeyedSubscript:v11];
      xpcServiceName = [v13 xpcServiceName];
      v15 = [xpcServiceName isEqualToString:nameCopy];

      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    managerInterfaceByAssetType2 = [(DDSAssetCenter *)self managerInterfaceByAssetType];
    v17 = [managerInterfaceByAssetType2 objectForKeyedSubscript:v11];

    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  createXPCInterface = [(DDSAssetCenter *)self createXPCInterface];
  v17 = (createXPCInterface)[2](createXPCInterface, nameCopy);

LABEL_12:
  managerInterfaceByAssetType3 = [(DDSAssetCenter *)self managerInterfaceByAssetType];
  [managerInterfaceByAssetType3 setObject:v17 forKeyedSubscript:typeCopy];

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = DefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DDSAssetCenter registerDelegate:];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_delegates addObject:delegateCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = DefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DDSAssetCenter unregisterDelegate:];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_delegates removeObject:delegateCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAssetTypesForDelegates:(id)delegates
{
  v17 = *MEMORY[0x1E69E9840];
  delegatesCopy = delegates;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [delegatesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(delegatesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        assetObserver = [(DDSAssetCenter *)self assetObserver];
        [assetObserver observeAssetType:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [delegatesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)assetsForQuery:(id)query error:(id *)error
{
  queryCopy = query;
  array = [MEMORY[0x1E695DF70] array];
  assetType = [queryCopy assetType];
  v9 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  if (v9)
  {
    v10 = [DDSAssetQuery alloc];
    filter = [queryCopy filter];
    v12 = [filter copy];
    v13 = [(DDSAssetQuery *)v10 initWithAssetType:@"com.apple.MobileAsset.LinguisticDataAuto" filter:v12];

    -[DDSAssetQuery setCachedOnly:](v13, "setCachedOnly:", [queryCopy cachedOnly]);
    autoAssetManager = [(DDSAssetCenter *)self autoAssetManager];
    v15 = [autoAssetManager assetsForQuery:v13];
    [array addObjectsFromArray:v15];
  }

  provider = [(DDSAssetCenter *)self provider];
  v17 = [provider assetsForQuery:queryCopy errorPtr:error];
  [array addObjectsFromArray:v17];

  return array;
}

- (id)contentItemsFromAssets:(id)assets matchingFilter:(id)filter
{
  filterCopy = filter;
  assetsCopy = assets;
  provider = [(DDSAssetCenter *)self provider];
  v9 = [provider contentItemsFromAssets:assetsCopy matchingFilter:filterCopy];

  return v9;
}

- (id)allContentItemsMatchingQuery:(id)query error:(id *)error
{
  queryCopy = query;
  array = [MEMORY[0x1E695DF70] array];
  assetType = [queryCopy assetType];
  v9 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  if (v9)
  {
    v10 = [DDSAssetQuery alloc];
    filter = [queryCopy filter];
    v12 = [filter copy];
    v13 = [(DDSAssetQuery *)v10 initWithAssetType:@"com.apple.MobileAsset.LinguisticDataAuto" filter:v12];

    autoAssetManager = [(DDSAssetCenter *)self autoAssetManager];
    v15 = [autoAssetManager assetsForQuery:v13];

    provider = [(DDSAssetCenter *)self provider];
    v17 = [provider contentItemsFromAssets:v15 matchingFilter:0];
    [array addObjectsFromArray:v17];
  }

  provider2 = [(DDSAssetCenter *)self provider];
  v19 = [provider2 allContentItemsMatchingQuery:queryCopy error:error];
  [array addObjectsFromArray:v19];

  return array;
}

- (void)addAssertionForAssetsWithQuery:(id)query policy:(id)policy assertionID:(id)d clientID:(id)iD
{
  queryCopy = query;
  policyCopy = policy;
  dCopy = d;
  iDCopy = iD;
  assetType = [queryCopy assetType];
  v15 = [(DDSAssetCenter *)self managerInterfaceForAssetType:assetType];

  if (v15)
  {
    [v15 addAssertionForQuery:queryCopy policy:policyCopy assertionID:dCopy clientID:iDCopy];
  }

  else
  {
    v16 = DefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DDSAssetCenter addAssertionForAssetsWithQuery:queryCopy policy:? assertionID:? clientID:?];
    }
  }
}

- (void)removeAssertionWithIdentifier:(id)identifier assetType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = [(DDSAssetCenter *)self managerInterfaceForAssetType:typeCopy];
  v9 = v8;
  if (v8)
  {
    [v8 removeAssertionWithID:identifierCopy];
  }

  else
  {
    v10 = DefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DDSAssetCenter removeAssertionWithIdentifier:assetType:];
    }
  }
}

- (id)assertionIDsForClientID:(id)d assetType:(id)type
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  typeCopy = type;
  v8 = [(DDSAssetCenter *)self managerInterfaceForAssetType:typeCopy];
  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__DDSAssetCenter_assertionIDsForClientID_assetType___block_invoke;
    v15[3] = &unk_1E86C5C20;
    v15[4] = &v16;
    [v8 assertionIDsForClientID:dCopy reply:v15];
    v9 = DefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v17[5];
      *buf = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = dCopy;
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Found assertions: (%{public}@) for clientID: (%{public}@)", buf, 0x16u);
    }

    v11 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = DefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DDSAssetCenter assertionIDsForClientID:assetType:];
    }

    v11 = [MEMORY[0x1E695DFD8] set];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)fetchTrialAssetForQuery:(id)query callback:(id)callback
{
  queryCopy = query;
  callbackCopy = callback;
  queue = [(DDSAssetCenter *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__DDSAssetCenter_fetchTrialAssetForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  block[4] = self;
  v12 = queryCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

void __51__DDSAssetCenter_fetchTrialAssetForQuery_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trialManager];
  [v2 fetchTrialAssetForQuery:*(a1 + 40) callback:*(a1 + 48)];
}

- (void)setUpTrialForQuery:(id)query
{
  queryCopy = query;
  queue = [(DDSAssetCenter *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__DDSAssetCenter_setUpTrialForQuery___block_invoke;
  v7[3] = &unk_1E86C5C70;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_async(queue, v7);
}

void __37__DDSAssetCenter_setUpTrialForQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trialManager];
  [v2 setUpTrialForQuery:*(a1 + 40)];
}

- (NSSet)delegates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_delegates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)serverDidUpdateAssetsWithType:(id)type
{
  typeCopy = type;
  queue = [(DDSAssetCenter *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__DDSAssetCenter_serverDidUpdateAssetsWithType___block_invoke;
  v7[3] = &unk_1E86C5C70;
  v8 = typeCopy;
  selfCopy = self;
  v6 = typeCopy;
  dispatch_async(queue, v7);
}

void __48__DDSAssetCenter_serverDidUpdateAssetsWithType___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = DefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__DDSAssetCenter_serverDidUpdateAssetsWithType___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  if ([DDSMAAutoAssetManager isAutoAssetType:*(a1 + 32)])
  {
    v9 = @"com.apple.MobileAsset.LinguisticData";
    [*(a1 + 40) autoAssetManager];
  }

  else
  {
    v9 = *(a1 + 32);
    [*(a1 + 40) provider];
  }
  v10 = ;
  [v10 serverDidUpdateAssetsWithType:*(a1 + 32)];

  v11 = [*(a1 + 40) delegates];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__DDSAssetCenter_serverDidUpdateAssetsWithType___block_invoke_310;
  v17[3] = &unk_1E86C5C98;
  v12 = v9;
  v18 = v12;
  [v11 enumerateObjectsUsingBlock:v17];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"com.apple.DataDeliveryServices.AssetUpdatedAndCacheCleared", v12];
  v14 = DefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v13;
    _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Fired notification: %{public}@", buf, 0xCu);
  }

  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 postNotificationName:v13 object:0];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)triggerDumpWithReply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  string = [MEMORY[0x1E696AD60] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  managerInterfaces = [(DDSAssetCenter *)self managerInterfaces];
  v6 = [managerInterfaces countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(managerInterfaces);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __39__DDSAssetCenter_triggerDumpWithReply___block_invoke;
        v11[3] = &unk_1E86C5CC0;
        v11[4] = &v16;
        [v9 triggerDumpWithReply:v11];
        ++v8;
      }

      while (v6 != v8);
      v6 = [managerInterfaces countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v6);
  }

  replyCopy[2](replyCopy, v17[5]);
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __39__DDSAssetCenter_triggerDumpWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) appendString:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 appendString:@"\n\n"];
}

- (void)triggerUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  managerInterfaces = [(DDSAssetCenter *)self managerInterfaces];
  v3 = [managerInterfaces countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(managerInterfaces);
        }

        [*(*(&v8 + 1) + 8 * v6++) triggerUpdate];
      }

      while (v4 != v6);
      v4 = [managerInterfaces countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)trialDidReceiveAsset:(id)asset forQuery:(id)query
{
  assetCopy = asset;
  queryCopy = query;
  queue = [(DDSAssetCenter *)self queue];
  dispatch_assert_queue_V2(queue);

  delegates = [(DDSAssetCenter *)self delegates];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__DDSAssetCenter_trialDidReceiveAsset_forQuery___block_invoke;
  v12[3] = &unk_1E86C5CE8;
  v13 = assetCopy;
  v14 = queryCopy;
  v10 = queryCopy;
  v11 = assetCopy;
  [delegates enumerateObjectsUsingBlock:v12];
}

void __48__DDSAssetCenter_trialDidReceiveAsset_forQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 trialDidReceiveAsset:*(a1 + 32) forQuery:*(a1 + 40)];
  }
}

- (void)trialDidStopForQuery:(id)query
{
  queryCopy = query;
  queue = [(DDSAssetCenter *)self queue];
  dispatch_assert_queue_V2(queue);

  delegates = [(DDSAssetCenter *)self delegates];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__DDSAssetCenter_trialDidStopForQuery___block_invoke;
  v8[3] = &unk_1E86C5C98;
  v9 = queryCopy;
  v7 = queryCopy;
  [delegates enumerateObjectsUsingBlock:v8];
}

void __39__DDSAssetCenter_trialDidStopForQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 trialDidStopForQuery:*(a1 + 32)];
  }
}

- (void)fetchAssetUpdateStatusForQuery:(id)query callback:(id)callback
{
  queryCopy = query;
  callbackCopy = callback;
  assetType = [queryCopy assetType];
  v9 = [(DDSAssetCenter *)self managerInterfaceForAssetType:assetType];

  if (v9)
  {
    [v9 fetchAssetUpdateStatusForQuery:queryCopy callback:callbackCopy];
  }

  else
  {
    v10 = DefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DDSAssetCenter fetchAssetUpdateStatusForQuery:queryCopy callback:?];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    callbackCopy[2](callbackCopy, 0, v11);
  }
}

- (void)updateAssetForQuery:(id)query callback:(id)callback
{
  queryCopy = query;
  callbackCopy = callback;
  assetType = [queryCopy assetType];
  v9 = [(DDSAssetCenter *)self managerInterfaceForAssetType:assetType];

  if (v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__DDSAssetCenter_updateAssetForQuery_callback___block_invoke;
    v12[3] = &unk_1E86C5D10;
    v13 = callbackCopy;
    [v9 updateAssetForQuery:queryCopy callback:v12];
    v10 = v13;
  }

  else
  {
    v11 = DefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DDSAssetCenter updateAssetForQuery:queryCopy callback:?];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    (*(callbackCopy + 2))(callbackCopy, 0, v10);
  }
}

void __47__DDSAssetCenter_updateAssetForQuery_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)registerDelegate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF7C6000, v0, v1, "Adding AssetCenter delegate: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unregisterDelegate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF7C6000, v0, v1, "Removing AssetCenter delegate: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addAssertionForAssetsWithQuery:(void *)a1 policy:assertionID:clientID:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetType];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DF7C6000, v2, v3, "Cannot add assertion, manager interface is nil for asset type: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeAssertionWithIdentifier:assetType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_ERROR, "Cannot remove assertion with identifier, manager interface is nil for asset type: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)assertionIDsForClientID:assetType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_ERROR, "Cannot get assertionIDs for clientID, manager interface is nil for asset type: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __48__DDSAssetCenter_serverDidUpdateAssetsWithType___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2(&dword_1DF7C6000, a2, a3, "Letting delegates know assets updated: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetUpdateStatusForQuery:(void *)a1 callback:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetType];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DF7C6000, v2, v3, "Cannot fetch asset update status, manager interface is nil for asset type: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateAssetForQuery:(void *)a1 callback:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetType];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DF7C6000, v2, v3, "Cannot update asset for type, manager interface is nil for asset type: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end