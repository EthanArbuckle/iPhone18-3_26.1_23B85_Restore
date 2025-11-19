@interface COCapabilityService
+ (id)serviceWithDelegate:(id)a3;
- (BOOL)_applicableToCluster:(id)a3;
- (BOOL)_isCapabilityAvailable:(id)a3 inCluster:(id)a4;
- (BOOL)_isCapabilitySupported:(id)a3;
- (COCapabilityService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5;
- (id)_getEffectiveCapabilitiesForCluster:(id)a3;
- (id)_remoteInterfaceForClient:(id)a3 withErrorHandler:(id)a4;
- (void)_addOnAdded:(id)a3;
- (void)_addOnRemoved:(id)a3;
- (void)_clientLost:(id)a3;
- (void)_cluster:(id)a3 availableCapabilitiesChanged:(id)a4;
- (void)_configureServiceInterfacesOnConnection:(id)a3;
- (void)_diffCapabilities:(id)a3 withCapabilities:(id)a4 result:(id)a5;
- (void)_effectiveCapabilitiesForCluster:(id)a3 changedFrom:(id)a4 to:(id)a5;
- (void)_notifyObserversAvailabilityChangedOfCapability:(id)a3 inCluster:(id)a4;
- (void)_updateSupportedCapabilities;
- (void)addObserverForCapability:(id)a3 inCluster:(id)a4;
- (void)addOn:(id)a3 availableCapabilitiesChanged:(id)a4;
- (void)joinClusters:(id)a3 usingMeshController:(id)a4 withClusterIdentifier:(id)a5 completion:(id)a6;
- (void)registerCapability:(id)a3;
- (void)removeObserverForCapability:(id)a3 inCluster:(id)a4;
- (void)unregisterCapability:(id)a3;
@end

@implementation COCapabilityService

+ (id)serviceWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.capability" entitlement:@"com.apple.private.coordination.capability"];
  v5 = objc_alloc_init(COCapabilityAddOnProvider);
  v6 = [[COCapabilityService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:v3];

  return v6;
}

- (COCapabilityService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5
{
  v15.receiver = self;
  v15.super_class = COCapabilityService;
  v5 = [(COService *)&v15 initWithListenerProvider:a3 addOnProvider:a4 delegate:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    capabilities = v5->_capabilities;
    v5->_capabilities = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    observers = v5->_observers;
    v5->_observers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    supportedCapabilities = v5->_supportedCapabilities;
    v5->_supportedCapabilities = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    availableCapabilities = v5->_availableCapabilities;
    v5->_availableCapabilities = v12;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)a3
{
  v10.receiver = self;
  v10.super_class = COCapabilityService;
  v4 = a3;
  [(COService *)&v10 _configureServiceInterfacesOnConnection:v4];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857D9A08;
  v7 = [v5 interfaceWithProtocol:{v6, v10.receiver, v10.super_class}];
  [v4 setExportedInterface:v7];
  [v4 setExportedObject:self];
  v8 = &unk_2857E6680;

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v8];

  [v4 setRemoteObjectInterface:v9];
}

- (void)_clientLost:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = COCapabilityService;
  [(COService *)&v27 _clientLost:v4];
  v5 = [(COCapabilityService *)self observers];
  v6 = [v5 mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = self;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v7 objectForKey:v13];
        v15 = [v14 objectForKey:v4];

        if (v15)
        {
          v16 = [v14 mutableCopy];
          [v16 removeObjectForKey:v4];
          if ([v16 count])
          {
            v17 = [v16 copy];
            [v6 setObject:v17 forKey:v13];
          }

          else
          {
            [(COService *)v22 _releaseAssertionForCluster:v13];
            [v6 removeObjectForKey:v13];
          }

          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);

    self = v22;
    if (v10)
    {
      [(COCapabilityService *)v22 setObservers:v6];
    }
  }

  else
  {
  }

  v18 = [(COCapabilityService *)self capabilities];
  v19 = [v18 objectForKey:v4];
  if (v19)
  {
    v20 = [v18 mutableCopy];
    [v20 removeObjectForKey:v4];
    [(COCapabilityService *)self setCapabilities:v20];
    [(COCapabilityService *)self _updateSupportedCapabilities];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addOnAdded:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COCapabilityService *)self supportedCapabilities];
  [v4 setSupportedCapabilities:v5];

  v6 = [v4 availableCapabilities];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(COService *)self _clustersForAddOn:v4, 0];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(COCapabilityService *)self _cluster:*(*(&v13 + 1) + 8 * v11++) availableCapabilitiesChanged:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v4 setDelegate:self];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDelegate:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(COService *)self _clustersForAddOn:v4, 0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(COCapabilityService *)self _cluster:*(*(&v11 + 1) + 8 * v9++) availableCapabilitiesChanged:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_applicableToCluster:(id)a3
{
  v3 = [a3 configuration];
  v4 = [v3 requiredServices];

  return v4 & 1;
}

