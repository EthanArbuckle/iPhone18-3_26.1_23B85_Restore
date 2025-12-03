@interface COStateService
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (COStateService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (id)_stateSetByClientsForAddOn:(id)on;
- (id)_stateSetByClientsForSuite:(id)suite cluster:(id)cluster;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_checkinClientWithSuite:(id)suite clusters:(id)clusters;
- (void)_cleanupDisconnectedClient:(id)client;
- (void)_clientLost:(id)lost;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_informClientsOfUpdates:(id)updates removals:(id)removals inCluster:(id)cluster;
- (void)_setIsWriting:(BOOL)writing forClient:(id)client;
- (void)addObserverWithPredicate:(id)predicate suite:(id)suite interestClusters:(id)clusters;
- (void)addOn:(id)on receivedUpdates:(id)updates removals:(id)removals;
- (void)compositionForCluster:(id)cluster withCallback:(id)callback;
- (void)doorbellDelayWithCallback:(id)callback;
- (void)endpointAvailableInHomeChanged:(BOOL)changed;
- (void)removeKeyPaths:(id)paths targetClusters:(id)clusters withCallback:(id)callback;
- (void)removeObserverWithPredicate:(id)predicate;
- (void)requestCompositionForCluster:(id)cluster withCallback:(id)callback;
- (void)setDictionary:(id)dictionary suite:(id)suite interestClusters:(id)clusters targetCluster:(id)cluster withCallback:(id)callback;
- (void)stateForAddOn:(id)on withCallback:(id)callback;
@end

@implementation COStateService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.state" entitlement:@"com.apple.private.coordination.state"];
  v5 = objc_alloc_init(COStateAddOnProvider);
  v6 = [[COStateService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:delegateCopy];

  return v6;
}

- (COStateService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = COStateService;
  v5 = [(COService *)&v11 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    connectedClients = v5->_connectedClients;
    v5->_connectedClients = v6;

    v5->_doorbellDelay = 0.2;
    v8 = objc_alloc_init(COEndpointMonitor);
    endpointMonitor = v5->_endpointMonitor;
    v5->_endpointMonitor = v8;

    [(COEndpointMonitor *)v5->_endpointMonitor setDelegate:v5];
    [(COEndpointMonitor *)v5->_endpointMonitor startMonitoring];
    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_clientLost:(id)lost
{
  v5.receiver = self;
  v5.super_class = COStateService;
  lostCopy = lost;
  [(COService *)&v5 _clientLost:lostCopy];
  [(COStateService *)self _cleanupDisconnectedClient:lostCopy, v5.receiver, v5.super_class];
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v21.receiver = self;
  v21.super_class = COStateService;
  connectionCopy = connection;
  [(COService *)&v21 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857D3918;
  v7 = [v5 interfaceWithProtocol:{v6, v21.receiver, v21.super_class}];
  _allowedClusterClasses = [MEMORY[0x277CFD078] _allowedClusterClasses];
  [v7 setClasses:_allowedClusterClasses forSelector:sel_requestCompositionForCluster_withCallback_ argumentIndex:0 ofReply:0];

  _allowedClusterClasses2 = [MEMORY[0x277CFD078] _allowedClusterClasses];
  v10 = [_allowedClusterClasses2 setByAddingObject:objc_opt_class()];

  [v7 setClasses:v10 forSelector:sel_addObserverWithPredicate_suite_interestClusters_ argumentIndex:2 ofReply:0];
  [v7 setClasses:v10 forSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:2 ofReply:0];
  [v7 setClasses:v10 forSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:3 ofReply:0];
  [v7 setClasses:v10 forSelector:sel_removeKeyPaths_targetClusters_withCallback_ argumentIndex:1 ofReply:0];
  v11 = [v7 classesForSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:0 ofReply:1];

  _allowedClusterClasses3 = [MEMORY[0x277CFD078] _allowedClusterClasses];
  v13 = [v11 setByAddingObjectsFromSet:_allowedClusterClasses3];

  [v7 setClasses:v13 forSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:0 ofReply:1];
  v14 = [v7 classesForSelector:sel_removeKeyPaths_targetClusters_withCallback_ argumentIndex:0 ofReply:1];

  _allowedClusterClasses4 = [MEMORY[0x277CFD078] _allowedClusterClasses];
  v16 = [v14 setByAddingObjectsFromSet:_allowedClusterClasses4];

  [v7 setClasses:v16 forSelector:sel_removeKeyPaths_targetClusters_withCallback_ argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  v17 = &unk_2857E3298;

  v18 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v17];

  v19 = [v18 classesForSelector:sel_changesObserved_forPredicate_ argumentIndex:0 ofReply:0];

  v20 = [v19 setByAddingObject:objc_opt_class()];

  [v18 setClasses:v20 forSelector:sel_changesObserved_forPredicate_ argumentIndex:0 ofReply:0];
  [connectionCopy setRemoteObjectInterface:v18];
}

- (void)_addOnAdded:(id)added
{
  v15 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = [(COService *)self _clustersForAddOn:addedCopy];
  v6 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218498;
    selfCopy = self;
    v11 = 2048;
    v12 = addedCopy;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p AddOn %p added for clusters %@. Seeding mesh state", &v9, 0x20u);
  }

  v7 = [(COStateService *)self _stateSetByClientsForAddOn:addedCopy];
  [addedCopy setMeshState:v7];
  [addedCopy setDelegate:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)removed
{
  v22 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  v5 = [(COService *)self _clustersForAddOn:removedCopy];
  v6 = removedCopy;
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v18 = 2048;
    v19 = v6;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p AddOn %p removed for clusters %@", buf, 0x20u);
  }

  meshState = [v6 meshState];
  v9 = [(COStateService *)self _stateSetByClientsForAddOn:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__COStateService__addOnRemoved___block_invoke;
  v13[3] = &unk_278E17790;
  v13[4] = self;
  v14 = v6;
  v15 = v5;
  v10 = v5;
  v11 = v6;
  determineStateChanges(meshState, v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __32__COStateService__addOnRemoved___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 134219010;
    v23 = v8;
    v24 = 2048;
    v25 = v9;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p removal of %p updating %@ and removing %@ for clusters %@", buf, 0x34u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(a1 + 32) _informClientsOfUpdates:v5 removals:v6 inCluster:{*(*(&v17 + 1) + 8 * v15++), v17}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_applicableToCluster:(id)cluster
{
  configuration = [cluster configuration];
  v4 = ([configuration requiredServices] >> 1) & 1;

  return v4;
}

- (void)addOn:(id)on receivedUpdates:(id)updates removals:(id)removals
{
  onCopy = on;
  updatesCopy = updates;
  removalsCopy = removals;
  dispatchQueue = [(COService *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__COStateService_addOn_receivedUpdates_removals___block_invoke;
  v15[3] = &unk_278E15C88;
  v15[4] = self;
  v16 = updatesCopy;
  v17 = removalsCopy;
  v18 = onCopy;
  v12 = onCopy;
  v13 = removalsCopy;
  v14 = updatesCopy;
  dispatch_async(dispatchQueue, v15);
}

void __49__COStateService_addOn_receivedUpdates_removals___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [v3 connectedClients];
    *buf = 134218754;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    v24 = 2048;
    v25 = [v6 count];
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "StateService %p receivedUpdates %@ and removals %@. Service has %ld connectedClients", buf, 0x2Au);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [*(a1 + 32) _clustersForAddOn:{*(a1 + 56), 0}];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) _informClientsOfUpdates:*(a1 + 40) removals:*(a1 + 48) inCluster:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stateForAddOn:(id)on withCallback:(id)callback
{
  onCopy = on;
  callbackCopy = callback;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COStateService_stateForAddOn_withCallback___block_invoke;
  block[3] = &unk_278E15B60;
  block[4] = self;
  v12 = onCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = onCopy;
  dispatch_async(dispatchQueue, block);
}

void __45__COStateService_stateForAddOn_withCallback___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [*(a1 + 32) _clustersForAddOn:*(a1 + 40)];
  v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v24)
  {
    v23 = *v34;
    v26 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v3;
        v4 = *(*(&v33 + 1) + 8 * v3);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28 = [*(a1 + 32) connectedClients];
        v5 = [v28 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v30;
          do
          {
            v8 = 0;
            v27 = v6;
            do
            {
              if (*v30 != v7)
              {
                objc_enumerationMutation(v28);
              }

              v9 = *(*(&v29 + 1) + 8 * v8);
              v10 = [*(a1 + 32) connectedClients];
              v11 = [v10 objectForKeyedSubscript:v9];

              v12 = [v11 clusters];
              LODWORD(v10) = [v12 containsObject:v4];

              if (v10)
              {
                v13 = a1;
                v14 = [v11 suite];
                v15 = [v2 objectForKeyedSubscript:v14];
                if (v15)
                {
                  v16 = [v11 suite];
                  v17 = [v2 objectForKeyedSubscript:v16];
                  v18 = [v17 mutableCopy];
                }

                else
                {
                  v18 = [MEMORY[0x277CBEB38] dictionary];
                }

                v19 = [v11 stateForCluster:v4];
                if (v19)
                {
                  [v18 addEntriesFromDictionary:v19];
                }

                v2 = v26;
                if ([v18 count])
                {
                  v20 = [v11 suite];
                  [v26 setObject:v18 forKey:v20];
                }

                a1 = v13;
                v6 = v27;
              }

              ++v8;
            }

            while (v6 != v8);
            v6 = [v28 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v6);
        }

        v3 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v24);
  }

  (*(*(a1 + 48) + 16))();
  v21 = *MEMORY[0x277D85DE8];
}

- (void)addObserverWithPredicate:(id)predicate suite:(id)suite interestClusters:(id)clusters
{
  v84 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  suiteCopy = suite;
  clustersCopy = clusters;
  currentClient = [(COService *)self currentClient];
  connectedClients = [(COStateService *)self connectedClients];
  v13 = [connectedClients objectForKey:currentClient];

  if (!v13)
  {
    [(COStateService *)self _checkinClientWithSuite:suiteCopy clusters:clustersCopy];
  }

  v46 = clustersCopy;
  v47 = suiteCopy;
  connectedClients2 = [(COStateService *)self connectedClients];
  v15 = [connectedClients2 mutableCopy];

  v16 = [v15 objectForKey:currentClient];
  v17 = [v16 mutableCopy];
  v18 = COCoreLogForCategory(6);
  selfCopy = self;
  v56 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    connection = [currentClient connection];
    processIdentifier = [connection processIdentifier];
    suite = [v56 suite];
    clusters = [v56 clusters];
    *buf = 67109890;
    v77 = processIdentifier;
    v16 = v56;
    v78 = 2112;
    v79 = predicateCopy;
    v80 = 2112;
    v81 = suite;
    v82 = 2112;
    v83 = clusters;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Adding observer for client %d with predicate %@ for suite %@ and clusters %@ ", buf, 0x26u);

    self = selfCopy;
  }

  [v17 addObserverWithPredicate:predicateCopy];
  v44 = v17;
  v51 = currentClient;
  [v15 setObject:v17 forKey:currentClient];
  v45 = v15;
  [(COStateService *)self setConnectedClients:v15];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [v16 clusters];
  v57 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v57)
  {
    v23 = 0;
    v55 = 0;
    v53 = *v69;
    v50 = *MEMORY[0x277CFCF28];
    v49 = *MEMORY[0x277CFCF38];
    v48 = *MEMORY[0x277CFCF30];
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v68 + 1) + 8 * i);
        v26 = [(COService *)self _addOnForCluster:v25];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v58 = v25;
        if (v26)
        {
          meshState = [v26 meshState];
          suite2 = [v16 suite];
          v30 = [meshState objectForKeyedSubscript:suite2];
        }

        else
        {
          meshState = [v16 suite];
          v30 = [(COStateService *)self _stateSetByClientsForSuite:meshState cluster:v25];
        }

        v59 = v26;

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v31 = v30;
        v32 = [v31 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v65;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v65 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v64 + 1) + 8 * j);
              if ([predicateCopy evaluateWithObject:v36])
              {
                v37 = [v31 objectForKeyedSubscript:v36];
                [dictionary setObject:v37 forKey:v36];

                v23 = 1;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v33);
        }

        if (v23)
        {
          v72[0] = v50;
          v72[1] = v49;
          v73[0] = v58;
          v73[1] = dictionary;
          v72[2] = v48;
          v38 = [MEMORY[0x277CBEB98] set];
          v73[2] = v38;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];

          connection2 = [v51 connection];
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __66__COStateService_addObserverWithPredicate_suite_interestClusters___block_invoke;
          v60[3] = &unk_278E177B8;
          self = selfCopy;
          v60[4] = selfCopy;
          v61 = connection2;
          v62 = v51;
          v63 = v58;
          v41 = connection2;
          v42 = [v41 remoteObjectProxyWithErrorHandler:v60];
          [v42 changesObserved:v39 forPredicate:predicateCopy];

          v55 = v39;
        }

        else
        {
          self = selfCopy;
        }

        v16 = v56;
      }

      v57 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v57);
  }

  else
  {
    v55 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __66__COStateService_addObserverWithPredicate_suite_interestClusters___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __66__COStateService_addObserverWithPredicate_suite_interestClusters___block_invoke_cold_1(a1);
  }
}

