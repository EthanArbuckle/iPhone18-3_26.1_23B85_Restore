@interface NPKSecureElement
+ (id)sharedInstance;
+ (unint64_t)cachedIsInFailForward;
+ (void)_initVariables;
+ (void)isInFailForward:(id)a3;
- (NPKSecureElement)init;
- (void)_applicationWillEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_backgroundQueue_initHWManager;
- (void)_fetchNFCState;
- (void)_secureElementDidUpdateRestrictedModeState:(BOOL)a3;
- (void)applicationIsAtForeground;
- (void)dealloc;
- (void)didChangeRadioState:(BOOL)a3;
- (void)hardwareStateDidChange;
- (void)isInRestrictedMode:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation NPKSecureElement

+ (unint64_t)cachedIsInFailForward
{
  [a1 _initVariables];
  v3 = atomic_load(&_atomicIsInFailForward);
  if (!v3)
  {
    [a1 isInFailForward:0];
  }

  return v3;
}

+ (void)isInFailForward:(id)a3
{
  v4 = a3;
  v5 = pk_ui_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_ui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested check if SE is in fail forward mode", buf, 2u);
    }
  }

  [a1 _initVariables];
  v8 = _inFailForwardQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NPKSecureElement_isInFailForward___block_invoke;
  block[3] = &unk_279945198;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, block);
}

uint64_t __36__NPKSecureElement_isInFailForward___block_invoke(uint64_t a1)
{
  v2 = pk_ui_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_ui_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Start check if SE is in fail forward mode", buf, 2u);
    }
  }

  v5 = [MEMORY[0x277D38248] isInFailForward];
  v6 = pk_ui_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (!v7)
    {
      v9 = 1;
      goto LABEL_17;
    }

    v8 = pk_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: SE is in fail forward mode", v12, 2u);
    }

    v9 = 1;
  }

  else
  {
    if (!v7)
    {
      v9 = 2;
      goto LABEL_17;
    }

    v8 = pk_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = 2;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: SE is Not in fail forward mode", v11, 2u);
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_17:
  atomic_store(v9, &_atomicIsInFailForward);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, v5);
  }

  return result;
}

+ (void)_initVariables
{
  if (_initVariables_onceToken != -1)
  {
    +[NPKSecureElement _initVariables];
  }
}

void __34__NPKSecureElement__initVariables__block_invoke()
{
  atomic_store(0, &_atomicIsInFailForward);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.nanoPassKit.secureElement.inFailForward", v2);
  v1 = _inFailForwardQueue;
  _inFailForwardQueue = v0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[NPKSecureElement sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_4;

  return v3;
}

void __34__NPKSecureElement_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKSecureElement);
  v1 = sharedInstance_sharedInstance_4;
  sharedInstance_sharedInstance_4 = v0;
}

- (NPKSecureElement)init
{
  v13.receiver = self;
  v13.super_class = NPKSecureElement;
  v2 = [(NPKSecureElement *)&v13 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(0, &v2->_atomicIsInRestricted);
    v4 = dispatch_queue_create("com.apple.nanoPassKit.hwManager.background", 0);
    backgroundQueue = v3->_backgroundQueue;
    v3->_backgroundQueue = v4;

    v6 = objc_alloc_init(NPKThreadSafeObserverManager);
    observerManager = v3->_observerManager;
    v3->_observerManager = &v6->super;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D38A10] object:0];
    [v8 addObserver:v3 selector:sel__applicationWillEnterBackground_ name:*MEMORY[0x277D38A08] object:0];
    v9 = v3->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__NPKSecureElement_init__block_invoke;
    block[3] = &unk_279944F98;
    v12 = v3;
    dispatch_async(v9, block);
  }

  return v3;
}

- (void)isInRestrictedMode:(id)a3
{
  v4 = a3;
  backgroundQueue = self->_backgroundQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NPKSecureElement_isInRestrictedMode___block_invoke;
  v7[3] = &unk_279945530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(backgroundQueue, v7);
}