- (void)joinClusters:(id)a3 usingMeshController:(id)a4 withClusterIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke;
  v17[3] = &unk_278E17510;
  objc_copyWeak(&v20, &location);
  v14 = v10;
  v18 = v14;
  v15 = v13;
  v19 = v15;
  v16.receiver = self;
  v16.super_class = COCapabilityService;
  [(COService *)&v16 joinClusters:v14 usingMeshController:v11 withClusterIdentifier:v12 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CFD078] pairCluster];
    if ([*(a1 + 32) containsObject:v3])
    {
      v4 = [WeakRetained _addOnForCluster:v3];
      v5 = v4;
      if (v4)
      {
        [v4 _enableForPairLegacySupport];
      }

      else
      {
        v6 = COCoreLogForCategory(5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke_cold_1(WeakRetained, v6);
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerCapability:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COService *)self currentClient];
  if (v5)
  {
    v6 = [(COCapabilityService *)self capabilities];
    v7 = [v6 objectForKey:v5];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    if (([v7 containsObject:v4] & 1) == 0)
    {
      v8 = COCoreLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218498;
        v13 = self;
        v14 = 2112;
        v15 = v4;
        v16 = 2112;
        v17 = v5;
        _os_log_debug_impl(&dword_244378000, v8, OS_LOG_TYPE_DEBUG, "%p registering Capability(%@) for Client(%@)", &v12, 0x20u);
      }

      v9 = [v7 setByAddingObject:v4];
      v10 = [v6 mutableCopy];
      [v10 setObject:v9 forKey:v5];
      [(COCapabilityService *)self setCapabilities:v10];
      [(COCapabilityService *)self _updateSupportedCapabilities];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterCapability:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COService *)self currentClient];
  if (v5)
  {
    v6 = [(COCapabilityService *)self capabilities];
    v7 = [v6 objectForKey:v5];
    if ([v7 containsObject:v4])
    {
      v8 = COCoreLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134218498;
        v14 = self;
        v15 = 2112;
        v16 = v4;
        v17 = 2112;
        v18 = v5;
        _os_log_debug_impl(&dword_244378000, v8, OS_LOG_TYPE_DEBUG, "%p unregistering Capability(%@) for Client(%@)", &v13, 0x20u);
      }

      v9 = [v7 mutableCopy];
      [v9 removeObject:v4];
      v10 = [v6 mutableCopy];
      v11 = [v9 copy];
      [v10 setObject:v11 forKey:v5];

      [(COCapabilityService *)self setCapabilities:v10];
      [(COCapabilityService *)self _updateSupportedCapabilities];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addObserverForCapability:(id)a3 inCluster:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self currentClient];
  v9 = [(COCapabilityService *)self _isCapabilityAvailable:v6 inCluster:v7];
  v10 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    if (v9)
    {
      v22 = 89;
    }

    else
    {
      v22 = 78;
    }

    v25 = self;
    v26 = 1024;
    *v27 = v22;
    *&v27[4] = 2112;
    *&v27[6] = v6;
    *&v27[14] = 2112;
    *&v27[16] = v7;
    *&v27[24] = 2112;
    *&v27[26] = v8;
    _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%p providing initial value(%c) for Capability(%@) in Cluster(%@) to Client(%@)", buf, 0x30u);
  }

  [(COCapabilityService *)self _notifyClient:v8 availability:v9 ofCapability:v6 inCluster:v7];
  if (v8)
  {
    v11 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v25 = self;
      v26 = 2112;
      *v27 = v6;
      *&v27[8] = 2112;
      *&v27[10] = v7;
      *&v27[18] = 2112;
      *&v27[20] = v8;
      _os_log_debug_impl(&dword_244378000, v11, OS_LOG_TYPE_DEBUG, "%p adding observer for Capability(%@) in Cluster(%@) for Client(%@)", buf, 0x2Au);
    }

    v12 = [(COCapabilityService *)self observers];
    v13 = [v12 objectForKey:v7];
    if (!v13)
    {
      [(COService *)self _takeAssertionForCluster:v7];
      v13 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    v14 = [v13 objectForKey:v8];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v15 = [v14 setByAddingObject:v6];
    v16 = [v13 mutableCopy];
    [v16 setObject:v15 forKey:v8];
    v17 = [v12 mutableCopy];
    v23 = v8;
    v18 = v12;
    v19 = v6;
    v20 = [v16 copy];
    [v17 setObject:v20 forKey:v7];

    v6 = v19;
    [(COCapabilityService *)self setObservers:v17];

    v8 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)removeObserverForCapability:(id)a3 inCluster:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self currentClient];
  if (v8)
  {
    v9 = [(COCapabilityService *)self observers];
    v10 = [v9 objectForKey:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:v8];
      if ([v12 containsObject:v6])
      {
        v13 = COCoreLogForCategory(5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v22 = self;
          v23 = 2112;
          v24 = v6;
          v25 = 2112;
          v26 = v7;
          v27 = 2112;
          v28 = v8;
          _os_log_debug_impl(&dword_244378000, v13, OS_LOG_TYPE_DEBUG, "%p removing observer for Capability(%@) in Cluster(%@) for Client(%@)", buf, 0x2Au);
        }

        v14 = [v12 mutableCopy];
        [v14 removeObject:v6];
        v15 = [v11 mutableCopy];
        if ([v14 count])
        {
          v16 = [v14 copy];
          [v15 setObject:v16 forKey:v8];
        }

        else
        {
          [v15 removeObjectForKey:v8];
        }

        v17 = [v9 mutableCopy];
        if ([v15 count])
        {
          v20 = v12;
          v18 = [v15 copy];
          [v17 setObject:v18 forKey:v7];

          v12 = v20;
        }

        else
        {
          [(COService *)self _releaseAssertionForCluster:v7];
          [v17 removeObjectForKey:v7];
        }

        [(COCapabilityService *)self setObservers:v17];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addOn:(id)a3 availableCapabilitiesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__COCapabilityService_addOn_availableCapabilitiesChanged___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __58__COCapabilityService_addOn_availableCapabilitiesChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _clustersForAddOn:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _cluster:*(*(&v8 + 1) + 8 * v6++) availableCapabilitiesChanged:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateSupportedCapabilities
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(COCapabilityService *)self supportedCapabilities];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [(COCapabilityService *)self capabilities];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v41 + 1) + 8 * v9)];
        [v4 unionSet:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v7);
  }

  v11 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v48 = self;
    v49 = 2112;
    v50 = v3;
    v51 = 2112;
    v52 = v4;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p supported set changing from(%@) to(%@)", buf, 0x20u);
  }

  [(COCapabilityService *)self setSupportedCapabilities:v4];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [(COService *)self _uniqueAddOns];
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v37 + 1) + 8 * v16++) setSupportedCapabilities:v4];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v14);
  }

  v17 = [(COCapabilityService *)self supportedCapabilities];
  v18 = MEMORY[0x277CBEB98];
  v19 = [(COService *)self addOns];
  v20 = [v19 allKeys];
  v21 = [v18 setWithArray:v20];

  v22 = [(COCapabilityService *)self observers];
  v23 = MEMORY[0x277CBEB58];
  v24 = [v22 allKeys];
  v25 = [v23 setWithArray:v24];

  v32 = v21;
  [v25 minusSet:v21];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(COCapabilityService *)self _effectiveCapabilitiesForCluster:*(*(&v33 + 1) + 8 * v30++) changedFrom:v3 to:v17];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_cluster:(id)a3 availableCapabilitiesChanged:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(COCapabilityService *)self _getEffectiveCapabilitiesForCluster:v12];
  v8 = [(COCapabilityService *)self availableCapabilities];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v6)
  {
    [v9 setObject:v6 forKey:v12];
  }

  else
  {
    [v9 removeObjectForKey:v12];
  }

  [(COCapabilityService *)self setAvailableCapabilities:v10];
  v11 = [(COCapabilityService *)self _getEffectiveCapabilitiesForCluster:v12];
  [(COCapabilityService *)self _effectiveCapabilitiesForCluster:v12 changedFrom:v7 to:v11];
}

