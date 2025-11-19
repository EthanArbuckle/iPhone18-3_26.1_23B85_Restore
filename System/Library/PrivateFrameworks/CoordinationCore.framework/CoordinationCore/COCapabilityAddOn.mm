@interface COCapabilityAddOn
- (BOOL)_legacyShimOverridesAvailableCapabilities:(id)a3;
- (COCapabilityAddOn)initWithSupportedCapabilities:(id)a3;
- (COCapabilityAddOnDelegate)delegate;
- (NSDictionary)gatheredCapabilities;
- (NSSet)availableCapabilities;
- (NSSet)supportedCapabilities;
- (id)availableCapabilitiesForNode:(id)a3;
- (void)_enableForPairLegacySupport;
- (void)_notifyDelegateCapabilitiesChanged;
- (void)_setAvailableCapabilities_Unsafe:(id)a3;
- (void)_withLock:(id)a3;
- (void)didAddToMeshController:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)handleCapabilitiesReadRequest:(id)a3 callback:(id)a4;
- (void)handleCapabilitiesUpdateNotification:(id)a3;
- (void)legacyShim:(id)a3 availableCapabilitiesChanged:(id)a4;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)performCapabilitiesUpdate;
- (void)setAvailableCapabilities:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setGatheredCapabilities:(id)a3;
- (void)setSupportedCapabilities:(id)a3;
- (void)willRemoveFromMeshController:(id)a3;
@end

@implementation COCapabilityAddOn

- (COCapabilityAddOn)initWithSupportedCapabilities:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = COCapabilityAddOn;
  v5 = [(COMeshAddOn *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
    availableCapabilities = v6->_availableCapabilities;
    v6->_availableCapabilities = v7;

    if (v4)
    {
      v9 = [v4 copy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v10 = v9;
    objc_storeStrong(&v6->_supportedCapabilities, v9);

    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    gatheredCapabilities = v6->_gatheredCapabilities;
    v6->_gatheredCapabilities = v11;
  }

  return v6;
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 != 3)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      goto LABEL_8;
    }

    [(COCapabilityAddOn *)self setGatheredCapabilities:MEMORY[0x277CBEC10]];
    v11 = [(COCapabilityAddOn *)self supportedCapabilities];
    [(COCapabilityAddOn *)self setAvailableCapabilities:v11];
LABEL_7:

    goto LABEL_8;
  }

  v8 = [v6 me];
  v9 = [v7 leader];
  v10 = [v8 isEqual:v9];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COCapabilityAddOn *)self setGatheredCapabilities:v11];
    goto LABEL_7;
  }

  [(COCapabilityAddOn *)self performCapabilitiesUpdate];
LABEL_8:
  v12.receiver = self;
  v12.super_class = COCapabilityAddOn;
  [(COMeshAddOn *)&v12 meshController:v7 didTransitionToState:a4];
}

- (void)didAddToMeshController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = COCapabilityAddOn;
  [(COMeshAddOn *)&v12 didAddToMeshController:v4];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__COCapabilityAddOn_didAddToMeshController___block_invoke;
  v9[3] = &unk_278E15FA8;
  objc_copyWeak(&v10, &location);
  [v4 registerHandler:v9 forRequestClass:objc_opt_class()];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__COCapabilityAddOn_didAddToMeshController___block_invoke_2;
  v7[3] = &unk_278E15FD0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v4 registerHandler:v7 forCommandClass:objc_opt_class()];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__COCapabilityAddOn_didAddToMeshController___block_invoke_3;
  v5[3] = &unk_278E15FF8;
  objc_copyWeak(&v6, &location);
  [v4 registerHandler:v5 forNotificationClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__COCapabilityAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleCapabilitiesReadRequest:v8 callback:v5];
  }
}

void __44__COCapabilityAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) handleCapabilitiesUpdateCommand:v4];
  }
}

void __44__COCapabilityAddOn_didAddToMeshController___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleCapabilitiesUpdateNotification:v5];
  }
}

