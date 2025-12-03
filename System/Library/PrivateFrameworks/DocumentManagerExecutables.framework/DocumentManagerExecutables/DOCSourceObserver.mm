@interface DOCSourceObserver
- (BOOL)hasReceivedFirstFullUpdate;
- (BOOL)isProviderNode:(id)node;
- (DOCSourceObserver)initWithUserAction:(unint64_t)action hostIdentifier:(id)identifier;
- (NSArray)providerNodes;
- (NSArray)providers;
- (id)_addSubscriberForConfiguration:(id)configuration usingBlock:(id)block;
- (id)_sourcesByBuildingWithSourceBuilder;
- (id)actionManagersFromSources;
- (id)addSubscriberForConfiguration:(id)configuration usingBlock:(id)block;
- (id)cachedDisplayNameForSourceIdentifier:(id)identifier;
- (id)consolidatedErrorIfExists;
- (id)sourceForIdentifier:(id)identifier;
- (id)startObservingLegacyPickers;
- (int)startObservingDefaultSaveLocation;
- (void)childChanged:(id)changed in:(id)in for:(unsigned int)for;
- (void)childrenAdded:(id)added to:(id)to;
- (void)childrenDeleted:(id)deleted from:(id)from;
- (void)dealloc;
- (void)didReceiveSourceUpdate;
- (void)domainDisplayNameForItem:(id)item completion:(id)completion;
- (void)nodeShouldBeReloaded:(id)reloaded;
- (void)notifySubscriber:(id)subscriber;
- (void)notifySubscribers;
- (void)openSyncCompleted:(id)completed;
- (void)providersChanged;
- (void)removeSubscriberForToken:(id)token;
- (void)retrieveSourcesForConfiguration:(id)configuration usingBlock:(id)block;
- (void)setProviderNodes:(id)nodes;
- (void)sourceObserverQueue_didReceiveSourceUpdate;
- (void)startObservingSources;
- (void)stopObservingDefaultSaveLocation;
- (void)stopObservingLegacyPickers;
- (void)stopObservingSources;
- (void)updateCachedDisplayNamesFromSources;
- (void)updateProviderNodes;
@end

@implementation DOCSourceObserver

- (DOCSourceObserver)initWithUserAction:(unint64_t)action hostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = DOCSourceObserver;
  v7 = [(DOCSourceObserver *)&v31 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_DEFAULT, 0);

    v10 = dispatch_queue_create("com.apple.DocumentManager.sources", v9);
    sourceObserverQueue = v7->_sourceObserverQueue;
    v7->_sourceObserverQueue = v10;

    v7->_observationCount = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sourcesSubscribers = v7->_sourcesSubscribers;
    v7->_sourcesSubscribers = dictionary;

    v14 = [[DOCSourceBuilder alloc] initWithUserAction:action hostIdentifier:identifierCopy];
    sourceBuilder = v7->_sourceBuilder;
    v7->_sourceBuilder = v14;

    v16 = objc_alloc_init(DOCActionManager);
    sourcesActionManager = v7->_sourcesActionManager;
    v7->_sourcesActionManager = v16;

    StartFINode();
    providerDomainsContainer = [MEMORY[0x277D04700] providerDomainsContainer];
    providerDomainsNode = v7->_providerDomainsNode;
    v7->_providerDomainsNode = providerDomainsContainer;

    v20 = [MEMORY[0x277D04708] observerForFINode:v7->_providerDomainsNode withObserver:v7];
    providerDomainsFINodeObserver = v7->_providerDomainsFINodeObserver;
    v7->_providerDomainsFINodeObserver = v20;

    objc_initWeak(&location, v7);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v24 = *MEMORY[0x277D06148];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__DOCSourceObserver_initWithUserAction_hostIdentifier___block_invoke;
    v28[3] = &unk_278FA1C58;
    objc_copyWeak(&v29, &location);
    v25 = [defaultCenter addObserverForName:v24 object:0 queue:mainQueue usingBlock:v28];
    mdmHostIdentifierDidChangeNotificationObserver = v7->_mdmHostIdentifierDidChangeNotificationObserver;
    v7->_mdmHostIdentifierDidChangeNotificationObserver = v25;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __55__DOCSourceObserver_initWithUserAction_hostIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained sourceObserverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DOCSourceObserver_initWithUserAction_hostIdentifier___block_invoke_2;
    block[3] = &unk_278FA1C30;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __55__DOCSourceObserver_initWithUserAction_hostIdentifier___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D062F8];
  v3 = *MEMORY[0x277D062F8];
  if (!*MEMORY[0x277D062F8])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277D06218];
    v5 = v3;
    v6 = [v4 defaultPermission];
    v7 = [v6 hostIdentifier];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2493AC000, v5, OS_LOG_TYPE_DEFAULT, "MDM host identifier changed to %@, so simulate a source update", &v9, 0xCu);
  }

  return [*(a1 + 32) sourceObserverQueue_didReceiveSourceUpdate];
}

