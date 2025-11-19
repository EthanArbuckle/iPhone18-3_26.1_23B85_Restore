@interface MSPowerAssertionManager
+ (id)sharedManager;
- (void)_recomputePowerAssertion;
- (void)releaseBusy;
- (void)releaseUIBusy;
- (void)retainBusy;
- (void)retainUIBusy;
- (void)toggleAssertion;
@end

@implementation MSPowerAssertionManager

- (void)toggleAssertion
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(MSPowerAssertionManager *)self isAssertingPowerAssertion])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Toggling process power assertion off then on.", &v4, 0xCu);
    }

    [(MSPowerAssertionManager *)self _deassertPowerAssertion];
    [(MSPowerAssertionManager *)self _assertPowerAssertion];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_recomputePowerAssertion
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(MSPowerAssertionManager *)self busyCount]< 1 || [(MSPowerAssertionManager *)self UIBusyCount])
  {
    if ([(MSPowerAssertionManager *)self isAssertingPowerAssertion])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v4 = 138543362;
        v5 = self;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Releasing process power assertion.", &v4, 0xCu);
      }

      [(MSPowerAssertionManager *)self setIsAssertingPowerAssertion:0];
      [(MSPowerAssertionManager *)self _deassertPowerAssertion];
    }
  }

  else if (![(MSPowerAssertionManager *)self isAssertingPowerAssertion])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retaining process power assertion.", &v4, 0xCu);
    }

    [(MSPowerAssertionManager *)self setIsAssertingPowerAssertion:1];
    [(MSPowerAssertionManager *)self _assertPowerAssertion];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)releaseUIBusy
{
  v10 = *MEMORY[0x277D85DE8];
  --self->_UIBusyCount;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 138543874;
    v5 = self;
    v6 = 1024;
    v7 = [(MSPowerAssertionManager *)self busyCount];
    v8 = 1024;
    v9 = [(MSPowerAssertionManager *)self UIBusyCount];
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Releasing process UI busy. New busy: %d, UI busy: %d", &v4, 0x18u);
  }

  [(MSPowerAssertionManager *)self _recomputePowerAssertion];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)retainUIBusy
{
  v10 = *MEMORY[0x277D85DE8];
  ++self->_UIBusyCount;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 138543874;
    v5 = self;
    v6 = 1024;
    v7 = [(MSPowerAssertionManager *)self busyCount];
    v8 = 1024;
    v9 = [(MSPowerAssertionManager *)self UIBusyCount];
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retaining process UI busy. New busy: %d, UI busy: %d", &v4, 0x18u);
  }

  [(MSPowerAssertionManager *)self _recomputePowerAssertion];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)releaseBusy
{
  v10 = *MEMORY[0x277D85DE8];
  --self->_busyCount;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 138543874;
    v5 = self;
    v6 = 1024;
    v7 = [(MSPowerAssertionManager *)self busyCount];
    v8 = 1024;
    v9 = [(MSPowerAssertionManager *)self UIBusyCount];
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Releasing process busy. New busy: %d, UI busy: %d", &v4, 0x18u);
  }

  [(MSPowerAssertionManager *)self _recomputePowerAssertion];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)retainBusy
{
  v10 = *MEMORY[0x277D85DE8];
  ++self->_busyCount;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 138543874;
    v5 = self;
    v6 = 1024;
    v7 = [(MSPowerAssertionManager *)self busyCount];
    v8 = 1024;
    v9 = [(MSPowerAssertionManager *)self UIBusyCount];
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retaining process busy. New busy: %d, UI busy: %d", &v4, 0x18u);
  }

  [(MSPowerAssertionManager *)self _recomputePowerAssertion];
  v3 = *MEMORY[0x277D85DE8];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global);
  }

  v3 = sharedManager_mgr;

  return v3;
}

uint64_t __40__MSPowerAssertionManager_sharedManager__block_invoke()
{
  sharedManager_mgr = objc_alloc_init(MSPowerAssertionManager);

  return MEMORY[0x2821F96F8]();
}

@end