@interface DOCProviderDomainFetcher
- (BOOL)fetchProviders:(id)a3 queue:(id)a4;
- (DOCProviderDomainFetcher)init;
- (id)providersFromIterator:(id)a3;
- (void)dealloc;
- (void)openSyncCompleted:(id)a3;
@end

@implementation DOCProviderDomainFetcher

- (DOCProviderDomainFetcher)init
{
  v8.receiver = self;
  v8.super_class = DOCProviderDomainFetcher;
  v2 = [(DOCProviderDomainFetcher *)&v8 init];
  if (v2)
  {
    StartFINode();
    v3 = [MEMORY[0x277D04700] providerDomainsContainer];
    providerDomainsNode = v2->_providerDomainsNode;
    v2->_providerDomainsNode = v3;

    v5 = [MEMORY[0x277D04708] observerForFINode:v2->_providerDomainsNode withObserver:v2];
    observer = v2->_observer;
    v2->_observer = v5;

    [(FINodeObserver *)v2->_observer startObserving:3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(DOCProviderDomainFetcher *)self observer];
  [v3 stopObserving:3];

  v4.receiver = self;
  v4.super_class = DOCProviderDomainFetcher;
  [(DOCProviderDomainFetcher *)&v4 dealloc];
}

- (BOOL)fetchProviders:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DOCProviderDomainFetcher *)self providerDomainsNode];
  v9 = [v8 iteratorWithOptions:0];

  v10 = [v9 fullyPopulated];
  if (v10)
  {
    v11 = [(DOCProviderDomainFetcher *)self providersFromIterator:v9];
    v6[2](v6, v11);
  }

  else
  {
    if (!v7)
    {
      v7 = dispatch_get_global_queue(21, 0);
    }

    v11 = self;
    objc_sync_enter(v11);
    v12 = [(DOCProviderDomainFetcher *)v11 pendingQueuesAndCallbacks];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v13 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }

    v14 = [v13 objectForKey:v7];
    v15 = [v14 mutableCopy];

    if (!v15)
    {
      v15 = [MEMORY[0x277CBEB18] array];
    }

    v16 = _Block_copy(v6);
    [v15 addObject:v16];

    [v13 setObject:v15 forKey:v7];
    [(DOCProviderDomainFetcher *)v11 setPendingQueuesAndCallbacks:v13];

    objc_sync_exit(v11);
  }

  return v10;
}

- (id)providersFromIterator:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v3 first];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [v6 fpDomain];
      if (v7)
      {
        [v4 addObject:v7];
      }

      v8 = [v3 next];

      v6 = v8;
    }

    while (v8);
  }

  return v4;
}

- (void)openSyncCompleted:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DOCProviderDomainFetcher *)v4 pendingQueuesAndCallbacks];
  [(DOCProviderDomainFetcher *)v4 setPendingQueuesAndCallbacks:0];
  objc_sync_exit(v4);

  if ([v5 count])
  {
    v16 = v5;
    v6 = [(DOCProviderDomainFetcher *)v4 providerDomainsNode];
    v17 = [v6 iteratorWithOptions:0];

    v7 = [(DOCProviderDomainFetcher *)v4 providersFromIterator:v17];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v13 = [v8 objectForKey:v12];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__DOCProviderDomainFetcher_openSyncCompleted___block_invoke;
          block[3] = &unk_278F9B430;
          v20 = v13;
          v21 = v7;
          v14 = v13;
          dispatch_async(v12, block);

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v5 = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__DOCProviderDomainFetcher_openSyncCompleted___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end