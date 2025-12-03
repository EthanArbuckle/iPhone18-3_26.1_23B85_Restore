@interface COClusterAliasManager
+ (id)aliasManagerWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue;
- (BOOL)_clusterIsBootstrapped:(id)bootstrapped;
- (COClusterAliasManagerDelegate)delegate;
- (COClusterAliasManagerMeshProvider)provider;
- (NSString)description;
- (id)_initWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue;
- (id)_labelForClusters:(id)clusters;
- (id)_prepareNewMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (id)_providerRequestMesh;
- (void)_activateMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (void)_addWaitingBlock:(id)block forCluster:(id)cluster;
- (void)_applyUpdates;
- (void)_deactivateMeshWithClusterIdentifier:(id)identifier;
- (void)_delegateNotifyActivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)_delegateNotifyDeactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)_invokeWaitingBlocksForClusters:(id)clusters;
- (void)_recomputeAssociations;
- (void)_updateClusterIdentifier:(id)identifier forCluster:(id)cluster;
- (void)didStopMeshController:(id)controller;
- (void)resolver:(id)resolver clusterIdentifierChanged:(id)changed;
- (void)startTrackingCluster:(id)cluster;
- (void)stopTrackingCluster:(id)cluster;
- (void)waitForBootstrapOfCluster:(id)cluster withBlock:(id)block;
@end

@implementation COClusterAliasManager

- (id)_initWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue
{
  providerCopy = provider;
  delegateCopy = delegate;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = COClusterAliasManager;
  v11 = [(COClusterAliasManager *)&v35 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_provider, providerCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_delegateDispatchQueue, queue);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.COClusterAliasManager", v13);
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    resolvers = v12->_resolvers;
    v12->_resolvers = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
    resolving = v12->_resolving;
    v12->_resolving = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    waiting = v12->_waiting;
    v12->_waiting = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    identifiers = v12->_identifiers;
    v12->_identifiers = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    updates = v12->_updates;
    v12->_updates = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    associations = v12->_associations;
    v12->_associations = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    meshes = v12->_meshes;
    v12->_meshes = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB98]);
    starting = v12->_starting;
    v12->_starting = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB98]);
    stopping = v12->_stopping;
    v12->_stopping = v32;
  }

  return v12;
}

+ (id)aliasManagerWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  providerCopy = provider;
  v11 = [[self alloc] _initWithProvider:providerCopy delegate:delegateCopy delegateDispatchQueue:queueCopy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resolvers = [(COClusterAliasManager *)self resolvers];
  v7 = [resolvers count];
  identifiers = [(COClusterAliasManager *)self identifiers];
  v9 = [identifiers count];
  associations = [(COClusterAliasManager *)self associations];
  v11 = [associations count];
  meshes = [(COClusterAliasManager *)self meshes];
  v13 = [v3 stringWithFormat:@"<%@: %p r(%lu) i(%lu) a(%lu) m(%lu)>", v5, self, v7, v9, v11, objc_msgSend(meshes, "count")];

  return v13;
}

- (void)startTrackingCluster:(id)cluster
{
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__COClusterAliasManager_startTrackingCluster___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = clusterCopy;
  v6 = clusterCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__COClusterAliasManager_startTrackingCluster___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) resolvers];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v14 = 134218498;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = v3;
      _os_log_debug_impl(&dword_244378000, v4, OS_LOG_TYPE_DEBUG, "%p already tracking %@ with %p", &v14, 0x20u);
    }
  }

  else
  {
    v3 = [COClusterResolver resolverForCluster:*(a1 + 40) delegate:*(a1 + 32)];
    v7 = [*(a1 + 32) resolvers];
    v4 = [v7 mutableCopy];

    [v4 setObject:v3 forKey:*(a1 + 40)];
    [*(a1 + 32) setResolvers:v4];
    v8 = [*(a1 + 32) resolving];
    v9 = [v8 mutableCopy];

    [v9 addObject:*(a1 + 40)];
    [*(a1 + 32) setResolving:v9];
    v10 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = 134218498;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2048;
      v19 = v3;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p will track %@ with %p", &v14, 0x20u);
    }

    [v3 activate];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingCluster:(id)cluster
{
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__COClusterAliasManager_stopTrackingCluster___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = clusterCopy;
  v6 = clusterCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__COClusterAliasManager_stopTrackingCluster___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) resolvers];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 objectForKey:v5];

  v7 = COCoreLogForCategory(13);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v2;
      v10 = *v4;
      v13 = 134218242;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p stopping tracking %@", &v13, 0x16u);
    }

    v11 = [*v2 resolvers];
    v8 = [v11 mutableCopy];

    [v8 removeObjectForKey:*v4];
    [*v2 setResolvers:v8];
    [*v2 _updateClusterIdentifier:0 forCluster:*v4];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __45__COClusterAliasManager_stopTrackingCluster___block_invoke_cold_1(v2, v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)waitForBootstrapOfCluster:(id)cluster withBlock:(id)block
{
  clusterCopy = cluster;
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke;
  v18[3] = &unk_278E16240;
  v18[4] = self;
  v8 = blockCopy;
  v19 = v8;
  v9 = MEMORY[0x245D5FF10](v18);
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2;
  v14[3] = &unk_278E16268;
  v14[4] = self;
  v15 = clusterCopy;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = clusterCopy;
  dispatch_async(dispatchQueue, v14);
}

