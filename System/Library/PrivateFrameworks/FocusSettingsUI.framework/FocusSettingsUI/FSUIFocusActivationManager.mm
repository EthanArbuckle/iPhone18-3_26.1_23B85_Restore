@interface FSUIFocusActivationManager
+ (id)sharedInstance;
- (BOOL)isActiveMode:(id)mode;
- (FSUIFocusActivationManager)init;
- (id)_modeSelectionService;
- (void)_notifyListenersOfActiveModeAssertionChange:(id)change;
- (void)addListenerForFocusActivationChanges:(id)changes;
- (void)dealloc;
- (void)modeSelectionService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update;
- (void)removeListenerForFocusActivationChanges:(id)changes;
- (void)setMode:(id)mode isActive:(BOOL)active;
@end

@implementation FSUIFocusActivationManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__FSUIFocusActivationManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken[0] != -1)
  {
    dispatch_once(sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __44__FSUIFocusActivationManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (FSUIFocusActivationManager)init
{
  v12.receiver = self;
  v12.super_class = FSUIFocusActivationManager;
  v2 = [(FSUIFocusActivationManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    _modeSelectionService = [(FSUIFocusActivationManager *)v2 _modeSelectionService];
    modeSelectionService = v3->_modeSelectionService;
    v3->_modeSelectionService = _modeSelectionService;

    [(DNDModeSelectionService *)v3->_modeSelectionService addListener:v3 withCompletionHandler:&__block_literal_global];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    listeners = v3->_listeners;
    v3->_listeners = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.FCUIFocusActivationManager", v8);
    listenersQueue = v3->_listenersQueue;
    v3->_listenersQueue = v9;
  }

  return v3;
}

void __34__FSUIFocusActivationManager_init__block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __34__FSUIFocusActivationManager_init__block_invoke_cold_1(v4);
  }
}

- (void)dealloc
{
  _modeSelectionService = [(FSUIFocusActivationManager *)self _modeSelectionService];
  [_modeSelectionService removeListener:self];

  v4.receiver = self;
  v4.super_class = FSUIFocusActivationManager;
  [(FSUIFocusActivationManager *)&v4 dealloc];
}

- (BOOL)isActiveMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (modeCopy)
  {
    latestModeAssertion = selfCopy->_latestModeAssertion;
    if (!latestModeAssertion)
    {
      modeSelectionService = selfCopy->_modeSelectionService;
      v16 = 0;
      v8 = [(DNDModeSelectionService *)modeSelectionService activeModeAssertionWithError:&v16];
      v9 = v16;
      v10 = selfCopy->_latestModeAssertion;
      selfCopy->_latestModeAssertion = v8;

      latestModeAssertion = selfCopy->_latestModeAssertion;
    }

    details = [(DNDModeAssertion *)latestModeAssertion details];
    modeIdentifier = [details modeIdentifier];
    modeIdentifier2 = [modeCopy modeIdentifier];
    v14 = [modeIdentifier isEqualToString:modeIdentifier2];
  }

  else
  {
    v14 = 0;
  }

  objc_sync_exit(selfCopy);

  return v14;
}

- (void)setMode:(id)mode isActive:(BOOL)active
{
  activeCopy = active;
  modeCopy = mode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (activeCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277D05A40]);
    [v7 setIdentifier:@"com.apple.FocusSettings"];
    modeIdentifier = [modeCopy modeIdentifier];
    [v7 setModeIdentifier:modeIdentifier];

    [v7 setReason:1];
    v9 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
    [v7 setLifetime:v9];
  }

  else
  {
    v7 = 0;
  }

  _modeSelectionService = [(FSUIFocusActivationManager *)selfCopy _modeSelectionService];
  [_modeSelectionService activateModeWithDetails:v7 error:0];

  latestModeAssertion = selfCopy->_latestModeAssertion;
  selfCopy->_latestModeAssertion = 0;

  objc_sync_exit(selfCopy);
}

- (void)addListenerForFocusActivationChanges:(id)changes
{
  changesCopy = changes;
  objc_initWeak(&location, self);
  listenersQueue = self->_listenersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__FSUIFocusActivationManager_addListenerForFocusActivationChanges___block_invoke;
  block[3] = &unk_2790181E8;
  objc_copyWeak(&v9, &location);
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(listenersQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__FSUIFocusActivationManager_addListenerForFocusActivationChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] addObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeListenerForFocusActivationChanges:(id)changes
{
  changesCopy = changes;
  objc_initWeak(&location, self);
  listenersQueue = self->_listenersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FSUIFocusActivationManager_removeListenerForFocusActivationChanges___block_invoke;
  block[3] = &unk_2790181E8;
  objc_copyWeak(&v9, &location);
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(listenersQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__FSUIFocusActivationManager_removeListenerForFocusActivationChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)modeSelectionService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update
{
  serviceCopy = service;
  assertionCopy = assertion;
  updateCopy = update;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_24B8D3000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Did receive updated active mode assertion", v12, 2u);
  }

  objc_storeStrong(&selfCopy->_latestModeAssertion, assertion);
  [(FSUIFocusActivationManager *)selfCopy _notifyListenersOfActiveModeAssertionChange:assertionCopy];
  objc_sync_exit(selfCopy);
}

- (void)_notifyListenersOfActiveModeAssertionChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  listenersQueue = self->_listenersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__FSUIFocusActivationManager__notifyListenersOfActiveModeAssertionChange___block_invoke;
  block[3] = &unk_2790181E8;
  objc_copyWeak(&v9, &location);
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(listenersQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__FSUIFocusActivationManager__notifyListenersOfActiveModeAssertionChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = WeakRetained[3];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 didUpdateActiveModesForActivationManager:v3 assertion:{*(a1 + 32), v10}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (id)_modeSelectionService
{
  modeSelectionService = self->_modeSelectionService;
  if (!modeSelectionService)
  {
    v4 = [MEMORY[0x277D059F0] serviceForClientIdentifier:@"com.apple.FocusSettings"];
    v5 = self->_modeSelectionService;
    self->_modeSelectionService = v4;

    modeSelectionService = self->_modeSelectionService;
  }

  return modeSelectionService;
}

void __34__FSUIFocusActivationManager_init__block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_24B8D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to connect to the mode selection service with error: %@", &v1, 0xCu);
}

@end