- (void)dealloc
{
  if (self->_mdmHostIdentifierDidChangeNotificationObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_mdmHostIdentifierDidChangeNotificationObserver];
  }

  v4.receiver = self;
  v4.super_class = DOCSourceObserver;
  [(DOCSourceObserver *)&v4 dealloc];
}

- (void)startObservingSources
{
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__DOCSourceObserver_startObservingSources__block_invoke;
  v4[3] = &unk_278FA1C80;
  objc_copyWeak(&v5, &location);
  dispatch_async(sourceObserverQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__DOCSourceObserver_startObservingSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setObservationCount:{objc_msgSend(WeakRetained, "observationCount") + 1}];
    v2 = [v5 observationCount] > 1;
    WeakRetained = v5;
    if (!v2)
    {
      v3 = [v5 startObservingLegacyPickers];
      [v5 setLegacyPickersObserverContext:v3];

      [v5 setDefaultSaveLocationObserverContext:{objc_msgSend(v5, "startObservingDefaultSaveLocation")}];
      v4 = [v5 providerDomainsFINodeObserver];
      [v4 startObserving:3];

      [v5 updateProviderNodes];
      WeakRetained = v5;
    }
  }
}

- (void)stopObservingSources
{
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__DOCSourceObserver_stopObservingSources__block_invoke;
  v4[3] = &unk_278FA1C80;
  objc_copyWeak(&v5, &location);
  dispatch_async(sourceObserverQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__DOCSourceObserver_stopObservingSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([WeakRetained observationCount])
    {
      [WeakRetained setObservationCount:{objc_msgSend(WeakRetained, "observationCount") - 1}];
    }

    if (![WeakRetained observationCount])
    {
      v1 = [WeakRetained providerDomainsFINodeObserver];
      [v1 stopObserving:3];

      [WeakRetained stopObservingLegacyPickers];
      [WeakRetained stopObservingDefaultSaveLocation];
    }
  }
}

- (id)_addSubscriberForConfiguration:(id)configuration usingBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  v8 = objc_alloc_init(DOCSourceObserverToken);
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DOCSourceObserver__addSubscriberForConfiguration_usingBlock___block_invoke;
  block[3] = &unk_278FA1CA8;
  objc_copyWeak(&v20, &location);
  v19 = blockCopy;
  v10 = v8;
  v17 = v10;
  v18 = configurationCopy;
  v11 = configurationCopy;
  v12 = blockCopy;
  dispatch_async(sourceObserverQueue, block);

  v13 = v18;
  v14 = v10;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

void __63__DOCSourceObserver__addSubscriberForConfiguration_usingBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_opt_new();
    [v3 setBlock:*(a1 + 48)];
    [v3 setToken:*(a1 + 32)];
    [v3 setConfiguration:*(a1 + 40)];
    v4 = [v6 sourcesSubscribers];
    v5 = [*(a1 + 32) identifier];
    [v4 setObject:v3 forKeyedSubscript:v5];

    if ([v6 hasReceivedFirstFullUpdate])
    {
      [v6 notifySubscriber:v3];
    }

    WeakRetained = v6;
  }
}

- (id)addSubscriberForConfiguration:(id)configuration usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__DOCSourceObserver_addSubscriberForConfiguration_usingBlock___block_invoke;
  v10[3] = &unk_278FA1CD0;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = [(DOCSourceObserver *)self _addSubscriberForConfiguration:configuration usingBlock:v10];

  return v8;
}

- (void)removeSubscriberForToken:(id)token
{
  tokenCopy = token;
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DOCSourceObserver_removeSubscriberForToken___block_invoke;
  block[3] = &unk_278FA1CF8;
  objc_copyWeak(&v9, &location);
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(sourceObserverQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__DOCSourceObserver_removeSubscriberForToken___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sourcesSubscribers];
  v3 = [*(a1 + 32) identifier];
  [v2 removeObjectForKey:v3];
}