- (void)willRemoveFromMeshController:(id)a3
{
  v4 = a3;
  [v4 deregisterHandlerForNotificationClass:objc_opt_class()];
  [v4 deregisterHandlerForCommandClass:objc_opt_class()];
  [v4 deregisterHandlerForRequestClass:objc_opt_class()];
  v5.receiver = self;
  v5.super_class = COCapabilityAddOn;
  [(COMeshAddOn *)&v5 willRemoveFromMeshController:v4];
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshController];
  v6 = [v5 me];
  v7 = [(COMeshAddOn *)self meshController];
  v8 = [v7 leader];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [(COCapabilityAddOn *)self gatheredCapabilities];
    v11 = [v10 mutableCopy];

    v35 = self;
    v12 = [(COMeshAddOn *)self meshController];
    v13 = [v12 nodes];

    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v43 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [*(*(&v43 + 1) + 8 * i) remote];
          v21 = [v11 objectForKey:v20];
          v22 = v21 == 0;

          v17 |= v22;
        }

        v16 = [v14 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v16);

      if (v17)
      {
        v23 = COCoreLogForCategory(5);
        self = v35;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v49 = v35;
          _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%p node added, need to perform update", buf, 0xCu);
        }

        [(COCapabilityAddOn *)v35 performCapabilitiesUpdate];
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
    }

    v34 = v4;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [v11 allKeys];
    v24 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    self = v35;
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v39 + 1) + 8 * j);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __53__COCapabilityAddOn_didChangeNodesForMeshController___block_invoke;
          v38[3] = &unk_278E16020;
          v38[4] = v28;
          if ([v14 indexOfObjectPassingTest:v38] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = [(COMeshAddOn *)self meshController];
            v30 = [v29 me];
            v31 = [v28 isEqual:v30];

            self = v35;
            if ((v31 & 1) == 0)
            {
              v32 = COCoreLogForCategory(5);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v49 = v35;
                _os_log_impl(&dword_244378000, v32, OS_LOG_TYPE_DEFAULT, "%p node removed, dropping gathered Capabilities", buf, 0xCu);
              }

              [v11 removeObjectForKey:v28];
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v25);
    }

    [(COCapabilityAddOn *)self setGatheredCapabilities:v11];
    v4 = v34;
    goto LABEL_27;
  }

LABEL_28:
  v37.receiver = self;
  v37.super_class = COCapabilityAddOn;
  [(COMeshAddOn *)&v37 didChangeNodesForMeshController:v4];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __53__COCapabilityAddOn_didChangeNodesForMeshController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remote];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (NSSet)supportedCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__COCapabilityAddOn_supportedCapabilities__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __42__COCapabilityAddOn_supportedCapabilities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setSupportedCapabilities:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COCapabilityAddOn *)self pairLegacyShim];

  if (v5)
  {
    v6 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p including Legacy Shim as supported Capability", buf, 0xCu);
    }

    v7 = [v4 setByAddingObject:0x2857B5268];

    v4 = v7;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__COCapabilityAddOn_setSupportedCapabilities___block_invoke;
  v10[3] = &unk_278E156B0;
  v11 = v4;
  v12 = self;
  v8 = v4;
  [(COCapabilityAddOn *)self _withLock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__COCapabilityAddOn_setSupportedCapabilities___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToSet:*(*(a1 + 40) + 32)] & 1) == 0)
  {
    v2 = [*(a1 + 32) copy];
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = [*(a1 + 40) meshController];
    if (v5)
    {
      v6 = objc_alloc_init(COCapabilityUpdateCommand);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__COCapabilityAddOn_setSupportedCapabilities___block_invoke_2;
      v7[3] = &unk_278E16048;
      v8 = v5;
      [v8 sendCommand:v6 withCompletionHandler:v7];
    }

    else
    {
      [*(a1 + 40) _setAvailableCapabilities_Unsafe:*(*(a1 + 40) + 32)];
    }
  }
}

void __46__COCapabilityAddOn_setSupportedCapabilities___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__COCapabilityAddOn_setSupportedCapabilities___block_invoke_2_cold_1(a1, v4, v5);
    }
  }
}

