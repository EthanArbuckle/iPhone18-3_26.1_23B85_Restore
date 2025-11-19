@interface HDNanoRegistryDeviceCapabilityProvider
- (HDNanoRegistryDeviceCapabilityProvider)initWithActivePairedDeviceProvider:(id)a3;
- (id)activePairedDevice;
- (id)isCapabilitySupportedOnActivePairedDevice:(id)a3 error:(id *)a4;
- (void)_pairedOrActiveDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)resetCachedLastActivePairedDevice;
@end

@implementation HDNanoRegistryDeviceCapabilityProvider

id __46__HDNanoRegistryDeviceCapabilityProvider_init__block_invoke()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
  v2 = [v0 getDevicesMatching:v1];
  v3 = [v2 firstObject];

  return v3;
}

- (HDNanoRegistryDeviceCapabilityProvider)initWithActivePairedDeviceProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDNanoRegistryDeviceCapabilityProvider;
  v5 = [(HDNanoRegistryDeviceCapabilityProvider *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_pairedDeviceDidChangeCapabilitiesNotificationToken = -1;
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = HKLogInfrastructure();
    v11 = [v7 initWithName:v9 loggingCategory:v10];
    observers = v6->_observers;
    v6->_observers = v11;

    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_lock_isListeningForUpdates = 0;
    v13 = _Block_copy(v4);
    activePairedDeviceProvider = v6->_activePairedDeviceProvider;
    v6->_activePairedDeviceProvider = v13;
  }

  return v6;
}

void __67__HDNanoRegistryDeviceCapabilityProvider__startListeningForUpdates__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = HKLogInfrastructure();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v2 = *(&buf + 4);
      _os_log_impl(&dword_228986000, v1, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying delegate for a device capabilities change", &buf, 0xCu);
    }

    [(HDNanoRegistryDeviceCapabilityProvider *)WeakRetained resetCachedLastActivePairedDevice];
    v3 = WeakRetained[2];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v7 = __76__HDNanoRegistryDeviceCapabilityProvider__pairedDeviceDidChangeCapabilities__block_invoke;
    v8 = &unk_278613C18;
    v9 = WeakRetained;
    [v3 notifyObservers:&buf];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  pairedDeviceDidChangeCapabilitiesNotificationToken = self->_pairedDeviceDidChangeCapabilitiesNotificationToken;
  if (pairedDeviceDidChangeCapabilitiesNotificationToken != -1)
  {
    notify_cancel(pairedDeviceDidChangeCapabilitiesNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = HDNanoRegistryDeviceCapabilityProvider;
  [(HDNanoRegistryDeviceCapabilityProvider *)&v4 dealloc];
}

- (void)_pairedOrActiveDevicesDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying delegate for an active device change: %{public}@", buf, 0x16u);
  }

  [(HDNanoRegistryDeviceCapabilityProvider *)self resetCachedLastActivePairedDevice];
  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HDNanoRegistryDeviceCapabilityProvider__pairedOrActiveDevicesDidChange___block_invoke;
  v11[3] = &unk_278613C18;
  v11[4] = self;
  [(HKObserverSet *)observers notifyObservers:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetCachedLastActivePairedDevice
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;

    os_unfair_lock_unlock((a1 + 24));
  }
}

- (id)isCapabilitySupportedOnActivePairedDevice:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [(HDNanoRegistryDeviceCapabilityProvider *)self activePairedDevice];
  v8 = [v7 supportsCapability:v6];

  v9 = [v5 numberWithInt:v8];

  return v9;
}

- (id)activePairedDevice
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_lastActivePairedDevice;
  if (!v3)
  {
    v4 = (*(self->_activePairedDeviceProvider + 2))();
    v3 = v4;
    os_unfair_lock_assert_owner(&self->_lock);
    if (self->_lock_isListeningForUpdates && !self->_lock_lastActivePairedDevice)
    {
      objc_storeStrong(&self->_lock_lastActivePairedDevice, v4);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HDNanoRegistryDeviceCapabilityProvider_registerObserver_queue___block_invoke;
  v5[3] = &unk_278613968;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:a4 runIfFirstObserver:v5];
}

void __65__HDNanoRegistryDeviceCapabilityProvider_registerObserver_queue___block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = *MEMORY[0x277D2BC78];
    v19[0] = *MEMORY[0x277D2BC88];
    v19[1] = v3;
    v19[2] = *MEMORY[0x277D2BC48];
    [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v4 = v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [v2 addObserver:v1 selector:sel__pairedOrActiveDevicesDidChange_ name:*(*(&v14 + 1) + 8 * i) object:0];
        }

        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    objc_initWeak(&location, v1);
    *(v1 + 8) = -1;
    v8 = [*MEMORY[0x277D2BC98] UTF8String];
    v9 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__HDNanoRegistryDeviceCapabilityProvider__startListeningForUpdates__block_invoke;
    v11[3] = &unk_278613BF0;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch(v8, (v1 + 8), MEMORY[0x277D85CD0], v11);

    os_unfair_lock_lock((v1 + 24));
    *(v1 + 28) = 1;
    os_unfair_lock_unlock((v1 + 24));
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end