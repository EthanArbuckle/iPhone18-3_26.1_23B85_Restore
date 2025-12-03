@interface LCSExtensionMonitor
- (BOOL)hasExtensionForBundleIdentifier:(id)identifier;
- (LCSExtensionMonitor)initWithExtensionPointIdentifier:(id)identifier;
- (NSArray)knownExtensions;
- (void)_queue_notifyUpdatedExtensions:(id)extensions;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)knownExtensionsWithCompletionHandler:(id)handler;
- (void)queryControllerDidUpdate:(id)update resultDifference:(id)difference;
- (void)removeObserver:(id)observer;
- (void)start;
@end

@implementation LCSExtensionMonitor

- (LCSExtensionMonitor)initWithExtensionPointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LCSExtensionMonitor;
  v6 = [(LCSExtensionMonitor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionPointIdentifier, identifier);
    v7->_lock._os_unfair_lock_opaque = 0;
    Serial = BSDispatchQueueCreateSerial();
    queue = v7->_queue;
    v7->_queue = Serial;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    queue_observers = v7->_queue_observers;
    v7->_queue_observers = weakObjectsHashTable;
  }

  return v7;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__LCSExtensionMonitor_invalidate__block_invoke;
  block[3] = &unk_279824D08;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __33__LCSExtensionMonitor_invalidate__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  [*(*(a1 + 32) + 24) enumerateObjectsUsingBlock:&__block_literal_global_2];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  [*(*(a1 + 32) + 16) setDelegate:0];
  [*(*(a1 + 32) + 16) suspend];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__LCSExtensionMonitor_start__block_invoke;
  block[3] = &unk_279824D08;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __28__LCSExtensionMonitor_start__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:*(*(a1 + 32) + 48)];
    v9[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

    v4 = [objc_alloc(MEMORY[0x277CC5E00]) initWithQueries:v3 delegate:*(a1 + 32)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    [*(*(a1 + 32) + 16) setDelegate:?];
    [*(*(a1 + 32) + 16) resume];
    v7 = [MEMORY[0x277CC5E00] executeQueries:v3];
    [*(a1 + 32) _queue_notifyUpdatedExtensions:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notifyUpdatedExtensions:(id)extensions
{
  v56 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v5 = LCSLogExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extensionPointIdentifier = self->_extensionPointIdentifier;
    *buf = 138412802;
    v51 = extensionPointIdentifier;
    v52 = 2048;
    v53 = [extensionsCopy count];
    v54 = 2112;
    v55 = extensionsCopy;
    _os_log_impl(&dword_256175000, v5, OS_LOG_TYPE_DEFAULT, "Extensions updated for %@ monitoring; Received %lu extensions: %@", buf, 0x20u);
  }

  weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
  os_unfair_lock_lock(&self->_lock);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = self->_lock_knownExtensions;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        identity = [v13 identity];
        [weakToWeakObjectsMapTable setObject:v13 forKey:identity];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  selfCopy = self;
  if (self->_lock_knownExtensions)
  {
    lock_knownExtensions = self->_lock_knownExtensions;
  }

  else
  {
    lock_knownExtensions = MEMORY[0x277CBEBF8];
  }

  v33 = [MEMORY[0x277CBEB98] setWithArray:lock_knownExtensions];
  v16 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = extensionsCopy;
  v17 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v40 + 1) + 8 * v20);
        v22 = LCSLogExtension();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v21;
          _os_log_impl(&dword_256175000, v22, OS_LOG_TYPE_DEFAULT, "Examining extension identity %@", buf, 0xCu);
        }

        v23 = [weakToWeakObjectsMapTable objectForKey:v21];
        if (v23)
        {
          v24 = v23;
          v25 = LCSLogExtension();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v21;
            _os_log_impl(&dword_256175000, v25, OS_LOG_TYPE_DEFAULT, "Extension identity %@ already tracked", buf, 0xCu);
          }

