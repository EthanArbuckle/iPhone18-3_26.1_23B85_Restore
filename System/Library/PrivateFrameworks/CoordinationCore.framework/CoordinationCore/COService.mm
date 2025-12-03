@interface COService
+ (BOOL)_isAllowedClient:(id)client;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (COService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (COServiceDelegate)delegate;
- (id)_addOnForCluster:(id)cluster;
- (id)_clustersForAddOn:(id)on;
- (id)_newClientForConnection:(id)connection;
- (id)_uniqueAddOns;
- (id)clientForConnection:(id)connection;
- (id)currentClient;
- (void)_addMesh:(id)mesh forClusters:(id)clusters;
- (void)_addOnAdded:(id)added;
- (void)_addOnForCluster:(id)cluster completion:(id)completion;
- (void)_addOnRemoved:(id)removed;
- (void)_clientLost:(id)lost;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_releaseAssertionForCluster:(id)cluster;
- (void)_removeMeshForClusters:(id)clusters;
- (void)_takeAssertionForCluster:(id)cluster;
- (void)joinClusters:(id)clusters usingMeshController:(id)controller withClusterIdentifier:(id)identifier completion:(id)completion;
- (void)leaveClusters:(id)clusters withClusterIdentifier:(id)identifier completion:(id)completion;
@end

@implementation COService

- (COService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v37 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  onProviderCopy = onProvider;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = COService;
  v12 = [(COService *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listenerProvider, provider);
    objc_storeStrong(&v13->_addOnProvider, onProvider);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = objc_alloc_init(COCoordinationServiceClientSet);
    clients = v13->_clients;
    v13->_clients = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    assertions = v13->_assertions;
    v13->_assertions = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    addOns = v13->_addOns;
    v13->_addOns = v18;

    dispatchQueue = [(COServiceListenerProvider *)v13->_listenerProvider dispatchQueue];
    dispatchQueue = v13->_dispatchQueue;
    v13->_dispatchQueue = dispatchQueue;

    serviceListener = [(COServiceListenerProvider *)v13->_listenerProvider serviceListener];
    listener = v13->_listener;
    v13->_listener = serviceListener;

    [(NSXPCListener *)v13->_listener _setQueue:v13->_dispatchQueue];
    [(NSXPCListener *)v13->_listener setDelegate:v13];
    v24 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = v13->_listener;
      *buf = 134218498;
      v32 = v13;
      v33 = 2112;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%p <%@> created with listener %@", buf, 0x20u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)_isAllowedClient:(id)client
{
  v15 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__COService__isAllowedClient___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_isAllowedClient__once != -1)
  {
    dispatch_once(&_isAllowedClient__once, block);
  }

  if (clientCopy)
  {
    [clientCopy auditToken];
  }

  memset(buf, 0, 32);
  bundleIdentifier = 0;
  CPCopyBundleIdentifierAndTeamFromAuditToken();
  processIdentifier = [clientCopy processIdentifier];
  if (processIdentifier == getpid())
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      v8 = 1;
      goto LABEL_12;
    }

    [clientCopy co_SetClientBundleIdentifier:bundleIdentifier];
    v8 = 1;
  }

  else
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [clientCopy processIdentifier];
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      *&buf[22] = 1024;
      *&buf[24] = processIdentifier2;
      *&buf[28] = 2112;
      *&buf[30] = _isAllowedClient__sAllowedClients;
      _os_log_error_impl(&dword_244378000, v9, OS_LOG_TYPE_ERROR, "%@ disallowed client %@ [%d] attempted to connect - allowed clients: %@", buf, 0x26u);
    }

    v8 = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __30__COService__isAllowedClient___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.coordinated", @"com.apple.willowd", @"com.apple.SoundBoard", @"com.apple.homehubd", @"com.apple.Coordination.cmdmesh", @"com.apple.nexusd", @"com.apple.homepodsettingsd", @"com.apple.HomePlatformSettingsUI.HPSUIViewService", @"com.apple.conductord", @"com.apple.Home", @"com.apple.homed", 0}];
  v3 = _isAllowedClient__sAllowedClients;
  _isAllowedClient__sAllowedClients = v2;

  if ([MEMORY[0x277CFD0B8] isOpalEnabled])
  {
    v4 = [_isAllowedClient__sAllowedClients setByAddingObject:@"com.apple.opal"];
    v5 = _isAllowedClient__sAllowedClients;
    _isAllowedClient__sAllowedClients = v4;
  }

  v6 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v6 arguments];

  v8 = [v7 indexOfObject:@"--allowed"];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8 + 1;
    if (v8 + 1 < [v7 count])
    {
      v10 = [v7 objectAtIndex:v9];
      v11 = [v10 componentsSeparatedByString:{@", "}];

      v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v24 + 1) + 8 * i) stringByTrimmingCharactersInSet:v12];
            if ([v18 length])
            {
              v19 = [_isAllowedClient__sAllowedClients setByAddingObject:v18];
              v20 = _isAllowedClient__sAllowedClients;
              _isAllowedClient__sAllowedClients = v19;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v15);
      }
    }
  }

  v21 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    *buf = 134218242;
    v29 = v22;
    v30 = 2112;
    v31 = _isAllowedClient__sAllowedClients;
    _os_log_impl(&dword_244378000, v21, OS_LOG_TYPE_DEFAULT, "%p allowing %@", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)clientForConnection:(id)connection
{
  connectionCopy = connection;
  clients = [(COService *)self clients];
  v6 = [clients serviceClientForXPCConnection:connectionCopy];

  return v6;
}