- (void)removeObserverWithPredicate:(id)predicate
{
  v21 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  currentClient = [(COService *)self currentClient];
  connectedClients = [(COStateService *)self connectedClients];
  v7 = [connectedClients mutableCopy];

  v8 = [v7 objectForKey:currentClient];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    v11 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      connection = [currentClient connection];
      processIdentifier = [connection processIdentifier];
      suite = [v9 suite];
      clusters = [v9 clusters];
      *buf = 67109890;
      *v18 = processIdentifier;
      *&v18[4] = 2112;
      *&v18[6] = predicateCopy;
      *&v18[14] = 2112;
      *&v18[16] = suite;
      v19 = 2112;
      v20 = clusters;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "Removing observer for client %d with predicate %@ for suite %@ and clusters %@ ", buf, 0x26u);
    }

    [v10 removeObserverWithPredicate:predicateCopy];
    [v7 setObject:v10 forKey:currentClient];
    [(COStateService *)self setConnectedClients:v7];
  }

  else
  {
    v10 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *v18 = currentClient;
      *&v18[8] = 2112;
      *&v18[10] = predicateCopy;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "Client [%p] wants to remove an observer for predicate %@ but is not checked in", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDictionary:(id)dictionary suite:(id)suite interestClusters:(id)clusters targetCluster:(id)cluster withCallback:(id)callback
{
  v75 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  suiteCopy = suite;
  clustersCopy = clusters;
  clusterCopy = cluster;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  connectedClients = [(COStateService *)self connectedClients];
  v14 = [connectedClients objectForKey:currentClient];

  if (!v14)
  {
    [(COStateService *)self _checkinClientWithSuite:suiteCopy clusters:clustersCopy];
  }

  v15 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    connection = [currentClient connection];
    *buf = 67109634;
    *&buf[4] = [connection processIdentifier];
    *v72 = 2112;
    *&v72[2] = dictionaryCopy;
    *&v72[10] = 2112;
    *&v72[12] = clusterCopy;
    _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "Client %d setting values %@ in clusters %@", buf, 0x1Cu);
  }

  *buf = 0;
  *v72 = buf;
  *&v72[8] = 0x3032000000;
  *&v72[16] = __Block_byref_object_copy__14;
  v73 = __Block_byref_object_dispose__14;
  v74 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__14;
  v68[4] = __Block_byref_object_dispose__14;
  v69 = [MEMORY[0x277CBEB58] set];
  connectedClients2 = [(COStateService *)self connectedClients];
  v39 = [connectedClients2 objectForKey:currentClient];

  [(COStateService *)self _setIsWriting:1 forClient:currentClient];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = clusterCopy;
  v18 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v18)
  {
    v38 = *v61;
    do
    {
      v42 = v18;
      for (i = 0; i != v42; ++i)
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v60 + 1) + 8 * i);
        v21 = [(COService *)self _addOnForCluster:v20];
        objc_initWeak(&location, self);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke;
        v54[3] = &unk_278E177E0;
        objc_copyWeak(&v58, &location);
        v22 = currentClient;
        v55 = v22;
        v23 = dictionaryCopy;
        v56 = v23;
        v57 = v20;
        v24 = MEMORY[0x245D5FF10](v54);
        v25 = v24;
        if (v21)
        {
          ++v65[3];
          suite = [v39 suite];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke_2;
          v43[3] = &unk_278E17830;
          objc_copyWeak(&v53, &location);
          v50 = &v64;
          v27 = v23;
          v44 = v27;
          v45 = v20;
          v46 = v22;
          v51 = v68;
          v28 = v25;
          v52 = buf;
          selfCopy = self;
          v48 = v28;
          v49 = callbackCopy;
          [v21 setDictionary:v27 suite:suite withCallback:v43];

          objc_destroyWeak(&v53);
        }

        else
        {
          (*(v24 + 16))(v24);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          suite2 = [v39 suite];
          [dictionary setObject:v23 forKey:suite2];

          [(COStateService *)self _informClientsOfUpdates:dictionary removals:MEMORY[0x277CBEC10] inCluster:v20];
        }

        objc_destroyWeak(&v58);
        objc_destroyWeak(&location);
      }

      v18 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v18);
  }

  if (!v65[3])
  {
    [(COStateService *)self _setIsWriting:0 forClient:currentClient];
    connectedClients3 = [(COStateService *)self connectedClients];
    v32 = [connectedClients3 objectForKey:currentClient];

    if ([v32 disconnected])
    {
      [(COStateService *)self _cleanupDisconnectedClient:currentClient];
    }

    else
    {
      (*(callbackCopy + 2))(callbackCopy, *(*v72 + 40));
    }
  }

  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(buf, 8);

  v33 = *MEMORY[0x277D85DE8];
}