- (NSSet)availableCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__COCapabilityAddOn_availableCapabilities__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __42__COCapabilityAddOn_availableCapabilities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setAvailableCapabilities:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__COCapabilityAddOn_setAvailableCapabilities___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COCapabilityAddOn *)self _withLock:v6];
}

- (NSDictionary)gatheredCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__COCapabilityAddOn_gatheredCapabilities__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__COCapabilityAddOn_gatheredCapabilities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setGatheredCapabilities:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__COCapabilityAddOn_setGatheredCapabilities___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COCapabilityAddOn *)self _withLock:v6];
}

void __45__COCapabilityAddOn_setGatheredCapabilities___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToDictionary:*(*(a1 + 40) + 48)] & 1) == 0)
  {
    v2 = [*(a1 + 32) copy];
    v3 = *(a1 + 40);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;

    v5 = [*(*(a1 + 40) + 32) mutableCopy];
    v6 = *(*(a1 + 40) + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__COCapabilityAddOn_setGatheredCapabilities___block_invoke_2;
    v14[3] = &unk_278E16070;
    v7 = v5;
    v15 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
    [*(a1 + 40) _setAvailableCapabilities_Unsafe:v7];
    v8 = [*(a1 + 40) meshController];
    v9 = [v8 leader];
    v10 = [v8 me];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [[COCapabilityUpdateNotification alloc] initWithCapabilities:v7];
      v13 = [*(a1 + 40) meshController];
      [v13 sendNotification:v12];
    }
  }
}

- (COCapabilityAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__COCapabilityAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__COCapabilityAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__COCapabilityAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COCapabilityAddOn *)self _withLock:v6];
}

void __33__COCapabilityAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  LOBYTE(v2) = [v2 isEqual:WeakRetained];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 56);

    objc_storeWeak(v5, v4);
  }
}