- (void)retrieveSourcesForConfiguration:(id)configuration usingBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__DOCSourceObserver_retrieveSourcesForConfiguration_usingBlock___block_invoke;
  v10[3] = &unk_278FA1D20;
  objc_copyWeak(&v12, &location);
  v8 = blockCopy;
  v11 = v8;
  v9 = [(DOCSourceObserver *)self _addSubscriberForConfiguration:configurationCopy usingBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __64__DOCSourceObserver_retrieveSourcesForConfiguration_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    v10 = [WeakRetained sourcesSubscribers];
    v11 = [v12 identifier];
    [v10 removeObjectForKey:v11];
  }
}

- (void)domainDisplayNameForItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__DOCSourceObserver_domainDisplayNameForItem_completion___block_invoke;
  v10[3] = &unk_278FA1D48;
  v11 = itemCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = itemCopy;
  [(DOCSourceObserver *)self retrieveAllSourcesCompletionBlock:v10];
}

void __57__DOCSourceObserver_domainDisplayNameForItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v21 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 providerDomain];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 providerID];
            v13 = [*(a1 + 32) providerID];
            v14 = v13;
            if (v12 != v13)
            {

              goto LABEL_10;
            }

            v15 = [v11 identifier];
            [*(a1 + 32) providerDomainID];
            v16 = v3;
            v18 = v17 = a1;

            v19 = v15 == v18;
            v6 = v21;
            a1 = v17;
            v3 = v16;
            if (v19)
            {
              v12 = DOCLocalizedDisplayName();
              (*(*(a1 + 40) + 16))();
LABEL_10:
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v20 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v20;
    }

    while (v20);
  }
}

- (id)sourceForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sources = [(DOCSourceObserver *)self sources];
  v6 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sources);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)childrenAdded:(id)added to:(id)to
{
  addedCopy = added;
  toCopy = to;
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DOCSourceObserver_childrenAdded_to___block_invoke;
  block[3] = &unk_278FA1CF8;
  objc_copyWeak(&v12, &location);
  v11 = addedCopy;
  v9 = addedCopy;
  dispatch_async(sourceObserverQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __38__DOCSourceObserver_childrenAdded_to___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 providerNodes];
    v5 = [v4 arrayByAddingObjectsFromArray:*(a1 + 32)];
    [v3 setProviderNodes:v5];

    objc_sync_exit(v3);
    WeakRetained = v6;
  }
}

- (void)childrenDeleted:(id)deleted from:(id)from
{
  deletedCopy = deleted;
  fromCopy = from;
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DOCSourceObserver_childrenDeleted_from___block_invoke;
  block[3] = &unk_278FA1CF8;
  objc_copyWeak(&v12, &location);
  v11 = deletedCopy;
  v9 = deletedCopy;
  dispatch_async(sourceObserverQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __42__DOCSourceObserver_childrenDeleted_from___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 providerNodes];
    v5 = [v4 arrayByExcludingObjectsInArray:*(a1 + 32)];
    [v3 setProviderNodes:v5];

    objc_sync_exit(v3);
    WeakRetained = v6;
  }
}