void __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke(uint64_t a1)
{
  v1 = a1;
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connectedClients];
    v5 = [v4 mutableCopy];

    v32 = v5;
    v6 = [v5 objectForKey:*(v1 + 32)];
    v27 = [v6 mutableCopy];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = v3;
    obj = [v3 connectedClients];
    v30 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v30)
    {
      v29 = *v43;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v7;
          v8 = *(*(&v42 + 1) + 8 * v7);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v9 = v1;
          v10 = [*(v1 + 40) allKeys];
          v11 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v39;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v39 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v38 + 1) + 8 * i);
                v16 = [v33 connectedClients];
                v17 = [v16 objectForKeyedSubscript:v8];
                v18 = [v17 mutableCopy];

                [v18 removeKeyPath:v15 cluster:*(v9 + 48)];
                [v32 setObject:v18 forKey:v8];
              }

              v12 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v12);
          }

          v7 = v31 + 1;
          v1 = v9;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v30);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [*(v1 + 40) allKeys];
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * j);
          v25 = [*(v1 + 40) objectForKeyedSubscript:v24];
          [v27 setValue:v25 forKeyPath:v24 cluster:*(v1 + 48)];
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v21);
    }

    [v32 setObject:v27 forKey:*(v1 + 32)];
    v3 = v33;
    [v33 setConnectedClients:v32];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke_3;
    block[3] = &unk_278E17808;
    v16 = *(a1 + 80);
    v19 = v3;
    *&v7 = *(a1 + 32);
    *(&v7 + 1) = *(a1 + 40);
    v15 = v7;
    v8 = *(a1 + 48);
    *&v9 = v16;
    *(&v9 + 1) = *(a1 + 88);
    v17 = v9;
    v10 = *(a1 + 64);
    *&v11 = v8;
    *(&v11 + 1) = *(a1 + 56);
    v12 = *(a1 + 96);
    v20 = v15;
    v21 = v11;
    v25 = v12;
    v22 = v5;
    v13 = *(a1 + 72);
    *&v14 = v10;
    *(&v14 + 1) = v13;
    v24 = v17;
    v23 = v14;
    dispatch_async(v6, block);
  }
}

