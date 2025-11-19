@interface CRKIDSFirewallUpdatingRosterProvider
+ (id)observedKeyPaths;
+ (id)trustedUserAppleIDsFromRoster:(id)a3;
- (BOOL)areRosterProvidersPopulated;
- (CATOperation)lastWorkOperation;
- (CRKIDSFirewallUpdatingRosterProvider)initWithPrimaryRosterProvider:(id)a3 secondaryRosterProvider:(id)a4 IDSPrimitives:(id)a5;
- (id)makeTrustedAppleIDs;
- (id)rosterProviders;
- (void)beginObservingRosters;
- (void)dealloc;
- (void)endObservingRosters;
- (void)enqueueWorkOperation:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)rosterDidChange;
- (void)synchronizeFirewallOperationDidFail:(id)a3;
@end

@implementation CRKIDSFirewallUpdatingRosterProvider

- (void)dealloc
{
  [(CRKIDSFirewallUpdatingRosterProvider *)self endObservingRosters];
  v3 = [(CRKIDSFirewallUpdatingRosterProvider *)self operationQueue];
  [v3 cancelAllOperations];

  v4.receiver = self;
  v4.super_class = CRKIDSFirewallUpdatingRosterProvider;
  [(CRKIDSFirewallUpdatingRosterProvider *)&v4 dealloc];
}

- (CRKIDSFirewallUpdatingRosterProvider)initWithPrimaryRosterProvider:(id)a3 secondaryRosterProvider:(id)a4 IDSPrimitives:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CRKIDSFirewallUpdatingRosterProvider;
  v11 = [(CRKASMRosterProviderDecoratorBase *)&v16 initWithRosterProvider:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_secondaryRosterProvider, a4);
    objc_storeStrong(&v12->_IDSPrimitives, a5);
    v13 = objc_opt_new();
    operationQueue = v12->_operationQueue;
    v12->_operationQueue = v13;

    [(CRKIDSFirewallUpdatingRosterProvider *)v12 beginObservingRosters];
    [(CRKIDSFirewallUpdatingRosterProvider *)v12 performSelectorOnMainThread:sel_rosterDidChange withObject:0 waitUntilDone:0];
  }

  return v12;
}

- (void)rosterDidChange
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKIDSFirewallUpdatingRosterProvider.m" lineNumber:76 description:{@"%@ must be called from the main thread", v4}];
}

void __55__CRKIDSFirewallUpdatingRosterProvider_rosterDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CRKIDSFirewallUpdatingRosterProvider_rosterDidChange__block_invoke_2;
  block[3] = &unk_278DC17E8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __55__CRKIDSFirewallUpdatingRosterProvider_rosterDidChange__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) publishedRoster];
  if (v2 || *(a1 + 40))
  {
    v3 = [*(a1 + 32) publishedRoster];
    v4 = [v3 isEqual:*(a1 + 40)];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 32) setPublishedRoster:*(a1 + 40)];
    }
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)enqueueWorkOperation:(id)a3
{
  v8 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = [(CRKIDSFirewallUpdatingRosterProvider *)self lastWorkOperation];

    if (v5)
    {
      v6 = [(CRKIDSFirewallUpdatingRosterProvider *)self lastWorkOperation];
      [v8 addDependency:v6];
    }

    [(CRKIDSFirewallUpdatingRosterProvider *)self setLastWorkOperation:v8];
    v7 = [(CRKIDSFirewallUpdatingRosterProvider *)self operationQueue];
    [v7 addOperation:v8];
  }

  else
  {
    [(CRKIDSFirewallUpdatingRosterProvider *)self performSelectorOnMainThread:a2 withObject:v8 waitUntilDone:0];
  }
}

- (void)synchronizeFirewallOperationDidFail:(id)a3
{
  v3 = a3;
  v4 = [v3 error];
  v5 = [v4 domain];
  if ([v5 isEqual:*MEMORY[0x277CF9518]])
  {
    v6 = [v3 error];
    v7 = [v6 code];

    if (v7 == 404)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (_CRKLogASM_onceToken_9 != -1)
  {
    [CRKIDSFirewallUpdatingRosterProvider synchronizeFirewallOperationDidFail:];
  }

  v8 = _CRKLogASM_logObj_9;
  if (os_log_type_enabled(_CRKLogASM_logObj_9, OS_LOG_TYPE_ERROR))
  {
    [(CRKIDSFirewallUpdatingRosterProvider *)v8 synchronizeFirewallOperationDidFail:v3];
  }

LABEL_9:
}

+ (id)observedKeyPaths
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"roster";
  v4[1] = @"populated";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)beginObservingRosters
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(CRKIDSFirewallUpdatingRosterProvider *)self isObservingRosters])
  {
    [(CRKIDSFirewallUpdatingRosterProvider *)self setObservingRosters:1];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [objc_opt_class() observedKeyPaths];
    v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        v6 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v18 + 1) + 8 * v6);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [(CRKIDSFirewallUpdatingRosterProvider *)self rosterProviders];
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

                [*(*(&v14 + 1) + 8 * v12++) addObserver:self forKeyPath:v7 options:0 context:@"ObservationContext"];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }
  }
}

- (void)endObservingRosters
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(CRKIDSFirewallUpdatingRosterProvider *)self isObservingRosters])
  {
    [(CRKIDSFirewallUpdatingRosterProvider *)self setObservingRosters:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [objc_opt_class() observedKeyPaths];
    v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        v6 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v18 + 1) + 8 * v6);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [(CRKIDSFirewallUpdatingRosterProvider *)self rosterProviders];
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

                [*(*(&v14 + 1) + 8 * v12++) removeObserver:self forKeyPath:v7 context:@"ObservationContext"];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"ObservationContext")
  {

    [(CRKIDSFirewallUpdatingRosterProvider *)self rosterDidChange:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKIDSFirewallUpdatingRosterProvider;
    [(CRKIDSFirewallUpdatingRosterProvider *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)rosterProviders
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(CRKIDSFirewallUpdatingRosterProvider *)self secondaryRosterProvider];

  v4 = [(CRKIDSFirewallUpdatingRosterProvider *)self primaryRosterProvider];
  v5 = v4;
  if (v3)
  {
    v6 = [(CRKIDSFirewallUpdatingRosterProvider *)self secondaryRosterProvider];
    v9[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  }

  else
  {
    v10[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  return v7;
}

- (BOOL)areRosterProvidersPopulated
{
  v2 = [(CRKIDSFirewallUpdatingRosterProvider *)self rosterProviders];
  v3 = [v2 crk_allObjectsMatchPredicate:&__block_literal_global_18];

  return v3;
}

- (id)makeTrustedAppleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CRKIDSFirewallUpdatingRosterProvider *)self rosterProviders];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = [v9 roster];
        v12 = [v10 trustedUserAppleIDsFromRoster:v11];
        [v3 unionSet:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

+ (id)trustedUserAppleIDsFromRoster:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  if (a3)
  {
    v4 = [a3 courses];
    v5 = [v4 crk_flatMapUsingBlock:&__block_literal_global_33];
    v6 = [v3 setWithArray:v5];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

id __70__CRKIDSFirewallUpdatingRosterProvider_trustedUserAppleIDsFromRoster___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 trustedUsers];
  v3 = [v2 crk_mapUsingBlock:&__block_literal_global_36];

  return v3;
}

- (CATOperation)lastWorkOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_lastWorkOperation);

  return WeakRetained;
}

- (void)synchronizeFirewallOperationDidFail:(void *)a1 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 localizedDescription];
  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Failed to synchronize IDS firewall. Error: %{public}@", &v6, 0xCu);
}

@end