LABEL_25:
          [v16 addObject:v24];
          goto LABEL_26;
        }

        v24 = [LCSExtension extensionWithIdentity:v21];
        if (v24)
        {
          goto LABEL_25;
        }

        v24 = LCSLogExtension();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v21;
          _os_log_error_impl(&dword_256175000, v24, OS_LOG_TYPE_ERROR, "Failed to add new extension wrapper: %@; PRPosterExtension unable to create extension", buf, 0xCu);
        }

LABEL_26:

        ++v20;
      }

      while (v18 != v20);
      v26 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      v18 = v26;
    }

    while (v26);
  }

  v27 = [v16 copy];
  if ([v33 isEqual:v27])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    v28 = LCSLogExtension();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_256175000, v28, OS_LOG_TYPE_DEFAULT, "Not notifying delegate of updated extensions, no changes detected.", buf, 2u);
    }
  }

  else
  {
    bs_array = [v27 bs_array];
    v30 = selfCopy->_lock_knownExtensions;
    selfCopy->_lock_knownExtensions = bs_array;

    os_unfair_lock_unlock(&selfCopy->_lock);
    queue = selfCopy->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__LCSExtensionMonitor__queue_notifyUpdatedExtensions___block_invoke;
    block[3] = &unk_279824DF0;
    block[4] = selfCopy;
    v37 = v27;
    v38 = v33;
    v39 = v37;
    dispatch_async(queue, block);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __54__LCSExtensionMonitor__queue_notifyUpdatedExtensions___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1[4] + 32) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 captureExtensionProvider:a1[4] didUpdateKnownExtensions:a1[5]];
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 captureExtensionProvider:a1[4] updatedKnownExtensionsFrom:a1[6] to:a1[7]];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)knownExtensions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_lock_knownExtensions copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasExtensionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSArray *)self->_lock_knownExtensions copy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    goto LABEL_4;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__LCSExtensionMonitor_hasExtensionForBundleIdentifier___block_invoke;
  v14[3] = &unk_279824F38;
  v15 = identifierCopy;
  v6 = [v5 bs_firstObjectPassingTest:v14];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
LABEL_4:
    v8 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:self->_extensionPointIdentifier];
    v9 = [MEMORY[0x277CC5E00] executeQuery:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__LCSExtensionMonitor_hasExtensionForBundleIdentifier___block_invoke_2;
    v12[3] = &unk_279824DA0;
    v13 = identifierCopy;
    v10 = [v9 bs_firstObjectPassingTest:v12];
    v7 = v10 != 0;
  }

  return v7;
}

uint64_t __55__LCSExtensionMonitor_hasExtensionForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __55__LCSExtensionMonitor_hasExtensionForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)knownExtensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:self->_extensionPointIdentifier];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CC5E00];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__LCSExtensionMonitor_knownExtensionsWithCompletionHandler___block_invoke;
  v8[3] = &unk_279824F88;
  objc_copyWeak(&v10, &location);
  v7 = handlerCopy;
  v9 = v7;
  [v6 executeQuery:v5 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__LCSExtensionMonitor_knownExtensionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__LCSExtensionMonitor_knownExtensionsWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279824F60;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

void __60__LCSExtensionMonitor_knownExtensionsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _queue_notifyUpdatedExtensions:*(a1 + 40)];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = v2;
  v4 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  (*(*(a1 + 48) + 16))();
}

- (void)queryControllerDidUpdate:(id)update resultDifference:(id)difference
{
  updateCopy = update;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__LCSExtensionMonitor_queryControllerDidUpdate_resultDifference___block_invoke;
  v8[3] = &unk_279824C98;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_async(queue, v8);
}

void __65__LCSExtensionMonitor_queryControllerDidUpdate_resultDifference___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) extensionIdentities];
  [v1 _queue_notifyUpdatedExtensions:v2];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__LCSExtensionMonitor_addObserver___block_invoke;
    v7[3] = &unk_279824C98;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__LCSExtensionMonitor_removeObserver___block_invoke;
    v7[3] = &unk_279824C98;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

@end