- (id)currentClient
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v4 = [(COService *)self clientForConnection:currentConnection];

  return v4;
}

- (void)joinClusters:(id)clusters usingMeshController:(id)controller withClusterIdentifier:(id)identifier completion:(id)completion
{
  clustersCopy = clusters;
  controllerCopy = controller;
  completionCopy = completion;
  dispatchQueue = [(COService *)self dispatchQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__COService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke;
  v16[3] = &unk_278E15D00;
  v16[4] = self;
  v17 = controllerCopy;
  v18 = clustersCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = clustersCopy;
  v15 = controllerCopy;
  dispatch_async(dispatchQueue, v16);
}

uint64_t __79__COService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addMesh:*(a1 + 40) forClusters:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)leaveClusters:(id)clusters withClusterIdentifier:(id)identifier completion:(id)completion
{
  clustersCopy = clusters;
  completionCopy = completion;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__COService_leaveClusters_withClusterIdentifier_completion___block_invoke;
  block[3] = &unk_278E15B60;
  block[4] = self;
  v13 = clustersCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = clustersCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __60__COService_leaveClusters_withClusterIdentifier_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeMeshForClusters:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v27 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p received new connection from %d", buf, 0x12u);
  }

  listenerProvider = [(COService *)self listenerProvider];
  if ([objc_opt_class() _isAllowedClient:connectionCopy] && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(listenerProvider, "serviceShouldAcceptNewConnection:", connectionCopy)))
  {
    [(COService *)self _configureServiceInterfacesOnConnection:connectionCopy];
    dispatchQueue = [(COService *)self dispatchQueue];
    [connectionCopy _setQueue:dispatchQueue];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __48__COService_listener_shouldAcceptNewConnection___block_invoke;
    v20 = &unk_278E183D8;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    selfCopy2 = self;
    v11 = MEMORY[0x245D5FF10](&v17);
    [connectionCopy setInterruptionHandler:{v11, v17, v18, v19, v20}];
    [connectionCopy setInvalidationHandler:v11];
    v12 = [(COService *)self _newClientForConnection:connectionCopy];
    clients = [(COService *)self clients];
    [clients addServiceClient:v12];

    [connectionCopy resume];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __48__COService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 134218240;
      v10 = v6;
      v11 = 1024;
      v12 = [v4 processIdentifier];
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "Service %p lost connection from %d", &v9, 0x12u);
    }

    v7 = [WeakRetained clientForConnection:v4];
    if (v7)
    {
      [WeakRetained _clientLost:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_takeAssertionForCluster:(id)cluster
{
  v24 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [COService _takeAssertionForCluster:];
  }

  if ([(COService *)self _applicableToCluster:clusterCopy])
  {
    delegate = [(COService *)self delegate];
    v8 = delegate;
    if (delegate)
    {
      v9 = [delegate takeAssertionForCluster:clusterCopy];
      assertions = [(COService *)self assertions];
      v11 = [assertions objectForKey:clusterCopy];
      v12 = [v11 mutableCopy];

      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v12 addObject:v9];
      v13 = [assertions mutableCopy];
      [v13 setObject:v12 forKey:clusterCopy];
      [(COService *)self setAssertions:v13];
      v14 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218754;
        selfCopy = self;
        v18 = 2048;
        v19 = v9;
        v20 = 2112;
        v21 = clusterCopy;
        v22 = 2048;
        v23 = [v12 count];
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p took assertion %p for %@ (now %lu)", &v16, 0x2Au);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_releaseAssertionForCluster:(id)cluster
{
  v19 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [COService _releaseAssertionForCluster:];
  }

  assertions = [(COService *)self assertions];
  v8 = [assertions objectForKey:clusterCopy];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    [v9 removeLastObject];
    v10 = [assertions mutableCopy];
    if ([v9 count])
    {
      [v10 setObject:v9 forKey:clusterCopy];
    }

    else
    {
      [v10 removeObjectForKey:clusterCopy];
    }

    [(COService *)self setAssertions:v10];
    v11 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      selfCopy = self;
      v15 = 2112;
      v16 = clusterCopy;
      v17 = 2048;
      v18 = [v9 count];
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p released assertion for %@ (remaining %lu)", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addOnForCluster:(id)cluster completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  completionCopy = completion;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__21;
  v25 = __Block_byref_object_dispose__21;
  v26 = 0;
  v9 = [(COService *)self _addOnForCluster:clusterCopy];
  v10 = v22[5];
  v22[5] = v9;

  if (v22[5])
  {
    completionCopy[2](completionCopy);
  }

  else if ([(COService *)self _applicableToCluster:clusterCopy])
  {
    delegate = [(COService *)self delegate];
    if (delegate)
    {
      v12 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy3 = self;
        v29 = 2112;
        v30 = clusterCopy;
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p not in cluster %@ and will request creation", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __41__COService__addOnForCluster_completion___block_invoke;
      v16[3] = &unk_278E15EB8;
      objc_copyWeak(&v20, buf);
      v19 = &v21;
      v17 = clusterCopy;
      v18 = completionCopy;
      [delegate waitForClusterBootstrap:v17 completion:v16];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }

    else
    {
      v14 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy3 = self;
        v29 = 2112;
        v30 = clusterCopy;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p not in cluster %@ and does not have delegate", buf, 0x16u);
      }

      (completionCopy[2])(completionCopy, 0);
    }
  }

  else
  {
    v13 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v29 = 2112;
      v30 = clusterCopy;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p not in cluster %@ and cannot request creation", buf, 0x16u);
    }

    (completionCopy[2])(completionCopy, 0);
  }

  _Block_object_dispose(&v21, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __41__COService__addOnForCluster_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained dispatchQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__COService__addOnForCluster_completion___block_invoke_2;
    v5[3] = &unk_278E18400;
    v8 = *(a1 + 48);
    v5[4] = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __41__COService__addOnForCluster_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _addOnForCluster:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v12 = 134218498;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p after cluster %@ creation request got %p", &v12, 0x20u);
  }

  v9 = *(*(*(a1 + 56) + 8) + 40);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_addMesh:(id)mesh forClusters:(id)clusters
{
  v50 = *MEMORY[0x277D85DE8];
  meshCopy = mesh;
  clustersCopy = clusters;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v43 = 2048;
    v44 = meshCopy;
    v45 = 2112;
    v46 = clustersCopy;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p will add %p for clusters %@", buf, 0x20u);
  }

  addOns = [(COService *)self addOns];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = clustersCopy;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    serviceAddOn = 0;
    v15 = 0;
    v16 = *v37;
    while (2)
    {
      v17 = 0;
      v18 = serviceAddOn;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v11);
        }

        serviceAddOn = [addOns objectForKey:*(*(&v36 + 1) + 8 * v17)];

        if (serviceAddOn)
        {
          meshController = [serviceAddOn meshController];
          v20 = [meshCopy isEqual:meshController];

          if (!v20)
          {

            v22 = COCoreLogForCategory(1);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [COService _addMesh:forClusters:];
            }

            [(COService *)self _removeMeshForClusters:v11];
            goto LABEL_21;
          }

          v15 = 1;
        }

        ++v17;
        v18 = serviceAddOn;
      }

      while (v13 != v17);
      v13 = [v11 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    if (v15)
    {
      v21 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        selfCopy3 = self;
        v43 = 2048;
        v44 = meshCopy;
        v45 = 2112;
        v46 = v11;
        _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p already associated with %p for clusters %@", buf, 0x20u);
      }

      goto LABEL_32;
    }
  }

  else
  {

    serviceAddOn = 0;
  }

