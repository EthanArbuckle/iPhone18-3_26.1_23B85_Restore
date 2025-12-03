@interface IRRapportProvider
- (IRRapportProvider)init;
- (IRRapportProvider)initWithQueue:(id)queue companionLinkClient:(id)client;
- (void)_logActiveDevices;
- (void)_stopDiscoveryAndResetKnownDevicesIfNeeded;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didUpdateRapportDevices:(id)devices;
- (void)logActiveDevices;
- (void)removeObserver:(id)observer;
@end

@implementation IRRapportProvider

- (IRRapportProvider)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.intelligentroutingd.rapport", v3);

  v5 = [[IRCompanionLinkClient alloc] initWithRapportProvider:self targetQueue:v4];
  v6 = [(IRRapportProvider *)self initWithQueue:v4 companionLinkClient:v5];

  return v6;
}

- (IRRapportProvider)initWithQueue:(id)queue companionLinkClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = IRRapportProvider;
  v9 = [(IRRapportProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internalQueue, queue);
    objc_storeStrong(&v10->_companionLinkClient, client);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    v13 = [MEMORY[0x277CBEB98] set];
    knownDevices = v10->_knownDevices;
    v10->_knownDevices = v13;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)dealloc
{
  [(IRCompanionLinkClient *)self->_companionLinkClient stopDiscovery];
  v3.receiver = self;
  v3.super_class = IRRapportProvider;
  [(IRRapportProvider *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  v15 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects count];

    if (v6 == 1)
    {
      v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v8 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315394;
        v12 = "#rapport-provider, ";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEBUG, "%s[%@], Registering for rapport discovery notifications", &v11, 0x16u);
      }

      [(IRRapportProvider *)self _startRapportDiscovery];
    }

    v9 = [(NSSet *)self->_knownDevices copy];
    [observerCopy provider:self didUpdateRapportDevices:v9];
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(IRRapportProvider *)self _stopDiscoveryAndResetKnownDevicesIfNeeded];
  if ([(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    [(IRRapportProvider *)self _stopDiscoveryAndResetKnownDevicesIfNeeded];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)didUpdateRapportDevices:(id)devices
{
  v18 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  os_unfair_lock_lock(&self->_lock);
  if (([(NSSet *)self->_knownDevices isEqual:devicesCopy]& 1) == 0)
  {
    v5 = [devicesCopy copy];
    knownDevices = self->_knownDevices;
    self->_knownDevices = v5;

    v7 = [(NSSet *)self->_knownDevices copy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_observers;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11++) provider:self didUpdateRapportDevices:{v7, v13}];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(IRRapportProvider *)self _logActiveDevices];
  }

  os_unfair_lock_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logActiveDevices
{
  os_unfair_lock_lock(&self->_lock);
  [(IRRapportProvider *)self _logActiveDevices];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_logActiveDevices
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(NSSet *)self->_knownDevices copy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__IRRapportProvider__logActiveDevices__block_invoke;
  v10[3] = &unk_2797E1250;
  v5 = v3;
  v11 = v5;
  [v4 enumerateObjectsUsingBlock:v10];
  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 componentsJoinedByString:@"\n"];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#rapport-provider, Rapport Active Devices:\n%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__IRRapportProvider__logActiveDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v12 = [v4 name];
  v5 = [v4 rapportEffectiveID];
  v6 = [v4 mediaRemoteIdentifier];
  v7 = [v4 mediaRouteIdentifier];
  v8 = [v4 idsID];
  v9 = [v4 iCloudId];
  v10 = [v4 deviceModel];

  v11 = [v3 stringWithFormat:@"name: %@, rpId: %@, mrID: %@, mediaRouteID: %@, idsID: %@, icloudID: %@, model: %@", v12, v5, v6, v7, v8, v9, v10];
  [v2 addObject:v11];
}

- (void)_stopDiscoveryAndResetKnownDevicesIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects count];

  if (!v4)
  {
    v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "#rapport-provider, ";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEBUG, "%s[%@], unregistering for rapport discovery notifications and reset knownDevices", &v10, 0x16u);
    }

    [(IRRapportProvider *)self _stopRapportDiscovery];
    v7 = [MEMORY[0x277CBEB98] set];
    knownDevices = self->_knownDevices;
    self->_knownDevices = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end