void __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke_3(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  --*(*(*(a1 + 96) + 8) + 24);
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke_3_cold_1(a1, v2);
    }

    [*(*(*(a1 + 104) + 8) + 40) addObject:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 80);
    (*(*(a1 + 80) + 16))();
  }

  if (!*(*(*(a1 + 96) + 8) + 24))
  {
    if ([*(*(*(a1 + 104) + 8) + 40) count])
    {
      v14 = *MEMORY[0x277CFCF68];
      v5 = [*(*(*(a1 + 104) + 8) + 40) allObjects];
      v15[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF60] code:-1002 userInfo:v6];
      v8 = *(*(a1 + 112) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    [*(a1 + 64) _setIsWriting:0 forClient:*(a1 + 56)];
    v10 = [*(a1 + 72) connectedClients];
    v11 = [v10 objectForKey:*(a1 + 56)];

    if ([v11 disconnected])
    {
      [*(a1 + 72) _cleanupDisconnectedClient:*(a1 + 56)];
    }

    else
    {
      v12 = *(*(*(a1 + 112) + 8) + 40);
      (*(*(a1 + 88) + 16))();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeKeyPaths:(id)paths targetClusters:(id)clusters withCallback:(id)callback
{
  v66 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  clustersCopy = clusters;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  connectedClients = [(COStateService *)self connectedClients];
  v33 = [connectedClients objectForKey:currentClient];

  v9 = COCoreLogForCategory(6);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v33)
  {
    if (v10)
    {
      connection = [currentClient connection];
      *buf = 67109634;
      *&buf[4] = [connection processIdentifier];
      *&buf[8] = 2112;
      *&buf[10] = pathsCopy;
      *&buf[18] = 2112;
      *&buf[20] = clustersCopy;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "Client %d removing keyPaths %@ in clusters %@", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__14;
    *&v65 = __Block_byref_object_dispose__14;
    *(&v65 + 1) = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__14;
    v61[4] = __Block_byref_object_dispose__14;
    v62 = [MEMORY[0x277CBEB58] set];
    [(COStateService *)self _setIsWriting:1 forClient:currentClient];
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = clustersCopy;
    v12 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v12)
    {
      v31 = *v54;
      do
      {
        v35 = v12;
        for (i = 0; i != v35; ++i)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          clustersCopy = [(COService *)self _addOnForCluster:v14, clustersCopy];
          objc_initWeak(&location, self);
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke;
          v47[3] = &unk_278E177E0;
          objc_copyWeak(&v51, &location);
          v16 = currentClient;
          v48 = v16;
          v17 = pathsCopy;
          v49 = v17;
          v50 = v14;
          v18 = MEMORY[0x245D5FF10](v47);
          v19 = v18;
          if (clustersCopy)
          {
            ++v58[3];
            suite = [v33 suite];
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke_2;
            v36[3] = &unk_278E17880;
            objc_copyWeak(&v46, &location);
            v43 = &v57;
            v21 = v17;
            v37 = v21;
            v38 = v14;
            v44 = v61;
            v22 = v19;
            v45 = buf;
            v41 = v22;
            selfCopy = self;
            v40 = v16;
            v42 = callbackCopy;
            [clustersCopy removeKeyPaths:v21 suite:suite withCallback:v36];

            objc_destroyWeak(&v46);
          }

          else
          {
            (*(v18 + 16))(v18);
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            suite2 = [v33 suite];
            [dictionary setObject:v17 forKey:suite2];

            [(COStateService *)self _informClientsOfUpdates:MEMORY[0x277CBEC10] removals:dictionary inCluster:v14];
          }

          objc_destroyWeak(&v51);
          objc_destroyWeak(&location);
        }

        v12 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v12);
    }

    if (!v58[3])
    {
      [(COStateService *)self _setIsWriting:0 forClient:currentClient];
      connectedClients2 = [(COStateService *)self connectedClients];
      v26 = [connectedClients2 objectForKey:currentClient];

      if ([v26 disconnected])
      {
        [(COStateService *)self _cleanupDisconnectedClient:currentClient];
      }

      else
      {
        (*(callbackCopy + 2))(callbackCopy, *(*&buf[8] + 40));
      }
    }

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(v61, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v10)
    {
      *buf = 134218754;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = currentClient;
      *&buf[22] = 2112;
      *&buf[24] = pathsCopy;
      LOWORD(v65) = 2112;
      *(&v65 + 2) = clustersCopy;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p Client [%p] wants to remove keypaths [%@] in clusters [%@] but is not checked in", buf, 0x2Au);
    }

    (*(callbackCopy + 2))(callbackCopy, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connectedClients];
    v5 = [v4 mutableCopy];

    v6 = [v5 objectForKey:*(a1 + 32)];
    v7 = [v6 mutableCopy];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 removeKeyPath:*(*(&v14 + 1) + 8 * v12++) cluster:{*(a1 + 48), v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [v5 setObject:v7 forKey:*(a1 + 32)];
    [v3 setConnectedClients:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke_3;
    block[3] = &unk_278E17858;
    v14 = *(a1 + 80);
    v17 = v3;
    *&v7 = *(a1 + 32);
    *(&v7 + 1) = *(a1 + 40);
    v13 = v7;
    *&v7 = v14;
    *(&v7 + 1) = *(a1 + 88);
    v15 = v7;
    v8 = *(a1 + 64);
    v23 = *(a1 + 96);
    v12 = *(a1 + 48);
    v9 = *(&v12 + 1);
    v18 = v13;
    v19 = v12;
    v20 = v5;
    v10 = *(a1 + 72);
    *&v11 = v8;
    *(&v11 + 1) = v10;
    v22 = v15;
    v21 = v11;
    dispatch_async(v6, block);
  }
}

void __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke_3(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  --*(*(*(a1 + 96) + 8) + 24);
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke_3_cold_1(a1, v2, v3);
    }

    [*(*(*(a1 + 104) + 8) + 40) addObject:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 80);
    (*(*(a1 + 80) + 16))();
  }

  if (!*(*(*(a1 + 96) + 8) + 24))
  {
    if ([*(*(*(a1 + 104) + 8) + 40) count])
    {
      v14 = *MEMORY[0x277CFCF68];
      v5 = [*(*(*(a1 + 104) + 8) + 40) allObjects];
      v15[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF60] code:-1002 userInfo:v6];
      v8 = *(*(a1 + 112) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    [*(a1 + 56) _setIsWriting:0 forClient:*(a1 + 64)];
    v10 = [*(a1 + 72) connectedClients];
    v11 = [v10 objectForKey:*(a1 + 64)];

    if ([v11 disconnected])
    {
      [*(a1 + 72) _cleanupDisconnectedClient:*(a1 + 64)];
    }

    else
    {
      v12 = *(*(*(a1 + 112) + 8) + 40);
      (*(*(a1 + 88) + 16))();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)doorbellDelayWithCallback:(id)callback
{
  callbackCopy = callback;
  [(COStateService *)self doorbellDelay];
  (*(callback + 2))(callbackCopy);
}

- (void)_checkinClientWithSuite:(id)suite clusters:(id)clusters
{
  v31 = *MEMORY[0x277D85DE8];
  suiteCopy = suite;
  clustersCopy = clusters;
  currentClient = [(COService *)self currentClient];
  v9 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    connection = [currentClient connection];
    *buf = 67109634;
    processIdentifier = [connection processIdentifier];
    v27 = 2112;
    v28 = suiteCopy;
    v29 = 2112;
    v30 = clustersCopy;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "Client %d checking in with suite %@ and clusters %@", buf, 0x1Cu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = clustersCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(COService *)self _takeAssertionForCluster:*(*(&v20 + 1) + 8 * v15++), v20];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v16 = [[COStateClientInfo alloc] initWithSuite:suiteCopy clusters:v11];
  connectedClients = [(COStateService *)self connectedClients];
  v18 = [connectedClients mutableCopy];

  [v18 setObject:v16 forKey:currentClient];
  [(COStateService *)self setConnectedClients:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_informClientsOfUpdates:(id)updates removals:(id)removals inCluster:(id)cluster
{
  v91 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  removalsCopy = removals;
  clusterCopy = cluster;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  connectedClients = [(COStateService *)self connectedClients];
  allKeys = [connectedClients allKeys];

  obj = allKeys;
  v11 = [allKeys countByEnumeratingWithState:&v83 objects:v90 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v84;
    v44 = v79;
    v57 = *MEMORY[0x277CFCF28];
    v56 = *MEMORY[0x277CFCF38];
    v55 = *MEMORY[0x277CFCF30];
    v46 = clusterCopy;
    selfCopy = self;
    v45 = *v84;
    do
    {
      v14 = 0;
      v48 = v12;
      do
      {
        if (*v84 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v83 + 1) + 8 * v14);
        connectedClients2 = [(COStateService *)self connectedClients];
        v17 = [connectedClients2 objectForKeyedSubscript:v15];

        clusters = [v17 clusters];
        if ([clusters containsObject:clusterCopy])
        {
          v51 = clusters;
          v52 = v14;
          connection = [v15 connection];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v79[0] = __61__COStateService__informClientsOfUpdates_removals_inCluster___block_invoke;
          v79[1] = &unk_278E177B8;
          v79[2] = self;
          v20 = connection;
          v80 = v20;
          v81 = v15;
          v62 = clusterCopy;
          v82 = v62;
          v50 = v20;
          v54 = [v20 remoteObjectProxyWithErrorHandler:v78];
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          observers = [v17 observers];
          allKeys2 = [observers allKeys];

          v53 = allKeys2;
          v63 = [allKeys2 countByEnumeratingWithState:&v74 objects:v89 count:16];
          if (v63)
          {
            v60 = *v75;
            v61 = v17;
            do
            {
              for (i = 0; i != v63; ++i)
              {
                if (*v75 != v60)
                {
                  objc_enumerationMutation(v53);
                }

                v24 = *(*(&v74 + 1) + 8 * i);
                suite = [v17 suite];
                v26 = [updatesCopy objectForKeyedSubscript:suite];

                suite2 = [v17 suite];
                v64 = [removalsCopy objectForKeyedSubscript:suite2];

                dictionary = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setObject:v62 forKey:v57];
                dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                v29 = [MEMORY[0x277CBEB58] set];
                v70 = 0u;
                v71 = 0u;
                v72 = 0u;
                v73 = 0u;
                v30 = v26;
                v31 = [v30 countByEnumeratingWithState:&v70 objects:v88 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v71;
                  do
                  {
                    for (j = 0; j != v32; ++j)
                    {
                      if (*v71 != v33)
                      {
                        objc_enumerationMutation(v30);
                      }

                      v35 = *(*(&v70 + 1) + 8 * j);
                      if ([v24 evaluateWithObject:v35])
                      {
                        v36 = [v30 objectForKeyedSubscript:v35];
                        [dictionary2 setObject:v36 forKey:v35];
                      }
                    }

                    v32 = [v30 countByEnumeratingWithState:&v70 objects:v88 count:16];
                  }

                  while (v32);
                }

                [dictionary setObject:dictionary2 forKey:v56];
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v37 = v64;
                v38 = [v37 countByEnumeratingWithState:&v66 objects:v87 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v67;
                  do
                  {
                    for (k = 0; k != v39; ++k)
                    {
                      if (*v67 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = *(*(&v66 + 1) + 8 * k);
                      if ([v24 evaluateWithObject:v42])
                      {
                        [v29 addObject:v42];
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v66 objects:v87 count:16];
                  }

                  while (v39);
                }

                [dictionary setObject:v29 forKey:v55];
                if ([dictionary2 count] || objc_msgSend(v29, "count"))
                {
                  [v54 changesObserved:dictionary forPredicate:v24];
                }

                v17 = v61;
              }

              v63 = [v53 countByEnumeratingWithState:&v74 objects:v89 count:16];
            }

            while (v63);
          }

          clusterCopy = v46;
          self = selfCopy;
          v13 = v45;
          v12 = v48;
          clusters = v51;
          v14 = v52;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    }

    while (v12);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __61__COStateService__informClientsOfUpdates_removals_inCluster___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__COStateService__informClientsOfUpdates_removals_inCluster___block_invoke_cold_1(a1);
  }
}

- (id)_stateSetByClientsForSuite:(id)suite cluster:(id)cluster
{
  v28 = *MEMORY[0x277D85DE8];
  suiteCopy = suite;
  clusterCopy = cluster;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  connectedClients = [(COStateService *)self connectedClients];
  allKeys = [connectedClients allKeys];

  v10 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        connectedClients2 = [(COStateService *)self connectedClients];
        v16 = [connectedClients2 objectForKeyedSubscript:v14];

        suite = [v16 suite];
        v18 = [suite isEqualToString:suiteCopy];

        if (v18)
        {
          v19 = [v16 stateForCluster:clusterCopy];
          [dictionary addEntriesFromDictionary:v19];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_stateSetByClientsForAddOn:(id)on
{
  v37 = *MEMORY[0x277D85DE8];
  onCopy = on;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  v21 = onCopy;
  [(COService *)self _clustersForAddOn:onCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v23 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v31 + 1) + 8 * v6);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        connectedClients = [(COStateService *)selfCopy connectedClients];
        allValues = [connectedClients allValues];

        v10 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(allValues);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              v15 = [v14 stateForCluster:v7];
              if ([v15 count])
              {
                suite = [v14 suite];
                v17 = [dictionary objectForKey:suite];
                dictionary2 = [v17 mutableCopy];

                if (!dictionary2)
                {
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                }

                [dictionary2 addEntriesFromDictionary:v15];
                [dictionary setObject:dictionary2 forKey:suite];
              }
            }

            v11 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        v6 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)compositionForCluster:(id)cluster withCallback:(id)callback
{
  clusterCopy = cluster;
  callbackCopy = callback;
  v8 = [(COService *)self _addOnForCluster:clusterCopy];
  meshController = [v8 meshController];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__14;
  v60 = __Block_byref_object_dispose__14;
  v61 = objc_alloc_init(MEMORY[0x277CBEA60]);
  if (meshController)
  {
    leader = [meshController leader];
    nodes = [meshController nodes];
    v12 = [nodes mutableCopy];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __53__COStateService_compositionForCluster_withCallback___block_invoke;
    v52[3] = &unk_278E178D0;
    v44 = leader;
    v53 = v44;
    v54 = v8;
    v55 = &v56;
    [v12 enumerateObjectsUsingBlock:v52];
    v43 = v12;
    nodeManager = [meshController nodeManager];
    nodeForMe = [nodeManager nodeForMe];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    iDSIdentifier = [nodeForMe IDSIdentifier];
    [dictionary setObject:iDSIdentifier forKey:*MEMORY[0x277CFCFA0]];

    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFCFB8]];
    homeKitIdentifier = [nodeForMe HomeKitIdentifier];
    if (homeKitIdentifier)
    {
      [dictionary setObject:homeKitIdentifier forKey:*MEMORY[0x277CFCF70]];
    }

    v42 = homeKitIdentifier;
    v18 = [meshController me];
    v19 = v18;
    if (v44 && [v18 isEqual:v44])
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFCFB0]];
    }

    dictionaryRepresentation = [v19 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:*MEMORY[0x277CFCFA8]];

    underlyingNode = [nodeForMe underlyingNode];
    state = [underlyingNode state];

    v23 = [CONode descriptionForState:state];
    [dictionary setObject:v23 forKey:*MEMORY[0x277CFCFD0]];

    v24 = [CONode statusFromState:state];
    [dictionary setObject:v24 forKey:*MEMORY[0x277CFCFD8]];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(meshController, "generation")}];
    [dictionary setObject:v25 forKey:*MEMORY[0x277CFCF90]];

    ballot = [meshController ballot];
    if (ballot)
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__14;
      v50 = __Block_byref_object_dispose__14;
      v51 = objc_alloc_init(MEMORY[0x277CBEA60]);
      candidates = [ballot candidates];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __53__COStateService_compositionForCluster_withCallback___block_invoke_3;
      v45[3] = &unk_278E178A8;
      v45[4] = &v46;
      [candidates enumerateObjectsUsingBlock:v45];

      [dictionary setObject:v47[5] forKey:*MEMORY[0x277CFCF78]];
      _Block_object_dispose(&v46, 8);
    }

    electionStart = [meshController electionStart];
    electionEnd = [meshController electionEnd];
    v30 = 0.0;
    v31 = 0.0;
    v32 = electionEnd >= electionStart;
    v33 = electionEnd - electionStart;
    if (v33 != 0 && v32)
    {
      v31 = v33 / 1000000000.0;
      v30 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - electionEnd) / 1000000000.0;
    }

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
    [dictionary setObject:v34 forKey:*MEMORY[0x277CFCF48]];

    v35 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
    [dictionary setObject:v35 forKey:*MEMORY[0x277CFCF40]];

    v36 = MEMORY[0x277CCABB0];
    [meshController pingMinimum];
    v37 = [v36 numberWithDouble:?];
    [dictionary setObject:v37 forKey:*MEMORY[0x277CFCF58]];

    v38 = MEMORY[0x277CCABB0];
    [meshController pingMaximum];
    v39 = [v38 numberWithDouble:?];
    [dictionary setObject:v39 forKey:*MEMORY[0x277CFCF50]];

    v40 = [v57[5] arrayByAddingObject:dictionary];
    v41 = v57[5];
    v57[5] = v40;
  }

  callbackCopy[2](callbackCopy, v57[5], 0);
  _Block_object_dispose(&v56, 8);
}