LABEL_21:
  v23 = serviceAddOn;
  addOnProvider = [(COService *)self addOnProvider];
  serviceAddOn = [addOnProvider serviceAddOn];

  v25 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy3 = self;
    v43 = 2048;
    v44 = serviceAddOn;
    v45 = 2048;
    v46 = meshCopy;
    v47 = 2112;
    v48 = v11;
    _os_log_impl(&dword_244378000, v25, OS_LOG_TYPE_DEFAULT, "%p associating %p with %p for clusters %@", buf, 0x2Au);
  }

  if (serviceAddOn)
  {
    [meshCopy addAddOn:serviceAddOn];
    v21 = [addOns mutableCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v11;
    v27 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v33;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v21 setObject:serviceAddOn forKey:*(*(&v32 + 1) + 8 * i), v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v28);
    }

    [(COService *)self setAddOns:v21];
    [(COService *)self _addOnAdded:serviceAddOn];
LABEL_32:
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_removeMeshForClusters:(id)clusters
{
  v32 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v26 = 2112;
    v27 = clustersCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p will remove from clusters %@", buf, 0x16u);
  }

  addOns = [(COService *)self addOns];
  anyObject = [clustersCopy anyObject];
  v9 = [addOns objectForKey:anyObject];

  meshController = [v9 meshController];
  v11 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy2 = self;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = meshController;
    v30 = 2112;
    v31 = clustersCopy;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p disassociating %p with %p for clusters %@", buf, 0x2Au);
  }

  if (v9)
  {
    if (meshController)
    {
      [meshController removeAddOn:v9];
    }

    [(COService *)self _addOnRemoved:v9];
    v12 = [addOns mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = clustersCopy;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 removeObjectForKey:{*(*(&v19 + 1) + 8 * v17++), v19}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [(COService *)self setAddOns:v12];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_clustersForAddOn:(id)on
{
  v21 = *MEMORY[0x277D85DE8];
  onCopy = on;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  addOns = [(COService *)self addOns];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [addOns countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(addOns);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [addOns objectForKey:v12];
        if ([v13 isEqual:onCopy])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [addOns countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_addOnForCluster:(id)cluster
{
  clusterCopy = cluster;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  addOns = [(COService *)self addOns];
  v7 = [addOns objectForKey:clusterCopy];

  return v7;
}

- (id)_uniqueAddOns
{
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  addOns = [(COService *)self addOns];
  allValues = [addOns allValues];
  v7 = [v4 initWithArray:allValues];

  return v7;
}

- (id)_newClientForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[COCoordinationServiceClient alloc] initWithConnection:connectionCopy];

  return v4;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)_clientLost:(id)lost
{
  v13 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = lostCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_INFO, "%p lost connection for client %@", &v9, 0x16u);
  }

  clients = [(COService *)self clients];
  [clients removeServiceClient:lostCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addOnAdded:(id)added
{
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)_addOnRemoved:(id)removed
{
  dispatchQueue = [(COService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (COServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_takeAssertionForCluster:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p attempting to take assertion for %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_releaseAssertionForCluster:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p attempting to release assertion for %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addMesh:forClusters:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "%p will remove existing use before add of clusters %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end