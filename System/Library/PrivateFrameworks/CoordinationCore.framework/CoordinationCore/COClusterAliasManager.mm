@interface COClusterAliasManager
+ (id)aliasManagerWithProvider:(id)a3 delegate:(id)a4 delegateDispatchQueue:(id)a5;
- (BOOL)_clusterIsBootstrapped:(id)a3;
- (COClusterAliasManagerDelegate)delegate;
- (COClusterAliasManagerMeshProvider)provider;
- (NSString)description;
- (id)_initWithProvider:(id)a3 delegate:(id)a4 delegateDispatchQueue:(id)a5;
- (id)_labelForClusters:(id)a3;
- (id)_prepareNewMeshWithClusterIdentifier:(id)a3 forClusters:(id)a4;
- (id)_providerRequestMesh;
- (void)_activateMeshWithClusterIdentifier:(id)a3 forClusters:(id)a4;
- (void)_addWaitingBlock:(id)a3 forCluster:(id)a4;
- (void)_applyUpdates;
- (void)_deactivateMeshWithClusterIdentifier:(id)a3;
- (void)_delegateNotifyActivatingMesh:(id)a3 withClusterIdentifier:(id)a4 forClusters:(id)a5 completion:(id)a6;
- (void)_delegateNotifyDeactivatingMesh:(id)a3 withClusterIdentifier:(id)a4 forClusters:(id)a5 completion:(id)a6;
- (void)_invokeWaitingBlocksForClusters:(id)a3;
- (void)_recomputeAssociations;
- (void)_updateClusterIdentifier:(id)a3 forCluster:(id)a4;
- (void)didStopMeshController:(id)a3;
- (void)resolver:(id)a3 clusterIdentifierChanged:(id)a4;
- (void)startTrackingCluster:(id)a3;
- (void)stopTrackingCluster:(id)a3;
- (void)waitForBootstrapOfCluster:(id)a3 withBlock:(id)a4;
@end

@implementation COClusterAliasManager

- (id)_initWithProvider:(id)a3 delegate:(id)a4 delegateDispatchQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = COClusterAliasManager;
  v11 = [(COClusterAliasManager *)&v35 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_provider, v8);
    objc_storeWeak(&v12->_delegate, v9);
    objc_storeStrong(&v12->_delegateDispatchQueue, a5);
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

+ (id)aliasManagerWithProvider:(id)a3 delegate:(id)a4 delegateDispatchQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithProvider:v10 delegate:v9 delegateDispatchQueue:v8];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COClusterAliasManager *)self resolvers];
  v7 = [v6 count];
  v8 = [(COClusterAliasManager *)self identifiers];
  v9 = [v8 count];
  v10 = [(COClusterAliasManager *)self associations];
  v11 = [v10 count];
  v12 = [(COClusterAliasManager *)self meshes];
  v13 = [v3 stringWithFormat:@"<%@: %p r(%lu) i(%lu) a(%lu) m(%lu)>", v5, self, v7, v9, v11, objc_msgSend(v12, "count")];

  return v13;
}