- (void)_effectiveCapabilitiesForCluster:(id)a3 changedFrom:(id)a4 to:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__25;
  v43 = __Block_byref_object_dispose__25;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__25;
  v37 = __Block_byref_object_dispose__25;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __71__COCapabilityService__effectiveCapabilitiesForCluster_changedFrom_to___block_invoke;
  v32[3] = &unk_278E18E10;
  v32[4] = &v39;
  v32[5] = &v33;
  [(COCapabilityService *)self _diffCapabilities:v9 withCapabilities:v10 result:v32];
  if ([v34[5] count] || objc_msgSend(v40[5], "count"))
  {
    v11 = [(COCapabilityService *)self _getEffectiveCapabilitiesForCluster:v8];
    v12 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v34[5];
      v14 = v40[5];
      *buf = 134219010;
      v48 = self;
      v49 = 2112;
      v50 = v8;
      v51 = 2112;
      v52 = v11;
      v53 = 2112;
      v54 = v13;
      v55 = 2112;
      v56 = v14;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p Capabilities changed in Cluster(%@). Now(%@), removing(%@), adding(%@)", buf, 0x34u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v34[5];
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v46 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(COCapabilityService *)self _notifyObserversAvailabilityChangedOfCapability:*(*(&v28 + 1) + 8 * v18++) inCluster:v8];
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v28 objects:v46 count:16];
      }

      while (v16);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v40[5];
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v45 count:16];
    if (v20)
    {
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(COCapabilityService *)self _notifyObserversAvailabilityChangedOfCapability:*(*(&v24 + 1) + 8 * v22++) inCluster:v8, v24];
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v24 objects:v45 count:16];
      }

      while (v20);
    }
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void __71__COCapabilityService__effectiveCapabilitiesForCluster_changedFrom_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_getEffectiveCapabilitiesForCluster:(id)a3
{
  v4 = a3;
  v5 = [(COCapabilityService *)self availableCapabilities];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [(COCapabilityService *)self supportedCapabilities];
  }

  return v6;
}

