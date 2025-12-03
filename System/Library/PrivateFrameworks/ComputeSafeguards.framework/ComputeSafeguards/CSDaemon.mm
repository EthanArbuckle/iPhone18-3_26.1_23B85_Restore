@interface CSDaemon
+ (id)_sharedInstance;
+ (id)run;
- (BOOL)_shouldRunSafeguards;
- (id)_init;
- (void)_start;
- (void)handleDisplayStateChanged:(unint64_t)changed;
- (void)handlePowerStateChanged;
- (void)updateContextForIdentifier:(id)identifier withState:(id)state;
- (void)updateContextForIdentifier:(id)identifier withState:(id)state withRestrictions:(id)restrictions;
@end

@implementation CSDaemon

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CSDaemon;
  v2 = [(CSDaemon *)&v6 init];
  if (v2)
  {
    v3 = getMainQueue();
    mainQueue = v2->_mainQueue;
    v2->_mainQueue = v3;

    *&v2->_powerStatusNotifyToken = -1;
  }

  return v2;
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken_0 != -1)
  {
    +[CSDaemon _sharedInstance];
  }

  v3 = _sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __27__CSDaemon__sharedInstance__block_invoke()
{
  _sharedInstance___sharedInstance_0 = [[CSDaemon alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (void)_start
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(&dword_243DC3000, a2, a3, "notify_register_dispatch(displayStatus) failed %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __18__CSDaemon__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePowerStateChanged];
}

void __18__CSDaemon__start__block_invoke_5(uint64_t a1, int token)
{
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleDisplayStateChanged:state64];
  }
}

void __18__CSDaemon__start__block_invoke_6(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v2 = *(a1 + 32);
  v3 = +[CSContextStore sharedInstance];
  [v2 setContextStore:v3];

  v4 = *(a1 + 32);
  v5 = objc_alloc_init(CSRestrictionDataProvider);
  [v4 setRestrictionDataProvider:v5];

  v6 = *(a1 + 32);
  v7 = [v6 restrictionDataProvider];
  v8 = [CSRestrictionManager sharedInstanceWithDataProvider:v7];
  [v6 setRestrictionsManager:v8];

  v9 = +[CSLogger defaultCategory];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) restrictionsManager];
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&dword_243DC3000, v9, OS_LOG_TYPE_INFO, "Created restrictionsManager: %@", buf, 0xCu);
  }

  +[CSTriggerManager run];
  +[CSViolationHandlerService run];
  [*(a1 + 32) handlePowerStateChanged];
  v11 = *(*(a1 + 32) + 12);
  if (v11 != -1)
  {
    state = notify_get_state(v11, &state64);
    if (state)
    {
      v13 = state;
      v14 = +[CSLogger defaultCategory];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __18__CSDaemon__start__block_invoke_6_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    else
    {
      [*(a1 + 32) handleDisplayStateChanged:state64];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRunSafeguards
{
  v2 = _os_feature_enabled_impl();
  if ((v2 & 1) == 0)
  {
    v3 = +[CSLogger defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243DC3000, v3, OS_LOG_TYPE_DEFAULT, "Safeguards are disabled", v5, 2u);
    }
  }

  return v2;
}

+ (id)run
{
  if (run_onceToken_1 != -1)
  {
    +[CSDaemon run];
  }

  return +[CSDaemon _sharedInstance];
}

void __15__CSDaemon_run__block_invoke()
{
  v0 = +[CSDaemon _sharedInstance];
  [v0 _start];
}

- (void)updateContextForIdentifier:(id)identifier withState:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  mainQueue = self->_mainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CSDaemon_updateContextForIdentifier_withState___block_invoke;
  block[3] = &unk_278DF5398;
  block[4] = self;
  v12 = stateCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = stateCopy;
  dispatch_async(mainQueue, block);
}

void __49__CSDaemon_updateContextForIdentifier_withState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextStore];
  [v2 updateState:*(a1 + 40) forIdentifier:*(a1 + 48)];
}

- (void)updateContextForIdentifier:(id)identifier withState:(id)state withRestrictions:(id)restrictions
{
  identifierCopy = identifier;
  stateCopy = state;
  restrictionsCopy = restrictions;
  mainQueue = self->_mainQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__CSDaemon_updateContextForIdentifier_withState_withRestrictions___block_invoke;
  v15[3] = &unk_278DF53E8;
  v15[4] = self;
  v16 = stateCopy;
  v17 = identifierCopy;
  v18 = restrictionsCopy;
  v12 = restrictionsCopy;
  v13 = identifierCopy;
  v14 = stateCopy;
  dispatch_async(mainQueue, v15);
}

void __66__CSDaemon_updateContextForIdentifier_withState_withRestrictions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextStore];
  [v2 updateState:*(a1 + 40) forIdentifier:*(a1 + 48) withRestrictions:*(a1 + 56)];
}

- (void)handlePowerStateChanged
{
  v3 = IOPSDrawingUnlimitedPower();
  v4 = +[CSLogger defaultCategory];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [CSDaemon handlePowerStateChanged];
    }

    v6 = &unk_28570ACB0;
  }

  else
  {
    if (v5)
    {
      [CSDaemon handlePowerStateChanged];
    }

    v6 = &unk_28570ACC8;
  }

  [(CSDaemon *)self updateContextForIdentifier:@"PluggedIn" withState:v6];
}

- (void)handleDisplayStateChanged:(unint64_t)changed
{
  v5 = +[CSLogger defaultCategory];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (changed)
  {
    if (v6)
    {
      [CSDaemon handleDisplayStateChanged:];
    }

    v7 = &unk_28570ACB0;
  }

  else
  {
    if (v6)
    {
      [CSDaemon handleDisplayStateChanged:];
    }

    v7 = &unk_28570ACC8;
  }

  [(CSDaemon *)self updateContextForIdentifier:@"Display" withState:v7];
}

void __18__CSDaemon__start__block_invoke_6_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(&dword_243DC3000, a2, a3, "Failed %d to get initial Display state", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end