void __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateDispatchQueue];
  dispatch_async(v2, *(a1 + 40));
}

void __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) resolvers];
  v4 = (a1 + 40);
  v5 = [v3 objectForKey:*(a1 + 40)];

  if (v5)
  {
    if (![*v2 _clusterIsBootstrapped:*v4])
    {
      [*(a1 + 32) _addWaitingBlock:*(a1 + 56) forCluster:*(a1 + 40)];
      goto LABEL_9;
    }

    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v2;
      v8 = *v4;
      v10 = 134218242;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p already bootstrapped Cluster %@, invoking bootstrap block inline", &v10, 0x16u);
    }
  }

  else
  {
    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2_cold_1(v2, (a1 + 40));
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resolver:(id)resolver clusterIdentifierChanged:(id)changed
{
  resolverCopy = resolver;
  changedCopy = changed;
  cluster = [resolverCopy cluster];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__COClusterAliasManager_resolver_clusterIdentifierChanged___block_invoke;
  v13[3] = &unk_278E15C88;
  v14 = resolverCopy;
  selfCopy = self;
  v16 = cluster;
  v17 = changedCopy;
  v10 = changedCopy;
  v11 = cluster;
  v12 = resolverCopy;
  dispatch_async(dispatchQueue, v13);
}

void __59__COClusterAliasManager_resolver_clusterIdentifierChanged___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) resolvers];
  v4 = [v3 objectForKey:*(a1 + 48)];
  LODWORD(v2) = [v2 isEqual:v4];

  if (v2)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *MEMORY[0x277D85DE8];

    [v7 _updateClusterIdentifier:v5 forCluster:v6];
  }

  else
  {
    v9 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      v11 = *(a1 + 56);
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = 134218754;
      v16 = v13;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_244378000, v9, OS_LOG_TYPE_ERROR, "%p ignoring change to %@ for %@ from %@", &v15, 0x2Au);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateClusterIdentifier:(id)identifier forCluster:(id)cluster
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifiers = [(COClusterAliasManager *)self identifiers];
  v10 = [identifiers objectForKey:clusterCopy];

  updates = [(COClusterAliasManager *)self updates];
  v12 = [updates objectForKey:clusterCopy];

  v13 = identifierCopy;
  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134219010;
    selfCopy = self;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = clusterCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p identifier updated to %@ from %@ (pending %@) for %@", &v22, 0x34u);
  }

  resolving = [(COClusterAliasManager *)self resolving];
  v16 = [resolving containsObject:clusterCopy];

  if (v16)
  {
    resolving2 = [(COClusterAliasManager *)self resolving];
    v18 = [resolving2 mutableCopy];

    [v18 removeObject:clusterCopy];
    [(COClusterAliasManager *)self setResolving:v18];
  }

  if ((v13 || v10 || v12) && (![v12 isEqual:v13] || !objc_msgSend(v10, "isEqual:", v13)))
  {
    updates2 = [(COClusterAliasManager *)self updates];
    v19 = [updates2 mutableCopy];

    if (v13)
    {
      [v19 setObject:v13 forKey:clusterCopy];
    }

    else
    {
      [v19 removeObjectForKey:clusterCopy];
    }

    [(COClusterAliasManager *)self setUpdates:v19];
    if (v10)
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:v10];
    }

    if (v13)
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:v13];
    }

    [(COClusterAliasManager *)self _applyUpdates];
  }

  else
  {
    v19 = [MEMORY[0x277CBEB98] setWithObject:clusterCopy];
    [(COClusterAliasManager *)self _invokeWaitingBlocksForClusters:v19];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_applyUpdates
{
  v33 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  stopping = [(COClusterAliasManager *)self stopping];
  v5 = [stopping count];

  v6 = COCoreLogForCategory(13);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      stopping2 = [(COClusterAliasManager *)self stopping];
      *buf = 134218498;
      selfCopy3 = self;
      v29 = 2048;
      v30 = v5;
      v31 = 2112;
      v32 = stopping2;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p deferring updates, waiting for %lu (%@) to stop", buf, 0x20u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p applying updates", buf, 0xCu);
    }

    updates = [(COClusterAliasManager *)self updates];
    v10 = [updates copy];
    [(COClusterAliasManager *)self setIdentifiers:v10];

    [(COClusterAliasManager *)self _recomputeAssociations];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    associations = [(COClusterAliasManager *)self associations];
    v12 = [associations countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(associations);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          meshes = [(COClusterAliasManager *)self meshes];
          v18 = [meshes objectForKey:v16];

          if (!v18)
          {
            associations2 = [(COClusterAliasManager *)self associations];
            v20 = [associations2 objectForKey:v16];

            [(COClusterAliasManager *)self _activateMeshWithClusterIdentifier:v16 forClusters:v20];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [associations countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p finished applying updates", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_recomputeAssociations
{
  v30 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  identifiers = [(COClusterAliasManager *)self identifiers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [identifiers countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [identifiers objectForKey:v10];
        v12 = [v4 objectForKey:v11];
        v13 = [v12 mutableCopy];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        [v13 addObject:v10];
        [v4 setObject:v13 forKey:v11];
      }

      v7 = [identifiers countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  [(COClusterAliasManager *)selfCopy setAssociations:v4];
  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 count];
    v16 = [identifiers count];
    *buf = 134218496;
    v24 = selfCopy;
    v25 = 2048;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p recomputed associations, %lu meshes for %lu Clusters", buf, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_clusterIsBootstrapped:(id)bootstrapped
{
  bootstrappedCopy = bootstrapped;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  resolving = [(COClusterAliasManager *)self resolving];
  v7 = [resolving containsObject:bootstrappedCopy];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    identifiers = [(COClusterAliasManager *)self identifiers];
    v10 = [identifiers objectForKey:bootstrappedCopy];

    updates = [(COClusterAliasManager *)self updates];
    v12 = [updates objectForKey:bootstrappedCopy];

    if (v12 | v10)
    {
      v13 = [v10 isEqual:v12];
      v8 = v13;
      if (v13 && v10)
      {
        starting = [(COClusterAliasManager *)self starting];
        v15 = [starting containsObject:v10];

        v8 = v15 ^ 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

- (void)_addWaitingBlock:(id)block forCluster:(id)cluster
{
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  waiting = [(COClusterAliasManager *)self waiting];
  v10 = [waiting objectForKey:clusterCopy];

  if (v10)
  {
    v11 = MEMORY[0x245D5FF10](blockCopy);
    v12 = [v10 arrayByAddingObject:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = MEMORY[0x245D5FF10](blockCopy);
    v12 = [v13 initWithObjects:{v11, 0}];
  }

  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v20 = 2048;
    v21 = [v12 count];
    v22 = 2112;
    v23 = clusterCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p now %lu blocks waiting for bootstrap of Cluster %@", buf, 0x20u);
  }

  waiting2 = [(COClusterAliasManager *)self waiting];
  v16 = [waiting2 mutableCopy];

  [v16 setObject:v12 forKey:clusterCopy];
  [(COClusterAliasManager *)self setWaiting:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invokeWaitingBlocksForClusters:(id)clusters
{
  v37 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  waiting = [(COClusterAliasManager *)self waiting];
  v7 = [waiting mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = clustersCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v27;
    *&v11 = 134218242;
    v23 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if ([(COClusterAliasManager *)self _clusterIsBootstrapped:v15, v23])
        {
          waiting2 = [(COClusterAliasManager *)self waiting];
          v17 = [waiting2 objectForKey:v15];

          if (v17)
          {
            v18 = COCoreLogForCategory(13);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v17 count];
              *buf = 134218498;
              selfCopy2 = self;
              v32 = 2048;
              v33 = v19;
              v34 = 2112;
              v35 = v15;
              _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p now invoking %lu blocks waiting for bootstrap of Cluster %@", buf, 0x20u);
            }

            [array addObjectsFromArray:v17];
            [v7 removeObjectForKey:v15];
          }
        }

        else
        {
          v17 = COCoreLogForCategory(13);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            selfCopy2 = self;
            v32 = 2112;
            v33 = v15;
            _os_log_error_impl(&dword_244378000, v17, OS_LOG_TYPE_ERROR, "%p NOT invoking blocks waiting for bootstrap of Cluster %@, not bootstrapped", buf, 0x16u);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v12);
  }

  [(COClusterAliasManager *)self setWaiting:v7];
  delegateDispatchQueue = [(COClusterAliasManager *)self delegateDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__COClusterAliasManager__invokeWaitingBlocksForClusters___block_invoke;
  block[3] = &unk_278E15AB8;
  v25 = array;
  v21 = array;
  dispatch_async(delegateDispatchQueue, block);

  v22 = *MEMORY[0x277D85DE8];
}

void __57__COClusterAliasManager__invokeWaitingBlocksForClusters___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateMeshWithClusterIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  stopping = [(COClusterAliasManager *)self stopping];
  v7 = [stopping containsObject:identifierCopy];

  if (v7)
  {
    v8 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:identifierCopy, v8];
    }
  }

  else
  {
    meshes = [(COClusterAliasManager *)self meshes];
    v8 = [meshes objectForKey:identifierCopy];

    if (v8)
    {
      stopping2 = [(COClusterAliasManager *)self stopping];
      v11 = [stopping2 setByAddingObject:identifierCopy];

      [(COClusterAliasManager *)self setStopping:v11];
      v12 = COCoreLogForCategory(13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218754;
        selfCopy2 = self;
        v19 = 2048;
        v20 = v8;
        v21 = 2112;
        v22 = identifierCopy;
        v23 = 2048;
        v24 = [v11 count];
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p deactivating %p with %@ (%lu stopping)", &v17, 0x2Au);
      }

      starting = [(COClusterAliasManager *)self starting];
      v14 = [starting containsObject:identifierCopy];

      if (v14)
      {
        v15 = COCoreLogForCategory(13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = 134218498;
          selfCopy2 = self;
          v19 = 2048;
          v20 = v8;
          v21 = 2112;
          v22 = identifierCopy;
          _os_log_debug_impl(&dword_244378000, v15, OS_LOG_TYPE_DEBUG, "%p deferring deactivation of %p with %@", &v17, 0x20u);
        }
      }

      else
      {
        [v8 stop];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_activateMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clustersCopy = clusters;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  meshes = [(COClusterAliasManager *)self meshes];
  v10 = [meshes objectForKey:identifierCopy];

  if (v10)
  {
    v11 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy3 = self;
      v23 = 2048;
      v24 = v10;
      v25 = 2112;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = clustersCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p found existing %p with %@ for %@ to activate", buf, 0x2Au);
    }

    goto LABEL_6;
  }

  v10 = [(COClusterAliasManager *)self _prepareNewMeshWithClusterIdentifier:identifierCopy forClusters:clustersCopy];
  if (v10)
  {
LABEL_6:
    starting = [(COClusterAliasManager *)self starting];
    v13 = [starting setByAddingObject:identifierCopy];

    [(COClusterAliasManager *)self setStarting:v13];
    v14 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy3 = self;
      v23 = 2048;
      v24 = v10;
      v25 = 2112;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = clustersCopy;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p activating %p with %@ for %@", buf, 0x2Au);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__COClusterAliasManager__activateMeshWithClusterIdentifier_forClusters___block_invoke;
    v17[3] = &unk_278E15C88;
    v17[4] = self;
    v18 = identifierCopy;
    v19 = v10;
    v20 = clustersCopy;
    v15 = v10;
    [(COClusterAliasManager *)self _delegateNotifyActivatingMesh:v15 withClusterIdentifier:v18 forClusters:v20 completion:v17];

    goto LABEL_9;
  }

  v15 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = clustersCopy;
    _os_log_error_impl(&dword_244378000, v15, OS_LOG_TYPE_ERROR, "%p unable to activate with %@ for %@", buf, 0x20u);
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

void __72__COClusterAliasManager__activateMeshWithClusterIdentifier_forClusters___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) starting];
  v3 = [v2 mutableCopy];

  [v3 removeObject:*(a1 + 40)];
  [*(a1 + 32) setStarting:v3];
  v4 = [*(a1 + 32) stopping];
  v5 = [v4 containsObject:*(a1 + 40)];

  if (v5)
  {
    [*(a1 + 32) didStopMeshController:*(a1 + 48)];
  }

  else
  {
    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v12 = 134219010;
      v13 = v7;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      v20 = 2048;
      v21 = [v3 count];
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting %p with %@ for %@ (%lu starting)", &v12, 0x34u);
    }

    [*(a1 + 48) start];
    [*(a1 + 32) _invokeWaitingBlocksForClusters:*(a1 + 56)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_prepareNewMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v52 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clustersCopy = clusters;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  anyObject = [clustersCopy anyObject];
  configuration = [anyObject configuration];

  options = [configuration options];
  _providerRequestMesh = [(COClusterAliasManager *)self _providerRequestMesh];
  [_providerRequestMesh setClusterOptions:options];
  globalServiceName = [configuration globalServiceName];
  [_providerRequestMesh setGlobalServiceName:globalServiceName];

  if (_providerRequestMesh)
  {
    v14 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy2 = self;
      v46 = 2048;
      v47 = _providerRequestMesh;
      v48 = 2112;
      v49 = identifierCopy;
      v50 = 2112;
      v51 = clustersCopy;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p created %p with %@ for %@", buf, 0x2Au);
    }

    [_providerRequestMesh setMeshName:identifierCopy];
    v15 = [(COClusterAliasManager *)self _labelForClusters:clustersCopy];
    [_providerRequestMesh setLabel:v15];

    v16 = objc_alloc_init(_COClusterAliasManagerStateTrackingAddOn);
    [(_COClusterAliasManagerStateTrackingAddOn *)v16 setAliasManager:self];
    v38 = v16;
    [_providerRequestMesh addAddOn:v16];
    meshes = [(COClusterAliasManager *)self meshes];
    v37 = meshes;
    if ([MEMORY[0x277CFD0B8] isSharedCompanionLinkClientEnabled])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      allValues = [meshes allValues];
      v19 = [allValues countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v40;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(allValues);
            }

            companionLinkClientFactory = [*(*(&v39 + 1) + 8 * i) companionLinkClientFactory];
            if (companionLinkClientFactory)
            {
              v24 = companionLinkClientFactory;

              goto LABEL_15;
            }
          }

          v20 = [allValues countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = objc_alloc_init(COCompanionLinkClientFactory);
LABEL_15:
      [_providerRequestMesh setCompanionLinkClientFactory:v24];

      meshes = v37;
    }

    v25 = [meshes mutableCopy];
    [v25 setObject:_providerRequestMesh forKey:identifierCopy];
    [(COClusterAliasManager *)self setMeshes:v25];
    v26 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v25 count];
      starting = [(COClusterAliasManager *)self starting];
      v28 = configuration;
      v29 = clustersCopy;
      v30 = identifierCopy;
      v31 = [starting count];
      stopping = [(COClusterAliasManager *)self stopping];
      v33 = [stopping count];
      *buf = 134218752;
      selfCopy2 = self;
      v46 = 2048;
      v47 = v36;
      v48 = 2048;
      v49 = v31;
      identifierCopy = v30;
      clustersCopy = v29;
      configuration = v28;
      v50 = 2048;
      v51 = v33;
      _os_log_impl(&dword_244378000, v26, OS_LOG_TYPE_DEFAULT, "%p now %lu meshes (%lu starting, %lu stopping)", buf, 0x2Au);

      meshes = v37;
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return _providerRequestMesh;
}

- (void)didStopMeshController:(id)controller
{
  controllerCopy = controller;
  meshName = [controllerCopy meshName];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COClusterAliasManager_didStopMeshController___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v10 = meshName;
  v11 = controllerCopy;
  v7 = controllerCopy;
  v8 = meshName;
  dispatch_async(dispatchQueue, block);
}

void __47__COClusterAliasManager_didStopMeshController___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) associations];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    *buf = 134218754;
    v16 = v7;
    v17 = 2048;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p deactivating stopped %p with %@ for %@", buf, 0x2Au);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__COClusterAliasManager_didStopMeshController___block_invoke_22;
  v12[3] = &unk_278E15728;
  v12[4] = v10;
  v13 = v8;
  v14 = *(a1 + 48);
  [v10 _delegateNotifyDeactivatingMesh:v9 withClusterIdentifier:v13 forClusters:v3 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __47__COClusterAliasManager_didStopMeshController___block_invoke_22(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) meshes];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) setMeshes:v3];
  v4 = [*(a1 + 32) stopping];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 40)];
  [*(a1 + 32) setStopping:v5];
  v6 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = [v3 count];
    v11 = [*(a1 + 32) starting];
    v13 = 134219266;
    v14 = v9;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = [v11 count];
    v23 = 2048;
    v24 = [v5 count];
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p removing deactivated %p with %@ (now %lu meshes, %lu starting, %lu stopping)", &v13, 0x3Eu);
  }

  [*(a1 + 32) _applyUpdates];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_providerRequestMesh
{
  provider = [(COClusterAliasManager *)self provider];
  v4 = provider;
  if (provider)
  {
    v5 = [provider aliasManagerRequestsNewMesh:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_delegateNotifyActivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  meshCopy = mesh;
  identifierCopy = identifier;
  clustersCopy = clusters;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke;
  v25[3] = &unk_278E16290;
  objc_copyWeak(&v27, &location);
  v14 = completionCopy;
  v26 = v14;
  v15 = MEMORY[0x245D5FF10](v25);
  delegate = [(COClusterAliasManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateDispatchQueue = [(COClusterAliasManager *)self delegateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke_2;
    block[3] = &unk_278E157A0;
    v19 = delegate;
    selfCopy = self;
    v21 = meshCopy;
    v22 = identifierCopy;
    v23 = clustersCopy;
    v24 = v15;
    dispatch_async(delegateDispatchQueue, block);
  }

  else
  {
    v15[2](v15);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dispatchQueue];
    dispatch_async(v3, *(a1 + 32));

    WeakRetained = v4;
  }
}

- (void)_delegateNotifyDeactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  meshCopy = mesh;
  identifierCopy = identifier;
  clustersCopy = clusters;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke;
  v25[3] = &unk_278E16290;
  objc_copyWeak(&v27, &location);
  v14 = completionCopy;
  v26 = v14;
  v15 = MEMORY[0x245D5FF10](v25);
  delegate = [(COClusterAliasManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateDispatchQueue = [(COClusterAliasManager *)self delegateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke_2;
    block[3] = &unk_278E157A0;
    v19 = delegate;
    selfCopy = self;
    v21 = meshCopy;
    v22 = identifierCopy;
    v23 = clustersCopy;
    v24 = v15;
    dispatch_async(delegateDispatchQueue, block);
  }

  else
  {
    v15[2](v15);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dispatchQueue];
    dispatch_async(v3, *(a1 + 32));

    WeakRetained = v4;
  }
}

- (id)_labelForClusters:(id)clusters
{
  v34 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = clustersCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        label = [*(*(&v27 + 1) + 8 * i) label];
        [v4 addObject:label];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277CFCEF0];
  v32[0] = *MEMORY[0x277CFCEE8];
  v32[1] = v11;
  v12 = *MEMORY[0x277CFCEE0];
  v32[2] = *MEMORY[0x277CFCED8];
  v32[3] = v12;
  [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
LABEL_10:
    v17 = 0;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v23 + 1) + 8 * v17);
      if ([v4 containsObject:{v18, v23}])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v19 = v18;

    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_16:
  }

  v20 = [v4 sortedArrayUsingSelector:{sel_localizedCaseInsensitiveCompare_, v23}];
  v19 = [v20 componentsJoinedByString:@"|"];

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (COClusterAliasManagerMeshProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (COClusterAliasManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__COClusterAliasManager_stopTrackingCluster___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v4, v5, "%p not tracking %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2_cold_1(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v4, v5, "%p no resolver for Cluster %@, invoking bootstrap block inline");
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateMeshWithClusterIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p already deactivating %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end