- (BOOL)_isCapabilitySupported:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COCapabilityService *)self supportedCapabilities];
  v6 = [v5 containsObject:v4];
  v7 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    if (v6)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p Capability(%@) supported: %c", &v11, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isCapabilityAvailable:(id)a3 inCluster:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COCapabilityService *)self availableCapabilities];
  v9 = [v8 objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 containsObject:v6];
  }

  else
  {
    v12 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218498;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_244378000, v12, OS_LOG_TYPE_ERROR, "%p No such Cluster(%@) for Capability(%@)", &v18, 0x20u);
    }

    v11 = [(COCapabilityService *)self _isCapabilitySupported:v6];
  }

  v13 = v11;
  v14 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218754;
    if (v13)
    {
      v15 = 89;
    }

    else
    {
      v15 = 78;
    }

    v19 = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 1024;
    v25 = v15;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Resolved availability of Capability(%@) in Cluster(%@): %c", &v18, 0x26u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_diffCapabilities:(id)a3 withCapabilities:(id)a4 result:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [v8 mutableCopy];
  [v11 minusSet:v9];
  v10 = [v9 mutableCopy];

  [v10 minusSet:v8];
  v7[2](v7, v11, v10);
}

- (void)_notifyObserversAvailabilityChangedOfCapability:(id)a3 inCluster:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = [(COCapabilityService *)self observers];
  v9 = [v23 objectForKey:v7];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        if ([v15 containsObject:v6])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v16 = [(COCapabilityService *)self _isCapabilityAvailable:v6 inCluster:v7];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(COCapabilityService *)self _notifyClient:*(*(&v24 + 1) + 8 * j) availability:v16 ofCapability:v6 inCluster:v7];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke_cold_1(WeakRetained, a1, v3);
    }
  }
}

- (id)_remoteInterfaceForClient:(id)a3 withErrorHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];

  return v7;
}

void __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%p should have found the pair add-on!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (*(a2 + 64))
  {
    v5 = 89;
  }

  else
  {
    v5 = 78;
  }

  v6 = *(a2 + 48);
  v8 = 134219010;
  v9 = a1;
  v10 = 2112;
  v11 = v3;
  v12 = 2112;
  v13 = v4;
  v14 = 1024;
  v15 = v5;
  v16 = 2112;
  v17 = v6;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "%p failed to notify Client(%@) of Capability(%@) availability(%c) in Cluster(%@)", &v8, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

@end