void __53__COStateService_compositionForCluster_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 IDSIdentifier];
  [v4 setObject:v5 forKey:*MEMORY[0x277CFCFA0]];

  v43 = [v3 HomeKitIdentifier];
  if (v43)
  {
    [v4 setObject:v43 forKey:*MEMORY[0x277CFCF70]];
  }

  if (*(a1 + 32))
  {
    v6 = [v3 remote];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      [v4 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFCFB0]];
    }
  }

  v45 = [v3 remote];
  if (v45)
  {
    v8 = [v45 dictionaryRepresentation];
    [v4 setObject:v8 forKey:*MEMORY[0x277CFCFA8]];
  }

  v9 = [v3 underlyingNode];
  v10 = [v9 state];

  v11 = [CONode descriptionForState:v10];
  [v4 setObject:v11 forKey:*MEMORY[0x277CFCFD0]];

  v12 = [CONode statusFromState:v10];
  [v4 setObject:v12 forKey:*MEMORY[0x277CFCFD8]];

  v13 = [v3 underlyingNode];
  v46 = [v13 lastElectionInfoReceived];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v46, "generation")}];
  [v4 setObject:v14 forKey:*MEMORY[0x277CFCF90]];

  v44 = [v46 ballot];
  if (v44)
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__14;
    v56 = __Block_byref_object_dispose__14;
    v57 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v15 = [v44 candidates];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __53__COStateService_compositionForCluster_withCallback___block_invoke_2;
    v51[3] = &unk_278E178A8;
    v51[4] = &v52;
    [v15 enumerateObjectsUsingBlock:v51];

    [v4 setObject:v53[5] forKey:*MEMORY[0x277CFCF78]];
    _Block_object_dispose(&v52, 8);
  }

  v16 = MEMORY[0x277CCABB0];
  v17 = [v3 underlyingNode];
  [v17 lastHeard];
  v18 = [v16 numberWithDouble:?];
  [v4 setObject:v18 forKey:*MEMORY[0x277CFCFC0]];

  v19 = MEMORY[0x277CCABB0];
  v20 = [v3 underlyingNode];
  v21 = [v19 numberWithBool:{objc_msgSend(v20, "hasOutstandingProbe")}];
  [v4 setObject:v21 forKey:*MEMORY[0x277CFCF98]];

  v22 = [*(a1 + 40) meshController];
  v23 = [v22 nodeManager];
  v42 = [v23 nodeControllers];

  v24 = [v3 IDSIdentifier];
  v25 = [v42 objectForKey:v24];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v26 = [v25 transports];
  v27 = [v26 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v27)
  {
    v28 = *v48;
LABEL_12:
    v29 = 0;
    while (1)
    {
      if (*v48 != v28)
      {
        objc_enumerationMutation(v26);
      }

      v30 = *(*(&v47 + 1) + 8 * v29);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v26 countByEnumeratingWithState:&v47 objects:v58 count:16];
        if (v27)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    v27 = v30;

    if (!v27)
    {
      goto LABEL_22;
    }

    v31 = MEMORY[0x277CCABB0];
    [v27 averageRequestTime];
    v26 = [v31 numberWithDouble:?];
    [v4 setObject:v26 forKey:*MEMORY[0x277CFCFC8]];
  }