- (void)startTrackingCluster:(id)a3
{
  v4 = a3;
  v5 = [(COClusterAliasManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__COClusterAliasManager_startTrackingCluster___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)stopTrackingCluster:(id)a3
{
  v4 = a3;
  v5 = [(COClusterAliasManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__COClusterAliasManager_stopTrackingCluster___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)waitForBootstrapOfCluster:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke;
  v18[3] = &unk_278E16240;
  v18[4] = self;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x245D5FF10](v18);
  v10 = [(COClusterAliasManager *)self dispatchQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2;
  v14[3] = &unk_278E16268;
  v14[4] = self;
  v15 = v6;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, v14);
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

- (void)resolver:(id)a3 clusterIdentifierChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cluster];
  v9 = [(COClusterAliasManager *)self dispatchQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__COClusterAliasManager_resolver_clusterIdentifierChanged___block_invoke;
  v13[3] = &unk_278E15C88;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(v9, v13);
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

- (void)_updateClusterIdentifier:(id)a3 forCluster:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(COClusterAliasManager *)self identifiers];
  v10 = [v9 objectForKey:v7];

  v11 = [(COClusterAliasManager *)self updates];
  v12 = [v11 objectForKey:v7];

  v13 = v6;
  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134219010;
    v23 = self;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p identifier updated to %@ from %@ (pending %@) for %@", &v22, 0x34u);
  }

  v15 = [(COClusterAliasManager *)self resolving];
  v16 = [v15 containsObject:v7];

  if (v16)
  {
    v17 = [(COClusterAliasManager *)self resolving];
    v18 = [v17 mutableCopy];

    [v18 removeObject:v7];
    [(COClusterAliasManager *)self setResolving:v18];
  }

  if ((v13 || v10 || v12) && (![v12 isEqual:v13] || !objc_msgSend(v10, "isEqual:", v13)))
  {
    v20 = [(COClusterAliasManager *)self updates];
    v19 = [v20 mutableCopy];

    if (v13)
    {
      [v19 setObject:v13 forKey:v7];
    }

    else
    {
      [v19 removeObjectForKey:v7];
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
    v19 = [MEMORY[0x277CBEB98] setWithObject:v7];
    [(COClusterAliasManager *)self _invokeWaitingBlocksForClusters:v19];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_applyUpdates
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(COClusterAliasManager *)self stopping];
  v5 = [v4 count];

  v6 = COCoreLogForCategory(13);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(COClusterAliasManager *)self stopping];
      *buf = 134218498;
      v28 = self;
      v29 = 2048;
      v30 = v5;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p deferring updates, waiting for %lu (%@) to stop", buf, 0x20u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      v28 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p applying updates", buf, 0xCu);
    }

    v9 = [(COClusterAliasManager *)self updates];
    v10 = [v9 copy];
    [(COClusterAliasManager *)self setIdentifiers:v10];

    [(COClusterAliasManager *)self _recomputeAssociations];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(COClusterAliasManager *)self associations];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          v17 = [(COClusterAliasManager *)self meshes];
          v18 = [v17 objectForKey:v16];

          if (!v18)
          {
            v19 = [(COClusterAliasManager *)self associations];
            v20 = [v19 objectForKey:v16];

            [(COClusterAliasManager *)self _activateMeshWithClusterIdentifier:v16 forClusters:v20];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p finished applying updates", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_recomputeAssociations
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = self;
  v5 = [(COClusterAliasManager *)self identifiers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = [v4 objectForKey:v11];
        v13 = [v12 mutableCopy];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        [v13 addObject:v10];
        [v4 setObject:v13 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  [(COClusterAliasManager *)v18 setAssociations:v4];
  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 count];
    v16 = [v5 count];
    *buf = 134218496;
    v24 = v18;
    v25 = 2048;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p recomputed associations, %lu meshes for %lu Clusters", buf, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_clusterIsBootstrapped:(id)a3
{
  v4 = a3;
  v5 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COClusterAliasManager *)self resolving];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(COClusterAliasManager *)self identifiers];
    v10 = [v9 objectForKey:v4];

    v11 = [(COClusterAliasManager *)self updates];
    v12 = [v11 objectForKey:v4];

    if (v12 | v10)
    {
      v13 = [v10 isEqual:v12];
      v8 = v13;
      if (v13 && v10)
      {
        v14 = [(COClusterAliasManager *)self starting];
        v15 = [v14 containsObject:v10];

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

- (void)_addWaitingBlock:(id)a3 forCluster:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(COClusterAliasManager *)self waiting];
  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    v11 = MEMORY[0x245D5FF10](v6);
    v12 = [v10 arrayByAddingObject:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = MEMORY[0x245D5FF10](v6);
    v12 = [v13 initWithObjects:{v11, 0}];
  }

  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v19 = self;
    v20 = 2048;
    v21 = [v12 count];
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p now %lu blocks waiting for bootstrap of Cluster %@", buf, 0x20u);
  }

  v15 = [(COClusterAliasManager *)self waiting];
  v16 = [v15 mutableCopy];

  [v16 setObject:v12 forKey:v7];
  [(COClusterAliasManager *)self setWaiting:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invokeWaitingBlocksForClusters:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COClusterAliasManager *)self waiting];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v4;
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
          v16 = [(COClusterAliasManager *)self waiting];
          v17 = [v16 objectForKey:v15];

          if (v17)
          {
            v18 = COCoreLogForCategory(13);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v17 count];
              *buf = 134218498;
              v31 = self;
              v32 = 2048;
              v33 = v19;
              v34 = 2112;
              v35 = v15;
              _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p now invoking %lu blocks waiting for bootstrap of Cluster %@", buf, 0x20u);
            }

            [v8 addObjectsFromArray:v17];
            [v7 removeObjectForKey:v15];
          }
        }

        else
        {
          v17 = COCoreLogForCategory(13);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v31 = self;
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
  v20 = [(COClusterAliasManager *)self delegateDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__COClusterAliasManager__invokeWaitingBlocksForClusters___block_invoke;
  block[3] = &unk_278E15AB8;
  v25 = v8;
  v21 = v8;
  dispatch_async(v20, block);

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

- (void)_deactivateMeshWithClusterIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COClusterAliasManager *)self stopping];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:v4, v8];
    }
  }

  else
  {
    v9 = [(COClusterAliasManager *)self meshes];
    v8 = [v9 objectForKey:v4];

    if (v8)
    {
      v10 = [(COClusterAliasManager *)self stopping];
      v11 = [v10 setByAddingObject:v4];

      [(COClusterAliasManager *)self setStopping:v11];
      v12 = COCoreLogForCategory(13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218754;
        v18 = self;
        v19 = 2048;
        v20 = v8;
        v21 = 2112;
        v22 = v4;
        v23 = 2048;
        v24 = [v11 count];
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p deactivating %p with %@ (%lu stopping)", &v17, 0x2Au);
      }

      v13 = [(COClusterAliasManager *)self starting];
      v14 = [v13 containsObject:v4];

      if (v14)
      {
        v15 = COCoreLogForCategory(13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = 134218498;
          v18 = self;
          v19 = 2048;
          v20 = v8;
          v21 = 2112;
          v22 = v4;
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

- (void)_activateMeshWithClusterIdentifier:(id)a3 forClusters:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(COClusterAliasManager *)self meshes];
  v10 = [v9 objectForKey:v6];

  if (v10)
  {
    v11 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v22 = self;
      v23 = 2048;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p found existing %p with %@ for %@ to activate", buf, 0x2Au);
    }

    goto LABEL_6;
  }

  v10 = [(COClusterAliasManager *)self _prepareNewMeshWithClusterIdentifier:v6 forClusters:v7];
  if (v10)
  {
LABEL_6:
    v12 = [(COClusterAliasManager *)self starting];
    v13 = [v12 setByAddingObject:v6];

    [(COClusterAliasManager *)self setStarting:v13];
    v14 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v22 = self;
      v23 = 2048;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p activating %p with %@ for %@", buf, 0x2Au);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__COClusterAliasManager__activateMeshWithClusterIdentifier_forClusters___block_invoke;
    v17[3] = &unk_278E15C88;
    v17[4] = self;
    v18 = v6;
    v19 = v10;
    v20 = v7;
    v15 = v10;
    [(COClusterAliasManager *)self _delegateNotifyActivatingMesh:v15 withClusterIdentifier:v18 forClusters:v20 completion:v17];

    goto LABEL_9;
  }

  v15 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v22 = self;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
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

- (id)_prepareNewMeshWithClusterIdentifier:(id)a3 forClusters:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 anyObject];
  v10 = [v9 configuration];

  v11 = [v10 options];
  v12 = [(COClusterAliasManager *)self _providerRequestMesh];
  [v12 setClusterOptions:v11];
  v13 = [v10 globalServiceName];
  [v12 setGlobalServiceName:v13];

  if (v12)
  {
    v14 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v45 = self;
      v46 = 2048;
      v47 = v12;
      v48 = 2112;
      v49 = v6;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p created %p with %@ for %@", buf, 0x2Au);
    }

    [v12 setMeshName:v6];
    v15 = [(COClusterAliasManager *)self _labelForClusters:v7];
    [v12 setLabel:v15];

    v16 = objc_alloc_init(_COClusterAliasManagerStateTrackingAddOn);
    [(_COClusterAliasManagerStateTrackingAddOn *)v16 setAliasManager:self];
    v38 = v16;
    [v12 addAddOn:v16];
    v17 = [(COClusterAliasManager *)self meshes];
    v37 = v17;
    if ([MEMORY[0x277CFD0B8] isSharedCompanionLinkClientEnabled])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = [v17 allValues];
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v39 + 1) + 8 * i) companionLinkClientFactory];
            if (v23)
            {
              v24 = v23;

              goto LABEL_15;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = objc_alloc_init(COCompanionLinkClientFactory);
LABEL_15:
      [v12 setCompanionLinkClientFactory:v24];

      v17 = v37;
    }

    v25 = [v17 mutableCopy];
    [v25 setObject:v12 forKey:v6];
    [(COClusterAliasManager *)self setMeshes:v25];
    v26 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v25 count];
      v27 = [(COClusterAliasManager *)self starting];
      v28 = v10;
      v29 = v7;
      v30 = v6;
      v31 = [v27 count];
      v32 = [(COClusterAliasManager *)self stopping];
      v33 = [v32 count];
      *buf = 134218752;
      v45 = self;
      v46 = 2048;
      v47 = v36;
      v48 = 2048;
      v49 = v31;
      v6 = v30;
      v7 = v29;
      v10 = v28;
      v50 = 2048;
      v51 = v33;
      _os_log_impl(&dword_244378000, v26, OS_LOG_TYPE_DEFAULT, "%p now %lu meshes (%lu starting, %lu stopping)", buf, 0x2Au);

      v17 = v37;
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)didStopMeshController:(id)a3
{
  v4 = a3;
  v5 = [v4 meshName];
  v6 = [(COClusterAliasManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COClusterAliasManager_didStopMeshController___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
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
  v3 = [(COClusterAliasManager *)self provider];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aliasManagerRequestsNewMesh:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_delegateNotifyActivatingMesh:(id)a3 withClusterIdentifier:(id)a4 forClusters:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke;
  v25[3] = &unk_278E16290;
  objc_copyWeak(&v27, &location);
  v14 = v13;
  v26 = v14;
  v15 = MEMORY[0x245D5FF10](v25);
  v16 = [(COClusterAliasManager *)self delegate];
  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [(COClusterAliasManager *)self delegateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke_2;
    block[3] = &unk_278E157A0;
    v19 = v16;
    v20 = self;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v15;
    dispatch_async(v17, block);
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

- (void)_delegateNotifyDeactivatingMesh:(id)a3 withClusterIdentifier:(id)a4 forClusters:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke;
  v25[3] = &unk_278E16290;
  objc_copyWeak(&v27, &location);
  v14 = v13;
  v26 = v14;
  v15 = MEMORY[0x245D5FF10](v25);
  v16 = [(COClusterAliasManager *)self delegate];
  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [(COClusterAliasManager *)self delegateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke_2;
    block[3] = &unk_278E157A0;
    v19 = v16;
    v20 = self;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v15;
    dispatch_async(v17, block);
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

- (id)_labelForClusters:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v27 + 1) + 8 * i) label];
        [v4 addObject:v10];
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