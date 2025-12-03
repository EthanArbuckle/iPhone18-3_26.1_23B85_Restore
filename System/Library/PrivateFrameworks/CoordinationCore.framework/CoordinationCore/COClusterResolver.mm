@interface COClusterResolver
+ (id)resolverForCluster:(id)cluster delegate:(id)delegate;
- (BOOL)_updateIdentifier:(id)identifier;
- (COClusterResolverDelegate)delegate;
- (id)_initWithCluster:(id)cluster delegate:(id)delegate;
- (id)description;
- (void)_activate;
- (void)_delegateNotifyClusterIdentifierChanged:(id)changed;
- (void)_invokeBootstrapBlocks;
- (void)_withLock:(id)lock;
- (void)activate;
@end

@implementation COClusterResolver

- (id)_initWithCluster:(id)cluster delegate:(id)delegate
{
  clusterCopy = cluster;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = COClusterResolver;
  v9 = [(COClusterResolver *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_cluster, cluster);
    objc_storeWeak(p_isa + 3, delegateCopy);
  }

  return p_isa;
}

+ (id)resolverForCluster:(id)cluster delegate:(id)delegate
{
  delegateCopy = delegate;
  clusterCopy = cluster;
  v8 = [[self alloc] _initWithCluster:clusterCopy delegate:delegateCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  currentIdentifier = [(COClusterResolver *)self currentIdentifier];
  cluster = [(COClusterResolver *)self cluster];
  activatedCluster = [(COClusterResolver *)self activatedCluster];
  bootstrapCompleted = [(COClusterResolver *)self bootstrapCompleted];
  v10 = 78;
  if (bootstrapCompleted)
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  if (activatedCluster)
  {
    v10 = 89;
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, i(%@) c(%@) a(%c) b(%c)>"], v5, self, currentIdentifier, cluster, v10, v11);

  return v12;
}

- (void)activate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__COClusterResolver_activate__block_invoke;
  v3[3] = &unk_278E15950;
  v3[4] = self;
  v3[5] = &v4;
  [(COClusterResolver *)self _withLock:v3];
  if (*(v5 + 24) == 1)
  {
    [(COClusterResolver *)self _activate];
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t __29__COClusterResolver_activate__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) activatedCluster];
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v4 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 cluster];
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p activating resolver for Cluster %@", &v8, 0x16u);
    }

    v3 = 1;
    result = [*(a1 + 32) setActivatedCluster:1];
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_activate
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  objc_initWeak(&location, self);
  cluster = [(COClusterResolver *)self cluster];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__COClusterResolver__activate__block_invoke;
  v4[3] = &unk_278E15CD8;
  objc_copyWeak(&v5, &location);
  [cluster activate:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__COClusterResolver__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__COClusterResolver__activate__block_invoke_2;
    v7[3] = &unk_278E15700;
    v7[4] = WeakRetained;
    v6 = v3;
    v8 = v6;
    v9 = &v10;
    [v5 _withLock:v7];
    [v5 _delegateNotifyClusterIdentifierChanged:v6];
    if (*(v11 + 24) == 1)
    {
      [v5 _invokeBootstrapBlocks];
    }

    _Block_object_dispose(&v10, 8);
  }
}

uint64_t __30__COClusterResolver__activate__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bootstrapCompleted];
  [*(a1 + 32) setBootstrapCompleted:1];
  result = [*(a1 + 32) _updateIdentifier:*(a1 + 40)];
  if ((v2 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_invokeBootstrapBlocks
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COClusterResolver__invokeBootstrapBlocks__block_invoke;
  v11[3] = &unk_278E15638;
  v11[4] = self;
  v11[5] = &v12;
  [(COClusterResolver *)self _withLock:v11];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = v13[5];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v18 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v3);
  }

  _Block_object_dispose(&v12, 8);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __43__COClusterResolver__invokeBootstrapBlocks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) waitingForBootstrap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setWaitingForBootstrap:0];
}

- (BOOL)_updateIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  currentIdentifier = [(COClusterResolver *)self currentIdentifier];
  v6 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = currentIdentifier;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p identifier updated to %@ from %@", &v10, 0x20u);
  }

  if (identifierCopy | currentIdentifier && ([currentIdentifier isEqual:identifierCopy] & 1) == 0)
  {
    [(COClusterResolver *)self setCurrentIdentifier:identifierCopy];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_delegateNotifyClusterIdentifierChanged:(id)changed
{
  changedCopy = changed;
  os_unfair_lock_assert_not_owner(&self->_lock);
  delegate = [(COClusterResolver *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    [delegate resolver:self clusterIdentifierChanged:changedCopy];
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (COClusterResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end