LABEL_21:

LABEL_22:
  v32 = MEMORY[0x277CCABB0];
  v33 = [v3 underlyingNode];
  v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "discoveryType")}];
  [v4 setObject:v34 forKey:*MEMORY[0x277CFCF88]];

  v35 = MEMORY[0x277CCABB0];
  v36 = [v3 underlyingNode];
  v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(v36, "connectionType")}];
  [v4 setObject:v37 forKey:*MEMORY[0x277CFCF80]];

  v38 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObject:v4];
  v39 = *(*(a1 + 48) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;

  v41 = *MEMORY[0x277D85DE8];
}

void __53__COStateService_compositionForCluster_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 dictionaryRepresentation];
  v4 = [v3 arrayByAddingObject:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __53__COStateService_compositionForCluster_withCallback___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 dictionaryRepresentation];
  v4 = [v3 arrayByAddingObject:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)requestCompositionForCluster:(id)cluster withCallback:(id)callback
{
  clusterCopy = cluster;
  callbackCopy = callback;
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    [(COStateService *)self compositionForCluster:clusterCopy withCallback:callbackCopy];
  }

  else
  {
    v8 = [(COService *)self _addOnForCluster:clusterCopy];
    meshController = [v8 meshController];
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__14;
    v55 = __Block_byref_object_dispose__14;
    v56 = objc_alloc_init(MEMORY[0x277CBEA60]);
    if (meshController)
    {
      leader = [meshController leader];
      trackers = [meshController trackers];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __60__COStateService_requestCompositionForCluster_withCallback___block_invoke;
      v48[3] = &unk_278E178F8;
      v12 = leader;
      v49 = v12;
      v50 = &v51;
      [trackers enumerateNodeStateTrackersUsingBlock:v48];

      listener = [meshController listener];
      v14 = listener;
      if (listener)
      {
        client = [listener client];
        localDevice = [client localDevice];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        iDSIdentifier = [v14 IDSIdentifier];
        [dictionary setObject:iDSIdentifier forKey:*MEMORY[0x277CFCFA0]];

        [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFCFB8]];
        homeKitIdentifier = [localDevice homeKitIdentifier];
        if (homeKitIdentifier)
        {
          [dictionary setObject:homeKitIdentifier forKey:*MEMORY[0x277CFCF70]];
        }

        v38 = homeKitIdentifier;
        v40 = [meshController me];
        if (v12 && [v40 isEqual:v12])
        {
          [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFCFB0]];
        }

        dictionaryRepresentation = [v40 dictionaryRepresentation];
        [dictionary setObject:dictionaryRepresentation forKey:*MEMORY[0x277CFCFA8]];

        v20 = COMeshControllerStateDescription([meshController state]);
        [dictionary setObject:v20 forKey:*MEMORY[0x277CFCFD0]];

        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(meshController, "generation")}];
        [dictionary setObject:v21 forKey:*MEMORY[0x277CFCF90]];

        ballot = [meshController ballot];
        if (ballot)
        {
          v42 = 0;
          v43 = &v42;
          v44 = 0x3032000000;
          v45 = __Block_byref_object_copy__14;
          v46 = __Block_byref_object_dispose__14;
          v47 = objc_alloc_init(MEMORY[0x277CBEA60]);
          candidates = [ballot candidates];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __60__COStateService_requestCompositionForCluster_withCallback___block_invoke_3;
          v41[3] = &unk_278E178A8;
          v41[4] = &v42;
          [candidates enumerateObjectsUsingBlock:v41];

          [dictionary setObject:v43[5] forKey:*MEMORY[0x277CFCF78]];
          _Block_object_dispose(&v42, 8);
        }

        electionStart = [meshController electionStart];
        electionEnd = [meshController electionEnd];
        v26 = 0.0;
        v27 = 0.0;
        v28 = electionEnd >= electionStart;
        v29 = electionEnd - electionStart;
        if (v29 != 0 && v28)
        {
          v27 = v29 / 1000000000.0;
          v26 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - electionEnd) / 1000000000.0;
        }

        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        [dictionary setObject:v30 forKey:*MEMORY[0x277CFCF48]];

        v31 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
        [dictionary setObject:v31 forKey:*MEMORY[0x277CFCF40]];

        v32 = MEMORY[0x277CCABB0];
        [meshController pingMinimum];
        v33 = [v32 numberWithDouble:?];
        [dictionary setObject:v33 forKey:*MEMORY[0x277CFCF58]];

        v34 = MEMORY[0x277CCABB0];
        [meshController pingMaximum];
        v35 = [v34 numberWithDouble:?];
        [dictionary setObject:v35 forKey:*MEMORY[0x277CFCF50]];

        v36 = [v52[5] arrayByAddingObject:dictionary];
        v37 = v52[5];
        v52[5] = v36;
      }
    }

    callbackCopy[2](callbackCopy, v52[5], 0);
    _Block_object_dispose(&v51, 8);
  }
}