- (void)childChanged:(id)changed in:(id)in for:(unsigned int)for
{
  v5 = *&for;
  changedCopy = changed;
  inCopy = in;
  if ([(DOCSourceObserver *)self isProviderNode:changedCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    pendingChildPropertyChanges = [(DOCSourceObserver *)selfCopy pendingChildPropertyChanges];
    v12 = [pendingChildPropertyChanges count];
    if (pendingChildPropertyChanges)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      [pendingChildPropertyChanges addObject:v13];
    }

    else
    {
      v14 = MEMORY[0x277CBEB58];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      pendingChildPropertyChanges = [v14 setWithObject:v15];

      [(DOCSourceObserver *)selfCopy setPendingChildPropertyChanges:pendingChildPropertyChanges];
    }

    objc_sync_exit(selfCopy);
    if (!v12)
    {
      objc_initWeak(&location, selfCopy);
      sourceObserverQueue = [(DOCSourceObserver *)selfCopy sourceObserverQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __41__DOCSourceObserver_childChanged_in_for___block_invoke;
      v17[3] = &unk_278FA1C80;
      objc_copyWeak(&v18, &location);
      dispatch_async(sourceObserverQueue, v17);

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __41__DOCSourceObserver_childChanged_in_for___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v3 = [v2 pendingChildPropertyChanges];
    [v2 setPendingChildPropertyChanges:0];
    objc_sync_exit(v2);

    if ([v3 count])
    {
      if (([v3 containsObject:&unk_285CE9D18] & 1) != 0 || objc_msgSend(v3, "containsObject:", &unk_285CE9D30))
      {
        v4 = [MEMORY[0x277D05ED8] shared];
        v5 = [v2 providers];
        [v4 updateFileProvidersIcon:v5];
      }

      if ([v3 containsObject:&unk_285CE9D48])
      {
        [v2 providersChanged];
      }

      [v2 sourceObserverQueue_didReceiveSourceUpdate];
    }

    WeakRetained = v6;
  }
}

- (void)openSyncCompleted:(id)completed
{
  completedCopy = completed;
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__DOCSourceObserver_openSyncCompleted___block_invoke;
  v6[3] = &unk_278FA1C80;
  objc_copyWeak(&v7, &location);
  dispatch_async(sourceObserverQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__DOCSourceObserver_openSyncCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateProviderNodes];
}

- (void)nodeShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DOCSourceObserver_nodeShouldBeReloaded___block_invoke;
  v6[3] = &unk_278FA1C80;
  objc_copyWeak(&v7, &location);
  dispatch_async(sourceObserverQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__DOCSourceObserver_nodeShouldBeReloaded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateProviderNodes];
}

- (NSArray)providers
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  providerNodes = [(DOCSourceObserver *)selfCopy providerNodes];
  v5 = [providerNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(providerNodes);
        }

        fpDomain = [*(*(&v10 + 1) + 8 * i) fpDomain];
        if (fpDomain)
        {
          [array addObject:fpDomain];
        }
      }

      v5 = [providerNodes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

  return array;
}

- (void)updateProviderNodes
{
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  dispatch_assert_queue_V2(sourceObserverQueue);

  providerDomainsNode = [(DOCSourceObserver *)self providerDomainsNode];
  v9 = [providerDomainsNode iteratorWithOptions:0];

  -[DOCSourceObserver setProviderNodesFullyPopulated:](self, "setProviderNodesFullyPopulated:", [v9 fullyPopulated]);
  array = [MEMORY[0x277CBEB18] array];
  first = [v9 first];
  if (first)
  {
    v7 = first;
    do
    {
      [array addObject:v7];
      next = [v9 next];

      v7 = next;
    }

    while (next);
  }

  [(DOCSourceObserver *)self setProviderNodes:array];
}

- (NSArray)providerNodes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_providerNodes;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setProviderNodes:(id)nodes
{
  nodesCopy = nodes;
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  dispatch_assert_queue_V2(sourceObserverQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSArray *)selfCopy->_providerNodes isEqualToArray:nodesCopy])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = [nodesCopy copy];
    providerNodes = selfCopy->_providerNodes;
    selfCopy->_providerNodes = v6;

    objc_sync_exit(selfCopy);
    [(DOCSourceObserver *)selfCopy providersChanged];
    [(DOCSourceObserver *)selfCopy sourceObserverQueue_didReceiveSourceUpdate];
  }
}