- (id)availableCapabilitiesForNode:(id)a3
{
  v4 = a3;
  v5 = [v4 remote];
  if (v5)
  {
    v6 = v5;
LABEL_3:
    v7 = [(COCapabilityAddOn *)self gatheredCapabilities];
    v8 = [v7 objectForKey:v6];

    goto LABEL_7;
  }

  v9 = [(COMeshAddOn *)self meshController];
  v10 = [v9 listener];

  if (v10 == v4)
  {
    v6 = [v4 source];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)_notifyDelegateCapabilitiesChanged
{
  os_unfair_lock_assert_owner(&self->_lock);
  objc_copyWeak(&to, &self->_delegate);
  v3 = objc_loadWeakRetained(&to);
  if (v3)
  {
    v4 = [(NSSet *)self->_availableCapabilities copy];
    v5 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__COCapabilityAddOn__notifyDelegateCapabilitiesChanged__block_invoke;
    v7[3] = &unk_278E15728;
    v8 = v3;
    v9 = self;
    v10 = v4;
    v6 = v4;
    dispatch_async(v5, v7);
  }

  objc_destroyWeak(&to);
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setAvailableCapabilities_Unsafe:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COCapabilityAddOn *)self pairLegacyShim];

  if (v5)
  {
    if ([(COCapabilityAddOn *)self _legacyShimOverridesAvailableCapabilities:v4])
    {
      v6 = [(COCapabilityAddOn *)self pairLegacyShim];
      v58 = [v6 availableCapabilities];

      v7 = COCoreLogForCategory(5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v71 = self;
        v72 = 2112;
        v73 = v4;
        v74 = 2112;
        v75 = v58;
        _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p overriding available Capabilities(%@) with Legacy Shim Capabilities(%@)", buf, 0x20u);
      }
    }

    else
    {
      v58 = v4;
    }

    v8 = [(COMeshAddOn *)self meshController];
    v9 = +[COHomeKitAdapter sharedInstance];
    v10 = [v9 currentAccessory];
    if (!v10)
    {
      v11 = 0;
LABEL_41:

      v4 = v58;
      goto LABEL_42;
    }

    v11 = [v9 homeForAccessory:v10];
    if (!v11)
    {
      goto LABEL_41;
    }

    v12 = [v9 mediaSystemForAccessory:v10 inHome:v11];
    if (!v12)
    {
      goto LABEL_41;
    }

    v13 = v12;
    v59 = [v12 uniqueIdentifier];
    if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v14 = [(COMeshAddOn *)self meshController];
      v15 = [v14 nodes];

      obj = v15;
      v16 = [v15 countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (!v16)
      {
LABEL_40:

        goto LABEL_41;
      }

      v17 = v16;
      v52 = v13;
      v53 = v11;
      v54 = v10;
      v55 = v9;
      v56 = self;
      v18 = *v65;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v65 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v64 + 1) + 8 * i);
          v21 = [v8 nodeManager];
          v22 = [v20 remote];
          v23 = [v21 nodeControllerForConstituent:v22];

          v24 = [v23 rapportTransport];
          v25 = [v24 client];
          v26 = [v25 destinationDevice];

          v27 = [v26 mediaSystemIdentifier];
          v28 = v8;
          v29 = [v59 isEqual:v27];

          if (v29)
          {
            v30 = [v28 nodes];
            v31 = [v30 containsObject:v20];

            v8 = v28;
            if ((v31 & 1) == 0)
            {
              v32 = COCoreLogForCategory(5);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v71 = v56;
                v72 = 2112;
                v73 = v58;
                _os_log_impl(&dword_244378000, v32, OS_LOG_TYPE_DEFAULT, "%p overriding available Capabilities(%@) due to legacy peer in pair", buf, 0x16u);
              }

              v33 = objc_alloc_init(MEMORY[0x277CBEB98]);
              v58 = v33;
            }
          }

          else
          {
            v8 = v28;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v17);
    }

    else
    {
      v52 = v13;
      v53 = v11;
      v54 = v10;
      v55 = v9;
      v56 = self;
      [v8 listener];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v63 = 0u;
      v34 = [obj nodes];
      v35 = [v34 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v61;
        do
        {
          v38 = v8;
          for (j = 0; j != v36; ++j)
          {
            if (*v61 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v60 + 1) + 8 * j);
            v41 = [v40 client];
            v42 = [v41 destinationDevice];

            v43 = [v42 mediaSystemIdentifier];
            v44 = [v59 isEqual:v43];

            if (v44)
            {
              v45 = [v38 nodes];
              v46 = [v45 containsObject:v40];

              if ((v46 & 1) == 0)
              {
                v47 = COCoreLogForCategory(5);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v71 = v56;
                  v72 = 2112;
                  v73 = v58;
                  _os_log_impl(&dword_244378000, v47, OS_LOG_TYPE_DEFAULT, "%p overriding available Capabilities(%@) due to legacy peer in pair", buf, 0x16u);
                }

                v48 = objc_alloc_init(MEMORY[0x277CBEB98]);
                v58 = v48;
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v60 objects:v68 count:16];
          v8 = v38;
        }

        while (v36);
      }
    }

    self = v56;
    v10 = v54;
    v9 = v55;
    v13 = v52;
    v11 = v53;
    goto LABEL_40;
  }

LABEL_42:
  if (([v4 isEqualToSet:self->_availableCapabilities] & 1) == 0)
  {
    v49 = [v4 copy];
    availableCapabilities = self->_availableCapabilities;
    self->_availableCapabilities = v49;

    [(COCapabilityAddOn *)self _notifyDelegateCapabilitiesChanged];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)performCapabilitiesUpdate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p performing Capabilities update", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __46__COCapabilityAddOn_performCapabilitiesUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__COCapabilityAddOn_performCapabilitiesUpdate__block_invoke_cold_1(WeakRetained, v3, v5);
    }

    if ([v3 count])
    {
      v6 = [WeakRetained supportedCapabilities];
      v7 = [v6 copy];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v10 = [WeakRetained meshController];
      v9 = [v10 me];

      if (v9)
      {
        v11 = [WeakRetained supportedCapabilities];
        [v6 setObject:v11 forKey:v9];
      }

      [WeakRetained setGatheredCapabilities:v6];
    }
  }
}

