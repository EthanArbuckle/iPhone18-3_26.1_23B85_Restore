@interface HFAccessoryDiagnosticInfoManager
- (BOOL)hasDiagnosticInfoForAccessory:(id)a3;
- (BOOL)isCDPStatusGoodForAccessory:(id)a3;
- (HFAccessoryDiagnosticInfoManager)init;
- (HFAccessoryDiagnosticInfoManager)initWithDispatcher:(id)a3;
- (HFHomeKitDispatcher)dispatcher;
- (id)_diagnosticInfoForAccessory:(id)a3;
- (id)fetchDiagnosticInfoForFirstPartyAccessory:(id)a3;
- (id)softwareVersionForAccessory:(id)a3;
- (id)wifiNetworkInfoForAccessory:(id)a3;
- (void)_notifyObserversOfReceivedDiagnosticInfo:(id)a3 forAccessory:(id)a4;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation HFAccessoryDiagnosticInfoManager

- (HFAccessoryDiagnosticInfoManager)initWithDispatcher:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HFAccessoryDiagnosticInfoManager;
  v5 = [(HFAccessoryDiagnosticInfoManager *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryUniqueIDToDiagnosticInfoMapTable = v5->_accessoryUniqueIDToDiagnosticInfoMapTable;
    v5->_accessoryUniqueIDToDiagnosticInfoMapTable = v6;

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v8;

    objc_storeWeak(&v5->_dispatcher, v4);
  }

  return v5;
}

- (HFAccessoryDiagnosticInfoManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDispatcher_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessoryDiagnosticInfoManager.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryDiagnosticInfoManager init]", v5}];

  return 0;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryDiagnosticInfoManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryDiagnosticInfoManager *)self observers];
  [v5 removeObject:v4];
}

- (id)fetchDiagnosticInfoForFirstPartyAccessory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HFAccessoryDiagnosticInfoManager *)self dispatcher];
  v7 = [v6 homeManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HFAccessoryDiagnosticInfoManager_fetchDiagnosticInfoForFirstPartyAccessory___block_invoke;
  v13[3] = &unk_277DF7C20;
  v14 = v4;
  v15 = self;
  v8 = v5;
  v16 = v8;
  v9 = v4;
  [v7 fetchAppleMediaAccesoryDiagnosticInfo:v9 options:3 completion:v13];

  v10 = v16;
  v11 = v8;

  return v8;
}

void __78__HFAccessoryDiagnosticInfoManager_fetchDiagnosticInfoForFirstPartyAccessory___block_invoke(id *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1[4] debugDescription];
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "There was an error fetching diagnostic info for accessory: %@, with error: %@", &v15, 0x16u);
    }
  }

  if (v5)
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 debugDescription];
      v10 = [a1[4] debugDescription];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Fetched diagnostic info: %@ for accessory: %@", &v15, 0x16u);
    }

    v11 = [a1[5] accessoryUniqueIDToDiagnosticInfoMapTable];
    v12 = [a1[4] uniqueIdentifier];
    [v11 setObject:v5 forKey:v12];

    [a1[5] _notifyObserversOfReceivedDiagnosticInfo:v5 forAccessory:a1[4]];
  }

  [a1[6] finishWithResult:v5 error:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDiagnosticInfoForAccessory:(id)a3
{
  v3 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isCDPStatusGoodForAccessory:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];
  v7 = [v6 hf_currentUserIsOwner];

  if (v7 && [(HFAccessoryDiagnosticInfoManager *)self hasDiagnosticInfoForAccessory:v4])
  {
    v8 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:v4];
    v9 = [v8 cdpStatusGood];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)wifiNetworkInfoForAccessory:(id)a3
{
  v3 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:a3];
  v4 = [v3 wifiInfo];

  return v4;
}

- (id)softwareVersionForAccessory:(id)a3
{
  v3 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:a3];
  v4 = [v3 softwareVersion];

  return v4;
}

- (void)_notifyObserversOfReceivedDiagnosticInfo:(id)a3 forAccessory:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HFAccessoryDiagnosticInfoManager *)self observers];
  v9 = [v8 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 didUpdateDiagnosticInfo:v6 forAccessory:{v7, v17}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_diagnosticInfoForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryDiagnosticInfoManager *)self accessoryUniqueIDToDiagnosticInfoMapTable];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (HFHomeKitDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

@end