- (void)providersChanged
{
  v19 = *MEMORY[0x277D85DE8];
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  dispatch_assert_queue_V2(sourceObserverQueue);

  providers = [(DOCSourceObserver *)self providers];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = providers;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        identifier = [v11 identifier];
        [dictionary setObject:v11 forKeyedSubscript:identifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [MEMORY[0x277CC6420] setDomainCache:dictionary];
  defaultPermission = [MEMORY[0x277D06218] defaultPermission];
  [defaultPermission cachePersonaStringForProviders:v6];
}

- (BOOL)isProviderNode:(id)node
{
  nodeCopy = node;
  providerNodes = [(DOCSourceObserver *)self providerNodes];
  v6 = [providerNodes containsObject:nodeCopy];

  return v6;
}

- (id)startObservingLegacyPickers
{
  v10[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277CCA9C8];
  v9 = *MEMORY[0x277CCA0F8];
  v10[0] = @"com.apple.fileprovider-ui";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DOCSourceObserver_startObservingLegacyPickers__block_invoke;
  v6[3] = &unk_278FA1D98;
  objc_copyWeak(&v7, &location);
  v4 = [v2 beginMatchingExtensionsWithAttributes:v3 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __48__DOCSourceObserver_startObservingLegacyPickers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained sourceObserverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__DOCSourceObserver_startObservingLegacyPickers__block_invoke_2;
    block[3] = &unk_278FA1D70;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void __48__DOCSourceObserver_startObservingLegacyPickers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = WeakRetained;
      [WeakRetained setLegacyPickers:?];
      [v3 sourceObserverQueue_didReceiveSourceUpdate];
    }

    else
    {
      if (!*(a1 + 40))
      {
        goto LABEL_7;
      }

      v3 = WeakRetained;
      [WeakRetained setLegacyPickersObserverError:?];
    }

    WeakRetained = v3;
  }

LABEL_7:
}

- (void)stopObservingLegacyPickers
{
  legacyPickersObserverContext = [(DOCSourceObserver *)self legacyPickersObserverContext];

  if (legacyPickersObserverContext)
  {
    v4 = MEMORY[0x277CCA9C8];
    legacyPickersObserverContext2 = [(DOCSourceObserver *)self legacyPickersObserverContext];
    [v4 endMatchingExtensions:legacyPickersObserverContext2];

    [(DOCSourceObserver *)self setLegacyPickersObserverContext:0];
  }
}

- (int)startObservingDefaultSaveLocation
{
  out_token = 0;
  objc_initWeak(&location, self);
  v2 = *MEMORY[0x277D05D70];
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__DOCSourceObserver_startObservingDefaultSaveLocation__block_invoke;
  handler[3] = &unk_278FA1DC0;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v2, &out_token, v3, handler);

  LODWORD(v2) = out_token;
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v2;
}

void __54__DOCSourceObserver_startObservingDefaultSaveLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didReceiveSourceUpdate];
}

- (void)stopObservingDefaultSaveLocation
{
  if ([(DOCSourceObserver *)self defaultSaveLocationObserverContext])
  {
    notify_cancel([(DOCSourceObserver *)self defaultSaveLocationObserverContext]);

    [(DOCSourceObserver *)self setDefaultSaveLocationObserverContext:0];
  }
}

- (void)didReceiveSourceUpdate
{
  objc_initWeak(&location, self);
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__DOCSourceObserver_didReceiveSourceUpdate__block_invoke;
  v4[3] = &unk_278FA1C80;
  objc_copyWeak(&v5, &location);
  dispatch_async(sourceObserverQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__DOCSourceObserver_didReceiveSourceUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sourceObserverQueue_didReceiveSourceUpdate];
}

- (id)_sourcesByBuildingWithSourceBuilder
{
  sourceBuilder = [(DOCSourceObserver *)self sourceBuilder];
  providers = [(DOCSourceObserver *)self providers];
  legacyPickers = [(DOCSourceObserver *)self legacyPickers];
  v6 = [sourceBuilder buildSourcesProviders:providers legacyWebViewFileProviders:legacyPickers];

  return v6;
}

- (void)sourceObserverQueue_didReceiveSourceUpdate
{
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  dispatch_assert_queue_V2(sourceObserverQueue);

  if ([(DOCSourceObserver *)self hasReceivedFirstFullUpdate])
  {
    _sourcesByBuildingWithSourceBuilder = [(DOCSourceObserver *)self _sourcesByBuildingWithSourceBuilder];
    [(DOCSourceObserver *)self setSources:_sourcesByBuildingWithSourceBuilder];

    [(DOCSourceObserver *)self updateCachedDisplayNamesFromSources];
    consolidatedErrorIfExists = [(DOCSourceObserver *)self consolidatedErrorIfExists];
    [(DOCSourceObserver *)self setSourcesObserverError:consolidatedErrorIfExists];

    actionManagersFromSources = [(DOCSourceObserver *)self actionManagersFromSources];
    sourcesActionManager = [(DOCSourceObserver *)self sourcesActionManager];
    [sourcesActionManager setAssociatedActionManagers:actionManagersFromSources];

    [(DOCSourceObserver *)self notifySubscribers];
  }
}