void __46__COCapabilityAddOn_performCapabilitiesUpdate__block_invoke_30(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_26;
  }

  if (!v10)
  {
LABEL_5:
    v14 = [v9 capabilities];
    v12 = v14;
    if (v14)
    {
      v15 = v14;
      v12 = v15;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v16 = v15;
    goto LABEL_10;
  }

  v12 = [v10 domain];
  if ([v12 isEqualToString:*MEMORY[0x277D44250]])
  {
    v13 = [v10 code];

    if (v13 != -6714)
    {
      v16 = 0;
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v16 = 0;
LABEL_10:

LABEL_11:
  v17 = [WeakRetained gatheredCapabilities];
  v18 = [v17 mutableCopy];

  v19 = [v8 remote];
  v33 = v8;
  v32 = v16;
  if (v16)
  {
    [v18 setObject:v16 forKey:v19];
  }

  else
  {
    [v18 removeObjectForKey:v19];
  }

  v20 = [WeakRetained meshController];
  v21 = [v20 nodes];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v18 allKeys];
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __46__COCapabilityAddOn_performCapabilitiesUpdate__block_invoke_2;
        v34[3] = &unk_278E16020;
        v34[4] = v27;
        if ([v21 indexOfObjectPassingTest:v34] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v18 removeObjectForKey:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v24);
  }

  v28 = [WeakRetained meshController];
  v29 = [v28 me];

  if (v29)
  {
    [v18 setObject:*(*(*(v31 + 32) + 8) + 40) forKey:v29];
  }

  [WeakRetained setGatheredCapabilities:v18];

  v8 = v33;
LABEL_26:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __46__COCapabilityAddOn_performCapabilitiesUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 remote];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)handleCapabilitiesReadRequest:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = [(COCapabilityAddOn *)self supportedCapabilities];
  v7 = [[COCapabilityReadResponse alloc] initWithCapabilities:v6];
  v5[2](v5, v7, 0);
}

- (void)handleCapabilitiesUpdateNotification:(id)a3
{
  v4 = [a3 capabilities];
  [(COCapabilityAddOn *)self setAvailableCapabilities:v4];
}

- (void)_enableForPairLegacySupport
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__COCapabilityAddOn__enableForPairLegacySupport__block_invoke;
  v4[3] = &unk_278E15AB8;
  v4[4] = self;
  [(COCapabilityAddOn *)self _withLock:v4];
  v3 = [(COCapabilityAddOn *)self supportedCapabilities];
  [(COCapabilityAddOn *)self setSupportedCapabilities:v3];
}

uint64_t __48__COCapabilityAddOn__enableForPairLegacySupport__block_invoke(uint64_t a1)
{
  v2 = [[COCapabilityLegacyShim alloc] initWithDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)legacyShim:(id)a3 availableCapabilitiesChanged:(id)a4
{
  v5 = [(COMeshAddOn *)self meshControllerQueue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__COCapabilityAddOn_legacyShim_availableCapabilitiesChanged___block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __61__COCapabilityAddOn_legacyShim_availableCapabilitiesChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 availableCapabilities];
  LODWORD(v2) = [v2 _legacyShimOverridesAvailableCapabilities:v3];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v4 availableCapabilities];
    [v4 setAvailableCapabilities:v5];
  }
}

- (BOOL)_legacyShimOverridesAvailableCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(COCapabilityAddOn *)self pairLegacyShim];
  if (v5)
  {
    v6 = [(COMeshAddOn *)self meshController];
    if (v6)
    {
      v7 = [v4 containsObject:0x2857B5268] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(COCapabilityAddOn *)self _legacyShimOverridesAvailableCapabilities:v7, v8];
  }

  return v7;
}

void __46__COCapabilityAddOn_setSupportedCapabilities___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "%p failed to force update capabilities (%@)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __46__COCapabilityAddOn_performCapabilitiesUpdate__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_244378000, a3, OS_LOG_TYPE_DEBUG, "%p update request sent to %lu recipients", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_legacyShimOverridesAvailableCapabilities:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 89;
  }

  else
  {
    v3 = 78;
  }

  v5 = 134218240;
  v6 = a1;
  v7 = 1024;
  v8 = v3;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p allowing Legacy Shim override: %c", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end