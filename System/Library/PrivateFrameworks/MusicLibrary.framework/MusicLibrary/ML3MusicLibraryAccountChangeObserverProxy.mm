@interface ML3MusicLibraryAccountChangeObserverProxy
+ (ML3MusicLibraryAccountChangeObserverProxy)sharedProxy;
- (NSHashTable)readonlyObservers;
- (NSHashTable)weakObservers;
- (id)_init;
- (void)addAccountChangeObserver:(id)observer;
- (void)emergencyDisconnectWithCompletion:(id)completion;
- (void)performDatabasePathChange:(id)change completion:(id)completion;
- (void)removeAccountChangeObserver:(id)observer;
- (void)terminateForFailureToPerformDatabasePathChange;
@end

@implementation ML3MusicLibraryAccountChangeObserverProxy

+ (ML3MusicLibraryAccountChangeObserverProxy)sharedProxy
{
  if (sharedProxy_onceToken != -1)
  {
    dispatch_once(&sharedProxy_onceToken, &__block_literal_global_25258);
  }

  v3 = sharedProxy___sharedProxy;

  return v3;
}

uint64_t __56__ML3MusicLibraryAccountChangeObserverProxy_sharedProxy__block_invoke()
{
  sharedProxy___sharedProxy = [[ML3MusicLibraryAccountChangeObserverProxy alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = ML3MusicLibraryAccountChangeObserverProxy;
  v2 = [(ML3MusicLibraryAccountChangeObserverProxy *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.medialibrary.change-proxy-serial-queue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_create("com.apple.medialibrary.change-proxy-callout-queue", MEMORY[0x277D85CD8]);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;
  }

  return v2;
}

- (NSHashTable)weakObservers
{
  serialQueue = [(ML3MusicLibraryAccountChangeObserverProxy *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  weakObservers = self->_weakObservers;
  if (!weakObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_weakObservers;
    self->_weakObservers = weakObjectsHashTable;

    weakObservers = self->_weakObservers;
  }

  return weakObservers;
}

- (NSHashTable)readonlyObservers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__25234;
  v11 = __Block_byref_object_dispose__25235;
  v12 = 0;
  serialQueue = [(ML3MusicLibraryAccountChangeObserverProxy *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ML3MusicLibraryAccountChangeObserverProxy_readonlyObservers__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __62__ML3MusicLibraryAccountChangeObserverProxy_readonlyObservers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) weakObservers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeAccountChangeObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = [(ML3MusicLibraryAccountChangeObserverProxy *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ML3MusicLibraryAccountChangeObserverProxy_removeAccountChangeObserver___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, v7);
}

void __73__ML3MusicLibraryAccountChangeObserverProxy_removeAccountChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) weakObservers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addAccountChangeObserver:(id)observer
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = observerCopy;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ - addAccountChangeObserver: %{public}@", buf, 0x16u);
  }

  serialQueue = [(ML3MusicLibraryAccountChangeObserverProxy *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ML3MusicLibraryAccountChangeObserverProxy_addAccountChangeObserver___block_invoke;
  v8[3] = &unk_2787660F0;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(serialQueue, v8);
}

void __70__ML3MusicLibraryAccountChangeObserverProxy_addAccountChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) weakObservers];
  [v2 addObject:*(a1 + 40)];
}

- (void)terminateForFailureToPerformDatabasePathChange
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    readonlyObservers = [(ML3MusicLibraryAccountChangeObserverProxy *)self readonlyObservers];
    *buf = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = readonlyObservers;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - terminateForFailureToPrepareForAccountChange - Observers: %{public}@", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  readonlyObservers2 = [(ML3MusicLibraryAccountChangeObserverProxy *)self readonlyObservers];
  v6 = [readonlyObservers2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(readonlyObservers2);
        }

        [*(*(&v10 + 1) + 8 * v9++) terminateForFailureToPerformDatabasePathChange];
      }

      while (v7 != v9);
      v7 = [readonlyObservers2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)emergencyDisconnectWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    readonlyObservers = [(ML3MusicLibraryAccountChangeObserverProxy *)self readonlyObservers];
    *buf = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = readonlyObservers;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - emergencyDisconnectWithCompletion - Observers: %{public}@", buf, 0x16u);
  }

  v16 = [objc_alloc(MEMORY[0x277D27F58]) initWithName:@"Emergency Disconnect"];
  [v16 beginTransaction];
  v6 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  readonlyObservers2 = [(ML3MusicLibraryAccountChangeObserverProxy *)self readonlyObservers];
  v8 = [readonlyObservers2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(readonlyObservers2);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __79__ML3MusicLibraryAccountChangeObserverProxy_emergencyDisconnectWithCompletion___block_invoke;
        v22[3] = &unk_278765DB8;
        v22[4] = self;
        v23 = v6;
        [v12 emergencyDisconnectWithCompletion:v22];

        ++v11;
      }

      while (v9 != v11);
      v9 = [readonlyObservers2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  calloutQueue = [(ML3MusicLibraryAccountChangeObserverProxy *)self calloutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ML3MusicLibraryAccountChangeObserverProxy_emergencyDisconnectWithCompletion___block_invoke_3;
  block[3] = &unk_278765798;
  v19 = v16;
  selfCopy2 = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = v16;
  dispatch_group_notify(v6, calloutQueue, block);
}

void __79__ML3MusicLibraryAccountChangeObserverProxy_emergencyDisconnectWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calloutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ML3MusicLibraryAccountChangeObserverProxy_emergencyDisconnectWithCompletion___block_invoke_2;
  block[3] = &unk_278765FB8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

uint64_t __79__ML3MusicLibraryAccountChangeObserverProxy_emergencyDisconnectWithCompletion___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) endTransaction];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ - emergencyDisconnectWithCompletion - Calling completion block", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)performDatabasePathChange:(id)change completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    readonlyObservers = [(ML3MusicLibraryAccountChangeObserverProxy *)self readonlyObservers];
    *buf = 138543875;
    selfCopy = self;
    v33 = 2113;
    v34 = changeCopy;
    v35 = 2114;
    v36 = readonlyObservers;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ - performDatabasePathChange: - newPath=%{private}@ Observers=%{public}@", buf, 0x20u);
  }

  v8 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy2 = self;
  readonlyObservers2 = [(ML3MusicLibraryAccountChangeObserverProxy *)self readonlyObservers];
  v11 = [readonlyObservers2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(readonlyObservers2);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        dispatch_group_enter(v8);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __82__ML3MusicLibraryAccountChangeObserverProxy_performDatabasePathChange_completion___block_invoke;
        v24[3] = &unk_278765DB8;
        v24[4] = selfCopy2;
        v25 = v8;
        [v15 performDatabasePathChange:changeCopy completion:v24];

        ++v14;
      }

      while (v12 != v14);
      v12 = [readonlyObservers2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  calloutQueue = [(ML3MusicLibraryAccountChangeObserverProxy *)selfCopy2 calloutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ML3MusicLibraryAccountChangeObserverProxy_performDatabasePathChange_completion___block_invoke_3;
  block[3] = &unk_278765798;
  block[4] = selfCopy2;
  v22 = changeCopy;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = changeCopy;
  dispatch_group_notify(v8, calloutQueue, block);
}

void __82__ML3MusicLibraryAccountChangeObserverProxy_performDatabasePathChange_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calloutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ML3MusicLibraryAccountChangeObserverProxy_performDatabasePathChange_completion___block_invoke_2;
  block[3] = &unk_278765FB8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

uint64_t __82__ML3MusicLibraryAccountChangeObserverProxy_performDatabasePathChange_completion___block_invoke_3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ - performDatabasePathChange: - Calling completion block - newPath=%{public}@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

@end