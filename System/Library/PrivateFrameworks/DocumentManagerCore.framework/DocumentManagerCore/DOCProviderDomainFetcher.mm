@interface DOCProviderDomainFetcher
- (BOOL)fetchProviders:(id)providers queue:(id)queue;
- (DOCProviderDomainFetcher)init;
- (id)providersFromIterator:(id)iterator;
- (void)dealloc;
- (void)openSyncCompleted:(id)completed;
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
    providerDomainsContainer = [MEMORY[0x277D04700] providerDomainsContainer];
    providerDomainsNode = v2->_providerDomainsNode;
    v2->_providerDomainsNode = providerDomainsContainer;

    v5 = [MEMORY[0x277D04708] observerForFINode:v2->_providerDomainsNode withObserver:v2];
    observer = v2->_observer;
    v2->_observer = v5;

    [(FINodeObserver *)v2->_observer startObserving:3];
  }

  return v2;
}

- (void)dealloc
{
  observer = [(DOCProviderDomainFetcher *)self observer];
  [observer stopObserving:3];

  v4.receiver = self;
  v4.super_class = DOCProviderDomainFetcher;
  [(DOCProviderDomainFetcher *)&v4 dealloc];
}

- (BOOL)fetchProviders:(id)providers queue:(id)queue
{
  providersCopy = providers;
  queueCopy = queue;
  providerDomainsNode = [(DOCProviderDomainFetcher *)self providerDomainsNode];
  v9 = [providerDomainsNode iteratorWithOptions:0];

  fullyPopulated = [v9 fullyPopulated];
  if (fullyPopulated)
  {
    selfCopy = [(DOCProviderDomainFetcher *)self providersFromIterator:v9];
    providersCopy[2](providersCopy, selfCopy);
  }

  else
  {
    if (!queueCopy)
    {
      queueCopy = dispatch_get_global_queue(21, 0);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    pendingQueuesAndCallbacks = [(DOCProviderDomainFetcher *)selfCopy pendingQueuesAndCallbacks];
    strongToStrongObjectsMapTable = [pendingQueuesAndCallbacks mutableCopy];

    if (!strongToStrongObjectsMapTable)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }

    v14 = [strongToStrongObjectsMapTable objectForKey:queueCopy];
    array = [v14 mutableCopy];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v16 = _Block_copy(providersCopy);
    [array addObject:v16];

    [strongToStrongObjectsMapTable setObject:array forKey:queueCopy];
    [(DOCProviderDomainFetcher *)selfCopy setPendingQueuesAndCallbacks:strongToStrongObjectsMapTable];

    objc_sync_exit(selfCopy);
  }

  return fullyPopulated;
}

- (id)providersFromIterator:(id)iterator
{
  iteratorCopy = iterator;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  first = [iteratorCopy first];
  if (first)
  {
    v6 = first;
    do
    {
      fpDomain = [v6 fpDomain];
      if (fpDomain)
      {
        [v4 addObject:fpDomain];
      }

      next = [iteratorCopy next];

      v6 = next;
    }

    while (next);
  }

  return v4;
}

- (void)openSyncCompleted:(id)completed
{
  v27 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingQueuesAndCallbacks = [(DOCProviderDomainFetcher *)selfCopy pendingQueuesAndCallbacks];
  [(DOCProviderDomainFetcher *)selfCopy setPendingQueuesAndCallbacks:0];
  objc_sync_exit(selfCopy);

  if ([pendingQueuesAndCallbacks count])
  {
    v16 = pendingQueuesAndCallbacks;
    providerDomainsNode = [(DOCProviderDomainFetcher *)selfCopy providerDomainsNode];
    v17 = [providerDomainsNode iteratorWithOptions:0];

    v7 = [(DOCProviderDomainFetcher *)selfCopy providersFromIterator:v17];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = pendingQueuesAndCallbacks;
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

    pendingQueuesAndCallbacks = v16;
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