uint64_t __39__NPKSecureElement_isInRestrictedMode___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) supportState] != 2)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) supportState];
        v12[0] = 67109120;
        v12[1] = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Won't use APIs since hw support state is %d", v12, 8u);
      }
    }

    result = *(a1 + 40);
    if (result)
    {
      result = (*(result + 16))(result, 0);
    }

    goto LABEL_12;
  }

  v2 = [*(a1 + 32) hardwareManager];
  v3 = [v2 isInRestrictedMode];

  [*(a1 + 32) _secureElementDidUpdateRestrictedModeState:v3];
  result = *(a1 + 40);
  if (!result)
  {
LABEL_12:
    v11 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = *(result + 16);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

- (void)registerObserver:(id)a3
{
  v5 = a3;
  v4 = [(NPKSecureElement *)self hardwareManager];
  [v4 registerEventListener:self];

  [(NPKObserverManager *)self->_observerManager registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  [(NPKObserverManager *)self->_observerManager unregisterObserver:a3];
  v4 = [(NPKSecureElement *)self hardwareManager];
  [v4 unregisterEventListener:self];
}

- (void)applicationIsAtForeground
{
  backgroundQueue = self->_backgroundQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NPKSecureElement_applicationIsAtForeground__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(backgroundQueue, block);
}

uint64_t __45__NPKSecureElement_applicationIsAtForeground__block_invoke(uint64_t a1)
{
  [*(a1 + 32) isInRestrictedMode:0];
  v2 = *(a1 + 32);

  return [v2 _fetchNFCState];
}

- (void)_backgroundQueue_initHWManager
{
  dispatch_assert_queue_V2(self->_backgroundQueue);
  v3 = [MEMORY[0x277D2C848] sharedHardwareManagerWithNoUI];
  hardwareManager = self->_hardwareManager;
  self->_hardwareManager = v3;

  v5 = [(NPKSecureElement *)self hardwareManager];
  self->_supportState = [v5 getHwSupport];

  supportState = self->_supportState;
  if (supportState == 4)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Found NFHardwareSupportStateUnSupported.", v11, 2u);
      }
    }

    v10 = [(NPKSecureElement *)self hardwareManager];
    [v10 unregisterEventListener:self];

    [(NPKSecureElement *)self setHardwareManager:0];
    atomic_store(0, &self->_atomicIsNfcDisabled);
  }

  else if (supportState == 2)
  {

    [(NPKSecureElement *)self _fetchNFCState];
  }
}

- (void)_fetchNFCState
{
  if (MGGetBoolAnswer())
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__NPKSecureElement__fetchNFCState__block_invoke;
    block[3] = &unk_279944F98;
    block[4] = self;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    atomic_store(0, &self->_atomicIsNfcDisabled);
  }
}

void __34__NPKSecureElement__fetchNFCState__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) supportState] == 2)
  {
    v15 = 0;
    v2 = [*(a1 + 32) hardwareManager];
    v3 = [v2 getRadioEnabledState:&v15];

    if (v3)
    {
      v4 = pk_General_log();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v6 = pk_General_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v3;
          _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Fetch NFC status error: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      atomic_store(v15 != 1, (*(a1 + 32) + 17));
    }

    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = atomic_load((*(a1 + 32) + 17));
        *buf = 67109120;
        LODWORD(v17) = v13 & 1;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NFC: retrieved nfcDisabled state: %d.", buf, 8u);
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v3 = pk_General_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) supportState];
      *buf = 67109120;
      LODWORD(v17) = v9;
      _os_log_impl(&dword_25B300000, v3, OS_LOG_TYPE_DEFAULT, "Warning: Will not use APIs since hw support state is %d", buf, 8u);
    }

    goto LABEL_15;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_secureElementDidUpdateRestrictedModeState:(BOOL)a3
{
  atomic_store(a3, &self->_atomicIsInRestricted);
  observerManager = self->_observerManager;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__NPKSecureElement__secureElementDidUpdateRestrictedModeState___block_invoke;
  v4[3] = &unk_27994B168;
  v4[4] = self;
  v5 = a3;
  [(NPKObserverManager *)observerManager enumerateObserversUsingBlock:v4];
}

void __63__NPKSecureElement__secureElementDidUpdateRestrictedModeState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 secureElement:*(a1 + 32) didUpdateRestrictedModeState:*(a1 + 40)];
  }
}

- (void)dealloc
{
  v3 = [(NPKSecureElement *)self hardwareManager];
  [v3 unregisterEventListener:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NPKSecureElement;
  [(NPKSecureElement *)&v5 dealloc];
}

- (void)didChangeRadioState:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NFHardwareEventListener received nfc radio enabled %d", v9, 8u);
    }
  }

  atomic_store(!v3, &self->_atomicIsNfcDisabled);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)hardwareStateDidChange
{
  backgroundQueue = self->_backgroundQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPKSecureElement_hardwareStateDidChange__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(backgroundQueue, block);
}

void __42__NPKSecureElement_hardwareStateDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hardwareManager];
  [*(a1 + 32) setSupportState:{objc_msgSend(v2, "getHwSupport")}];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(NPKSecureElement *)self hardwareManager];
  [v4 registerEventListener:self];
}

- (void)_applicationWillEnterBackground:(id)a3
{
  v4 = [(NPKSecureElement *)self hardwareManager];
  [v4 unregisterEventListener:self];
}

@end