void __60__COStateService_requestCompositionForCluster_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 node];
  v5 = [v3 state];
  v6 = [v3 status];
  v7 = [v3 lastGenerationReceived];
  v32 = [v3 lastBallotReceived];
  [v3 lastHeard];
  v9 = v8;
  v31 = [v3 hasOutstandingProbe];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [v4 IDSIdentifier];
  [v10 setObject:v11 forKey:*MEMORY[0x277CFCFA0]];

  v12 = [v4 HomeKitIdentifier];
  if (v12)
  {
    [v10 setObject:v12 forKey:*MEMORY[0x277CFCF70]];
  }

  if (*(a1 + 32))
  {
    v13 = [v4 remote];
    v14 = [v13 isEqual:*(a1 + 32)];

    if (v14)
    {
      [v10 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFCFB0]];
    }
  }

  v15 = [v4 remote];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 dictionaryRepresentation];
    [v10 setObject:v17 forKey:*MEMORY[0x277CFCFA8]];
  }

  v18 = COMeshControllerStateDescription(v5);
  [v10 setObject:v18 forKey:*MEMORY[0x277CFCFD0]];

  v19 = COMeshNodeStateTrackerStatusDescription(v6);
  [v10 setObject:v19 forKey:*MEMORY[0x277CFCFD8]];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  [v10 setObject:v20 forKey:*MEMORY[0x277CFCF90]];

  if (v32)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__14;
    v38 = __Block_byref_object_dispose__14;
    v39 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v21 = [v32 candidates];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__COStateService_requestCompositionForCluster_withCallback___block_invoke_2;
    v33[3] = &unk_278E178A8;
    v33[4] = &v34;
    [v21 enumerateObjectsUsingBlock:v33];

    [v10 setObject:v35[5] forKey:*MEMORY[0x277CFCF78]];
    _Block_object_dispose(&v34, 8);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [v10 setObject:v22 forKey:*MEMORY[0x277CFCFC0]];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:v31];
  [v10 setObject:v23 forKey:*MEMORY[0x277CFCF98]];

  v24 = MEMORY[0x277CCABB0];
  [v4 averageRequestTime];
  v25 = [v24 numberWithDouble:?];
  [v10 setObject:v25 forKey:*MEMORY[0x277CFCFC8]];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "discoveryType")}];
  [v10 setObject:v26 forKey:*MEMORY[0x277CFCF88]];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "connectionType")}];
  [v10 setObject:v27 forKey:*MEMORY[0x277CFCF80]];

  v28 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:v10];
  v29 = *(*(a1 + 40) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;
}

