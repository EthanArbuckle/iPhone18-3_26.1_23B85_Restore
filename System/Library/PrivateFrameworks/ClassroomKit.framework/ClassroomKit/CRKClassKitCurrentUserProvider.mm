@interface CRKClassKitCurrentUserProvider
- (CRKClassKitCurrentUserProvider)initWithClassKitFacade:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performKVOUpdateForKeyPaths:(id)a3 updateBlock:(id)a4;
- (void)safeFetchCurrentUserWithCompletion:(id)a3;
- (void)startObservingCurrentUser;
- (void)stopObservingCurrentUser;
- (void)updateCurrentUser;
- (void)updateCurrentUser:(id)a3 fetched:(BOOL)a4;
@end

@implementation CRKClassKitCurrentUserProvider

- (void)dealloc
{
  [(CRKClassKitCurrentUserProvider *)self stopObservingCurrentUser];
  v3.receiver = self;
  v3.super_class = CRKClassKitCurrentUserProvider;
  [(CRKClassKitCurrentUserProvider *)&v3 dealloc];
}

- (CRKClassKitCurrentUserProvider)initWithClassKitFacade:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKClassKitCurrentUserProvider;
  v6 = [(CRKClassKitCurrentUserProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classKitFacade, a3);
    [(CRKClassKitCurrentUserProvider *)v7 startObservingCurrentUser];
    [(CRKClassKitCurrentUserProvider *)v7 updateCurrentUser];
  }

  return v7;
}

- (void)startObservingCurrentUser
{
  v3 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  [v3 addObserver:self forKeyPath:@"accountState" options:3 context:@"CRKClassKitCurrentUserProviderObservationContext"];

  objc_initWeak(&location, self);
  v4 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__CRKClassKitCurrentUserProvider_startObservingCurrentUser__block_invoke;
  v9 = &unk_278DC1870;
  objc_copyWeak(&v10, &location);
  v5 = [v4 subscribeToCurrentUserDidChangeEvents:&v6];
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
  v3 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  [v3 removeObserver:self forKeyPath:@"accountState" context:@"CRKClassKitCurrentUserProviderObservationContext"];

  v4 = [(CRKClassKitCurrentUserProvider *)self currentUserSubscription];
  [v4 cancel];

  [(CRKClassKitCurrentUserProvider *)self setCurrentUserSubscription:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"CRKClassKitCurrentUserProviderObservationContext")
  {
    v11 = a5;
    v12 = [v11 crk_keyValueObservingOldObject];
    v13 = [v12 integerValue];

    v14 = [v11 crk_keyValueObservingNewObject];

    v15 = [v14 integerValue];
    LODWORD(v14) = [(CRKClassKitCurrentUserProvider *)self isSafeToTalkToProgressdWithAccountState:v13];
    if (v14 != [(CRKClassKitCurrentUserProvider *)self isSafeToTalkToProgressdWithAccountState:v15])
    {

      [(CRKClassKitCurrentUserProvider *)self updateCurrentUser];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRKClassKitCurrentUserProvider;
    v10 = a5;
    [(CRKClassKitCurrentUserProvider *)&v16 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (void)updateCurrentUser
{
  [(CRKClassKitCurrentUserProvider *)self setSequenceNumber:[(CRKClassKitCurrentUserProvider *)self sequenceNumber]+ 1];
  v3 = [(CRKClassKitCurrentUserProvider *)self sequenceNumber];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CRKClassKitCurrentUserProvider_updateCurrentUser__block_invoke;
  v4[3] = &unk_278DC3428;
  objc_copyWeak(v5, &location);
  v5[1] = v3;
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

- (void)updateCurrentUser:(id)a3 fetched:(BOOL)a4
{
  v4 = a4;
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(CRKClassKitCurrentUserProvider *)self currentUserFetched]== v4)
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
  v13 = v6;
  v14 = v4;
  v11 = v6;
  [(CRKClassKitCurrentUserProvider *)self performKVOUpdateForKeyPaths:v10 updateBlock:v12];
}

- (void)performKVOUpdateForKeyPaths:(id)a3 updateBlock:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(CRKClassKitCurrentUserProvider *)self willChangeValueForKey:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v7[2](v7);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v6 reverseObjectEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v12);
        }

        [(CRKClassKitCurrentUserProvider *)self didChangeValueForKey:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)safeFetchCurrentUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
  v6 = -[CRKClassKitCurrentUserProvider isSafeToTalkToProgressdWithAccountState:](self, "isSafeToTalkToProgressdWithAccountState:", [v5 accountState]);

  if (v6)
  {
    v7 = [(CRKClassKitCurrentUserProvider *)self classKitFacade];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__CRKClassKitCurrentUserProvider_safeFetchCurrentUserWithCompletion___block_invoke;
    v8[3] = &unk_278DC3478;
    v9 = v4;
    [v7 currentUserWithCompletion:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
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