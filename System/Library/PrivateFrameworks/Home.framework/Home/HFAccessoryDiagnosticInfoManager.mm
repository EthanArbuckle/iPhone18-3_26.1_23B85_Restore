@interface HFAccessoryDiagnosticInfoManager
- (BOOL)hasDiagnosticInfoForAccessory:(id)accessory;
- (BOOL)isCDPStatusGoodForAccessory:(id)accessory;
- (HFAccessoryDiagnosticInfoManager)init;
- (HFAccessoryDiagnosticInfoManager)initWithDispatcher:(id)dispatcher;
- (HFHomeKitDispatcher)dispatcher;
- (id)_diagnosticInfoForAccessory:(id)accessory;
- (id)fetchDiagnosticInfoForFirstPartyAccessory:(id)accessory;
- (id)softwareVersionForAccessory:(id)accessory;
- (id)wifiNetworkInfoForAccessory:(id)accessory;
- (void)_notifyObserversOfReceivedDiagnosticInfo:(id)info forAccessory:(id)accessory;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation HFAccessoryDiagnosticInfoManager

- (HFAccessoryDiagnosticInfoManager)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v11.receiver = self;
  v11.super_class = HFAccessoryDiagnosticInfoManager;
  v5 = [(HFAccessoryDiagnosticInfoManager *)&v11 init];
  if (v5)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryUniqueIDToDiagnosticInfoMapTable = v5->_accessoryUniqueIDToDiagnosticInfoMapTable;
    v5->_accessoryUniqueIDToDiagnosticInfoMapTable = strongToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    objc_storeWeak(&v5->_dispatcher, dispatcherCopy);
  }

  return v5;
}

- (HFAccessoryDiagnosticInfoManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDispatcher_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryDiagnosticInfoManager.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryDiagnosticInfoManager init]", v5}];

  return 0;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFAccessoryDiagnosticInfoManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFAccessoryDiagnosticInfoManager *)self observers];
  [observers removeObject:observerCopy];
}

- (id)fetchDiagnosticInfoForFirstPartyAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = objc_opt_new();
  dispatcher = [(HFAccessoryDiagnosticInfoManager *)self dispatcher];
  homeManager = [dispatcher homeManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HFAccessoryDiagnosticInfoManager_fetchDiagnosticInfoForFirstPartyAccessory___block_invoke;
  v13[3] = &unk_277DF7C20;
  v14 = accessoryCopy;
  selfCopy = self;
  v8 = v5;
  v16 = v8;
  v9 = accessoryCopy;
  [homeManager fetchAppleMediaAccesoryDiagnosticInfo:v9 options:3 completion:v13];

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

- (BOOL)hasDiagnosticInfoForAccessory:(id)accessory
{
  v3 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:accessory];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isCDPStatusGoodForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v5 home];
  hf_currentUserIsOwner = [home hf_currentUserIsOwner];

  if (hf_currentUserIsOwner && [(HFAccessoryDiagnosticInfoManager *)self hasDiagnosticInfoForAccessory:accessoryCopy])
  {
    v8 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:accessoryCopy];
    cdpStatusGood = [v8 cdpStatusGood];
  }

  else
  {
    cdpStatusGood = 1;
  }

  return cdpStatusGood;
}

- (id)wifiNetworkInfoForAccessory:(id)accessory
{
  v3 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:accessory];
  wifiInfo = [v3 wifiInfo];

  return wifiInfo;
}

- (id)softwareVersionForAccessory:(id)accessory
{
  v3 = [(HFAccessoryDiagnosticInfoManager *)self _diagnosticInfoForAccessory:accessory];
  softwareVersion = [v3 softwareVersion];

  return softwareVersion;
}

- (void)_notifyObserversOfReceivedDiagnosticInfo:(id)info forAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  accessoryCopy = accessory;
  observers = [(HFAccessoryDiagnosticInfoManager *)self observers];
  v9 = [observers copy];

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
          [v15 didUpdateDiagnosticInfo:infoCopy forAccessory:{accessoryCopy, v17}];
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

- (id)_diagnosticInfoForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryUniqueIDToDiagnosticInfoMapTable = [(HFAccessoryDiagnosticInfoManager *)self accessoryUniqueIDToDiagnosticInfoMapTable];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];

  v7 = [accessoryUniqueIDToDiagnosticInfoMapTable objectForKey:uniqueIdentifier];

  return v7;
}

- (HFHomeKitDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

@end