void __60__COStateService_requestCompositionForCluster_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 dictionaryRepresentation];
  v4 = [v3 arrayByAddingObject:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __60__COStateService_requestCompositionForCluster_withCallback___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 dictionaryRepresentation];
  v4 = [v3 arrayByAddingObject:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_setIsWriting:(BOOL)writing forClient:(id)client
{
  writingCopy = writing;
  clientCopy = client;
  connectedClients = [(COStateService *)self connectedClients];
  v7 = [connectedClients objectForKey:clientCopy];

  v8 = [v7 mutableCopy];
  outstandingWriteCount = [v8 outstandingWriteCount];
  if (writingCopy)
  {
    v10 = outstandingWriteCount + 1;
  }

  else
  {
    v10 = outstandingWriteCount - 1;
  }

  [v8 setOutstandingWriteCount:v10];
  if ([v8 outstandingWriteCount] < 0)
  {
    [v8 setOutstandingWriteCount:0];
  }

  connectedClients2 = [(COStateService *)self connectedClients];
  v12 = [connectedClients2 mutableCopy];

  [v12 setObject:v8 forKey:clientCopy];
  [(COStateService *)self setConnectedClients:v12];
}

- (void)_cleanupDisconnectedClient:(id)client
{
  v39 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  selfCopy = self;
  connectedClients = [(COStateService *)self connectedClients];
  v6 = [connectedClients objectForKeyedSubscript:clientCopy];

  outstandingWriteCount = [v6 outstandingWriteCount];
  v8 = COCoreLogForCategory(6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (outstandingWriteCount < 1)
  {
    if (v9)
    {
      *buf = 134217984;
      v38 = clientCopy;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up client %p ", buf, 0xCu);
    }

    v28 = clientCopy;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v6 clusters];
    v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v27 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          v17 = [v6 stateForCluster:v16];
          v18 = MEMORY[0x277CBEB98];
          allKeys = [v17 allKeys];
          v20 = [v18 setWithArray:allKeys];

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          suite = [v6 suite];
          [dictionary setObject:v20 forKey:suite];

          v23 = [(COService *)selfCopy _addOnForCluster:v16];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __45__COStateService__cleanupDisconnectedClient___block_invoke;
          v30[3] = &unk_278E16A88;
          v30[4] = v16;
          v31 = v28;
          [v23 sendStateUpdates:0 removals:dictionary withCallback:v30];
          [(COService *)selfCopy _releaseAssertionForCluster:v16];
        }

        v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    connectedClients2 = [(COStateService *)selfCopy connectedClients];
    v10 = [connectedClients2 mutableCopy];

    clientCopy = v28;
    [v10 removeObjectForKey:v28];
    [(COStateService *)selfCopy setConnectedClients:v10];
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      v38 = clientCopy;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "Client %p lost but it has outstanding writes. Defering cleanup", buf, 0xCu);
    }

    v10 = [v6 mutableCopy];
    [v10 setDisconnected:1];
    connectedClients3 = [(COStateService *)selfCopy connectedClients];
    v12 = [connectedClients3 mutableCopy];

    [v12 setObject:v10 forKey:clientCopy];
    [(COStateService *)selfCopy setConnectedClients:v12];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __45__COStateService__cleanupDisconnectedClient___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) connection];
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "Removed keys for cluster %@ set by client %p", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)endpointAvailableInHomeChanged:(BOOL)changed
{
  dispatchQueue = [(COService *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__COStateService_endpointAvailableInHomeChanged___block_invoke;
  v6[3] = &unk_278E17920;
  changedCopy = changed;
  v6[4] = self;
  dispatch_async(dispatchQueue, v6);
}

uint64_t __49__COStateService_endpointAvailableInHomeChanged___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = 89;
    }

    else
    {
      v3 = 78;
    }

    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "Endpoint availability changed to %c", v7, 8u);
  }

  v4 = 0.2;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  result = [*(a1 + 32) setDoorbellDelay:v4];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __66__COStateService_addObserverWithPredicate_suite_interestClusters___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [*(a1 + 40) processIdentifier];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_244378000, v5, v6, "%p failed to notify client %d %@ of the initial state in cluster %@", v7, v8, v9, v10, v12);
  v11 = *MEMORY[0x277D85DE8];
}

void __82__COStateService_setDictionary_suite_interestClusters_targetCluster_withCallback___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) connection];
  [v5 processIdentifier];
  v13 = *a2;
  OUTLINED_FUNCTION_1_5(&dword_244378000, v6, v7, "Failed to set state %@ in cluster %@ for client %d. Error = %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __61__COStateService_removeKeyPaths_targetClusters_withCallback___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *a2;
  v7 = 138412802;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "Failed to remove keyPaths %@ for cluster %@. Error = %@", &v7, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__COStateService__informClientsOfUpdates_removals_inCluster___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [*(a1 + 40) processIdentifier];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_244378000, v5, v6, "%p failed to notify client %d %@ of state changes in cluster %@", v7, v8, v9, v10, v12);
  v11 = *MEMORY[0x277D85DE8];
}

@end