- (void)notifySubscribers
{
  v17 = *MEMORY[0x277D85DE8];
  sourceObserverQueue = [(DOCSourceObserver *)self sourceObserverQueue];
  dispatch_assert_queue_V2(sourceObserverQueue);

  sources = [(DOCSourceObserver *)self sources];

  if (!sources)
  {
    _sourcesByBuildingWithSourceBuilder = [(DOCSourceObserver *)self _sourcesByBuildingWithSourceBuilder];
    [(DOCSourceObserver *)self setSources:_sourcesByBuildingWithSourceBuilder];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  sourcesSubscribers = [(DOCSourceObserver *)self sourcesSubscribers];
  allValues = [sourcesSubscribers allValues];

  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [(DOCSourceObserver *)self notifySubscriber:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)notifySubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  configuration = [subscriberCopy configuration];

  if (configuration)
  {
    v6 = MEMORY[0x277CCAC30];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__DOCSourceObserver_notifySubscriber___block_invoke;
    v18[3] = &unk_278FA1DE8;
    v7 = subscriberCopy;
    v19 = v7;
    v8 = [v6 predicateWithBlock:v18];
    sources = [(DOCSourceObserver *)self sources];
    v10 = [sources filteredArrayUsingPredicate:v8];

    block = [v7 block];
    token = [v7 token];
    sourcesObserverError = [(DOCSourceObserver *)self sourcesObserverError];
    (block)[2](block, token, v10, sourcesObserverError);
  }

  else
  {
    block2 = [subscriberCopy block];
    token2 = [subscriberCopy token];
    sources2 = [(DOCSourceObserver *)self sources];
    sourcesObserverError2 = [(DOCSourceObserver *)self sourcesObserverError];
    (block2)[2](block2, token2, sources2, sourcesObserverError2);
  }
}

uint64_t __38__DOCSourceObserver_notifySubscriber___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 configuration];
  v5 = [v3 isValidForConfiguration:v4];

  return v5;
}

- (id)consolidatedErrorIfExists
{
  array = [MEMORY[0x277CBEB18] array];
  legacyPickersObserverError = [(DOCSourceObserver *)self legacyPickersObserverError];

  if (legacyPickersObserverError)
  {
    legacyPickersObserverError2 = [(DOCSourceObserver *)self legacyPickersObserverError];
    [array addObject:legacyPickersObserverError2];
  }

  if ([array count])
  {
    v6 = [MEMORY[0x277CCA9B8] observerErrorWithUnderlyingErrors:array];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasReceivedFirstFullUpdate
{
  legacyPickers = [(DOCSourceObserver *)self legacyPickers];
  if (legacyPickers)
  {
  }

  else
  {
    legacyPickersObserverError = [(DOCSourceObserver *)self legacyPickersObserverError];

    if (!legacyPickersObserverError)
    {
      return 0;
    }
  }

  return [(DOCSourceObserver *)self providerNodesFullyPopulated];
}

- (id)actionManagersFromSources
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sources = [(DOCSourceObserver *)self sources];
  v5 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sources);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          actionManager = [v9 actionManager];
          [array addObject:actionManager];
        }
      }

      v6 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array copy];

  return v11;
}

- (void)updateCachedDisplayNamesFromSources
{
  v26 = *MEMORY[0x277D85DE8];
  sourceBuilder = [(DOCSourceObserver *)self sourceBuilder];
  userAction = [sourceBuilder userAction];

  if (!userAction)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = [v5 initWithSuiteName:*MEMORY[0x277D060B0]];
    v7 = *MEMORY[0x277D05E00];
    v8 = [v6 dictionaryForKey:*MEMORY[0x277D05E00]];
    sources = [(DOCSourceObserver *)self sources];
    v10 = sources;
    if (v8)
    {
      v11 = [v8 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(sources, "count")}];
    }

    v12 = v11;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          displayName = [v18 displayName];
          identifier = [v18 identifier];
          [v12 setObject:displayName forKeyedSubscript:identifier];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    if (([v8 isEqualToDictionary:v12] & 1) == 0)
    {
      [v6 setObject:v12 forKey:v7];
    }
  }
}

- (id)cachedDisplayNameForSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277D060B0]];
  v6 = [v5 dictionaryForKey:*MEMORY[0x277D05E00]];
  v7 = [v6 objectForKeyedSubscript:identifierCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  return v7;
}

@end