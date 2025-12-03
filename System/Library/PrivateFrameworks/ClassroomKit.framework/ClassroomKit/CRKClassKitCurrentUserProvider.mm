@interface CRKClassKitCurrentUserProvider
- (CRKClassKitCurrentUserProvider)initWithClassKitFacade:(id)facade;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performKVOUpdateForKeyPaths:(id)paths updateBlock:(id)block;
- (void)safeFetchCurrentUserWithCompletion:(id)completion;
- (void)startObservingCurrentUser;
- (void)stopObservingCurrentUser;
- (void)updateCurrentUser;
- (void)updateCurrentUser:(id)user fetched:(BOOL)fetched;
@end

@implementation CRKClassKitCurrentUserProvider

- (void)dealloc
{
  [(CRKClassKitCurrentUserProvider *)self stopObservingCurrentUser];
  v3.receiver = self;
  v3.super_class = CRKClassKitCurrentUserProvider;
  [(CRKClassKitCurrentUserProvider *)&v3 dealloc];
}

- (CRKClassKitCurrentUserProvider)initWithClassKitFacade:(id)facade
{
  facadeCopy = facade;
  v9.receiver = self;
  v9.super_class = CRKClassKitCurrentUserProvider;
  v6 = [(CRKClassKitCurrentUserProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classKitFacade, facade);
    [(CRKClassKitCurrentUserProvider *)v7 startObservingCurrentUser];
    [(CRKClassKitCurrentUserProvider *)v7 updateCurrentUser];
  }

  return v7;
}

- (void)startObservingCurrentUser
{
  classKitFacade = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  [classKitFacade addObserver:self forKeyPath:@"accountState" options:3 context:@"CRKClassKitCurrentUserProviderObservationContext"];

  objc_initWeak(&location, self);
  classKitFacade2 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__CRKClassKitCurrentUserProvider_startObservingCurrentUser__block_invoke;
  v9 = &unk_278DC1870;
  objc_copyWeak(&v10, &location);
  v5 = [classKitFacade2 subscribeToCurrentUserDidChangeEvents:&v6];
  [(CRKClassKitCurrentUserProvider *)self setCurrentUserSubscription:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__CRKClassKitCurrentUserProvider_startObservingCurrentUser__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCurrentUser];
}

- (void)stopObservingCurrentUser
{
  classKitFacade = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  [classKitFacade removeObserver:self forKeyPath:@"accountState" context:@"CRKClassKitCurrentUserProviderObservationContext"];

  currentUserSubscription = [(CRKClassKitCurrentUserProvider *)self currentUserSubscription];
  [currentUserSubscription cancel];

  [(CRKClassKitCurrentUserProvider *)self setCurrentUserSubscription:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"CRKClassKitCurrentUserProviderObservationContext")
  {
    changeCopy = change;
    crk_keyValueObservingOldObject = [changeCopy crk_keyValueObservingOldObject];
    integerValue = [crk_keyValueObservingOldObject integerValue];

    crk_keyValueObservingNewObject = [changeCopy crk_keyValueObservingNewObject];

    integerValue2 = [crk_keyValueObservingNewObject integerValue];
    LODWORD(crk_keyValueObservingNewObject) = [(CRKClassKitCurrentUserProvider *)self isSafeToTalkToProgressdWithAccountState:integerValue];
    if (crk_keyValueObservingNewObject != [(CRKClassKitCurrentUserProvider *)self isSafeToTalkToProgressdWithAccountState:integerValue2])
    {

      [(CRKClassKitCurrentUserProvider *)self updateCurrentUser];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRKClassKitCurrentUserProvider;
    changeCopy2 = change;
    [(CRKClassKitCurrentUserProvider *)&v16 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (void)updateCurrentUser
{
  [(CRKClassKitCurrentUserProvider *)self setSequenceNumber:[(CRKClassKitCurrentUserProvider *)self sequenceNumber]+ 1];
  sequenceNumber = [(CRKClassKitCurrentUserProvider *)self sequenceNumber];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CRKClassKitCurrentUserProvider_updateCurrentUser__block_invoke;
  v4[3] = &unk_278DC3428;
  objc_copyWeak(v5, &location);
  v5[1] = sequenceNumber;
  [(CRKClassKitCurrentUserProvider *)self safeFetchCurrentUserWithCompletion:v4];
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __51__CRKClassKitCurrentUserProvider_updateCurrentUser__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained sequenceNumber] == *(a1 + 40))
  {
    if (v6)
    {
      if (_CRKLogASM_onceToken_30 != -1)
      {
        __51__CRKClassKitCurrentUserProvider_updateCurrentUser__block_invoke_cold_1();
      }

      v9 = _CRKLogASM_logObj_30;
      if (os_log_type_enabled(_CRKLogASM_logObj_30, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v6 verboseDescription];
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "Failed to fetch current ClassKit user in current user provider: %{public}@", &v12, 0xCu);
      }
    }

    [v8 updateCurrentUser:v5 fetched:1];
  }
}

- (void)updateCurrentUser:(id)user fetched:(BOOL)fetched
{
  fetchedCopy = fetched;
  v16[2] = *MEMORY[0x277D85DE8];
  userCopy = user;
  if ([(CRKClassKitCurrentUserProvider *)self currentUserFetched]== fetchedCopy)
  {
    v15 = @"currentUser";
    v7 = MEMORY[0x277CBEA60];
    v8 = &v15;
    v9 = 1;
  }

  else
  {
    v16[0] = @"currentUserFetched";
    v16[1] = @"currentUser";
    v7 = MEMORY[0x277CBEA60];
    v8 = v16;
    v9 = 2;
  }

  v10 = [v7 arrayWithObjects:v8 count:v9];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CRKClassKitCurrentUserProvider_updateCurrentUser_fetched___block_invoke;
  v12[3] = &unk_278DC3450;
  v12[4] = self;
  v13 = userCopy;
  v14 = fetchedCopy;
  v11 = userCopy;
  [(CRKClassKitCurrentUserProvider *)self performKVOUpdateForKeyPaths:v10 updateBlock:v12];
}

- (void)performKVOUpdateForKeyPaths:(id)paths updateBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  blockCopy = block;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [pathsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(pathsCopy);
        }

        [(CRKClassKitCurrentUserProvider *)self willChangeValueForKey:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [pathsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  blockCopy[2](blockCopy);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [pathsCopy reverseObjectEnumerator];
  v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [(CRKClassKitCurrentUserProvider *)self didChangeValueForKey:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)safeFetchCurrentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  classKitFacade = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  v6 = -[CRKClassKitCurrentUserProvider isSafeToTalkToProgressdWithAccountState:](self, "isSafeToTalkToProgressdWithAccountState:", [classKitFacade accountState]);

  if (v6)
  {
    classKitFacade2 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__CRKClassKitCurrentUserProvider_safeFetchCurrentUserWithCompletion___block_invoke;
    v8[3] = &unk_278DC3478;
    v9 = completionCopy;
    [classKitFacade2 currentUserWithCompletion:v8];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __69__CRKClassKitCurrentUserProvider_safeFetchCurrentUserWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CRKClassKitCurrentUserProvider_safeFetchCurrentUserWithCompletion___block_invoke_2;
  block[3] = &unk_278DC1630;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end