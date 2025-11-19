@interface CRAccNavProvider
+ (id)_localizedNameForIdentifier:(id)a3;
- (CRAccNavProvider)initWithDelegate:(id)a3;
- (NSArray)activeComponents;
- (id)_componentKeys;
- (id)_locked_activeComponents;
- (void)_addAccessoryIfNeeded:(id)a3;
- (void)_broadcastRouteGuidance:(id)a3;
- (void)_locked_addAccessoryIfNeeded:(id)a3;
- (void)navigation:(id)a3 accessoryAttached:(id)a4;
- (void)navigation:(id)a3 accessoryDetached:(id)a4;
- (void)navigation:(id)a3 startRouteGuidance:(id)a4 componentList:(id)a5;
- (void)navigation:(id)a3 stopRouteGuidance:(id)a4 componentList:(id)a5;
- (void)resetActiveComponents;
- (void)sendInfo:(id)a3 toComponentUID:(id)a4;
- (void)sendNoSupportForAppIdentifier:(id)a3;
@end

@implementation CRAccNavProvider

- (CRAccNavProvider)initWithDelegate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20.receiver = self;
  v20.super_class = CRAccNavProvider;
  v6 = [(CRAccNavProvider *)&v20 init];
  if (v6)
  {
    v7 = CarNavLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_224A23000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting up iAP Navigation", buf, 0xCu);
    }

    objc_storeStrong(&v6->_delegate, a3);
    v8 = dispatch_queue_create("com.apple.carkit.AccNavProvider", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v8;

    v6->_accessoryLock._os_unfair_lock_opaque = 0;
    v10 = objc_opt_new();
    accessoriesIndexed = v6->_accessoriesIndexed;
    v6->_accessoriesIndexed = v10;

    v12 = objc_opt_new();
    activeComponentsIndexed = v6->_activeComponentsIndexed;
    v6->_activeComponentsIndexed = v12;

    v14 = objc_opt_new();
    activeAccessoryComponentsIndexed = v6->_activeAccessoryComponentsIndexed;
    v6->_activeAccessoryComponentsIndexed = v14;

    v16 = [objc_alloc(MEMORY[0x277CE82F0]) initWithDelegate:v6];
    iapNavigation = v6->_iapNavigation;
    v6->_iapNavigation = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSArray)activeComponents
{
  os_unfair_lock_lock(&self->_accessoryLock);
  v3 = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);

  return v3;
}

- (id)_locked_activeComponents
{
  v2 = [(CRAccNavProvider *)self activeComponentsIndexed];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_0];

  return v4;
}

uint64_t __44__CRAccNavProvider__locked_activeComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 componentIdentifier];
  v6 = [v4 componentIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)sendInfo:(id)a3 toComponentUID:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_accessoryLock);
  v8 = [(CRAccNavProvider *)self activeComponentsIndexed];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [(CRAccNavProvider *)self accessoriesIndexed];
    v11 = [v9 accessoryUID];
    v12 = [v10 objectForKeyedSubscript:v11];

    os_unfair_lock_unlock(&self->_accessoryLock);
    v13 = [v9 component];

    if (v13 && v12)
    {
      v14 = [v9 component];
      v15 = [v14 isEnabled];

      if ((v15 & 1) == 0)
      {
        v16 = CarNavLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v7 UUIDString];
          v18 = [v9 component];
          v19 = [v18 identifier];
          v20 = [v12 accessoryUID];
          *buf = 138544130;
          v35 = self;
          v36 = 2114;
          v37 = v17;
          v38 = 2048;
          v39 = v19;
          v40 = 2114;
          v41 = v20;
          _os_log_impl(&dword_224A23000, v16, OS_LOG_TYPE_INFO, "%{public}@: component %{public}@ %lu from %{public}@ not enabled", buf, 0x2Au);
        }
      }

      v21 = [(CRAccNavProvider *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke;
      block[3] = &unk_27853CE90;
      v29 = v6;
      v30 = self;
      v12 = v12;
      v31 = v12;
      v32 = v7;
      v33 = v9;
      dispatch_async(v21, block);

      v22 = v29;
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_accessoryLock);
    v12 = 0;
  }

  v22 = CarNavLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    v24 = [v7 UUIDString];
    v25 = [v9 component];
    v26 = [(CRAccNavProvider *)self _componentKeys];
    v27 = [v26 valueForKey:@"UUIDString"];
    *buf = 138544642;
    v35 = self;
    v36 = 2114;
    v37 = v24;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v12;
    v42 = 2048;
    v43 = v25;
    v44 = 2114;
    v45 = v27;
    _os_log_fault_impl(&dword_224A23000, v22, OS_LOG_TYPE_FAULT, "%{public}@: missing component information.  uid=%{public}@ component=%p accessory=%p component.component=%p compontentsIndexed=%{public}@", buf, 0x3Eu);
  }

LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
}

void __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke(uint64_t a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = CarNavLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_1(a1, (a1 + 32));
    }

    v5 = *(a1 + 48);
    v6 = [v3 routeGuidance];
    v7 = [*(a1 + 64) component];
    v44[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    [v5 updateRouteGuidanceInfo:v6 componentList:v8];
LABEL_16:

    goto LABEL_19;
  }

  objc_opt_class();
  v3 = *v2;
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = CarNavLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 40);
      v14 = [v3 index];
      v15 = [*(a1 + 48) accessoryUID];
      v16 = *(a1 + 56);
      v17 = [*(a1 + 64) component];
      v18 = [v17 identifier];
      v19 = [*(a1 + 32) accNavInfo];
      v20 = [v19 cr_dictionary];
      *buf = 138544642;
      v33 = v28;
      v34 = 1024;
      v35 = v14;
      v36 = 2114;
      v37 = v15;
      v38 = 2114;
      v39 = v16;
      v40 = 2048;
      v41 = v18;
      v42 = 2114;
      v43 = v20;
      _os_log_debug_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: sending maneuver index=%d accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", buf, 0x3Au);
    }

    v10 = *(a1 + 48);
    v6 = [v3 maneuver];
    v7 = [*(a1 + 64) component];
    v31 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [v10 updateManeuverInfo:v6 componentList:v8];
    goto LABEL_16;
  }

  objc_opt_class();
  v3 = *v2;
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = CarNavLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 40);
      v21 = [v3 index];
      v22 = [*(a1 + 48) accessoryUID];
      v23 = *(a1 + 56);
      v24 = [*(a1 + 64) component];
      v25 = [v24 identifier];
      v26 = [*(a1 + 32) accNavInfo];
      v27 = [v26 cr_dictionary];
      *buf = 138544642;
      v33 = v29;
      v34 = 1024;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      v38 = 2114;
      v39 = v23;
      v40 = 2048;
      v41 = v25;
      v42 = 2114;
      v43 = v27;
      _os_log_debug_impl(&dword_224A23000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: sending laneGuidance index=%d accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", buf, 0x3Au);
    }

    v12 = *(a1 + 48);
    v6 = [v3 laneGuidance];
    v7 = [*(a1 + 64) component];
    v30 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v12 updateLaneGuidanceInfo:v6 componentList:v8];
    goto LABEL_16;
  }

  v3 = CarNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_2(a1, (a1 + 32));
  }

LABEL_19:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_broadcastRouteGuidance:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CarNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CRAccNavProvider *)self _broadcastRouteGuidance:v4, v5];
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(CRAccNavProvider *)self activeComponentsIndexed];
  v7 = [v6 allValues];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [(CRAccNavProvider *)self accessoriesIndexed];
        v14 = [v12 accessoryUID];
        v15 = [v13 objectForKeyedSubscript:v14];

        v16 = [v12 component];
        v24 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [v15 updateRouteGuidanceInfo:v4 componentList:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_accessoryLock);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)resetActiveComponents
{
  v3 = [(CRAccNavProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CRAccNavProvider_resetActiveComponents__block_invoke;
  block[3] = &unk_27853CEB8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __41__CRAccNavProvider_resetActiveComponents__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = CarNavLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_224A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: resetActiveComponents", &v6, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE82F8]);
  [v4 setInfo:1 data:&unk_283821E88];
  [*(a1 + 32) _broadcastRouteGuidance:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendNoSupportForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _localizedNameForIdentifier:v4];
  if (v5)
  {
    v6 = [(CRAccNavProvider *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRAccNavProvider_sendNoSupportForAppIdentifier___block_invoke;
    block[3] = &unk_27853CEE0;
    block[4] = self;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    [(CRAccNavProvider *)self resetActiveComponents];
  }
}

void __50__CRAccNavProvider_sendNoSupportForAppIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = CarNavLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_224A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: sendNoSupportForAppIdentifier:%{public}@", &v7, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CE82F8]);
  [v5 setInfo:19 data:*(a1 + 48)];
  [v5 setInfo:20 data:MEMORY[0x277CBEC28]];
  [*(a1 + 32) _broadcastRouteGuidance:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)a3 accessoryAttached:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = CarNavLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_224A23000, v6, OS_LOG_TYPE_DEFAULT, "iAP Accessory is available %{public}@", &v8, 0xCu);
  }

  [(CRAccNavProvider *)self _addAccessoryIfNeeded:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)a3 accessoryDetached:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_accessoryLock);
  v6 = CarNavLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CRAccNavProvider *)self _locked_activeComponents];
    *buf = 138543618;
    v37 = v5;
    v38 = 2114;
    v39 = v7;
    _os_log_impl(&dword_224A23000, v6, OS_LOG_TYPE_DEFAULT, "iAP Accessory is unavailable %{public}@ activeComponents=%{public}@", buf, 0x16u);
  }

  v8 = [(CRAccNavProvider *)self accessoriesIndexed];
  v9 = [v5 accessoryUID];
  [v8 removeObjectForKey:v9];

  v10 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  v11 = [v5 accessoryUID];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 count];

  if (v13)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
    v15 = [v5 accessoryUID];
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = [v16 allValues];

    v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        v21 = 0;
        do
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v31 + 1) + 8 * v21);
          v23 = [(CRAccNavProvider *)self activeComponentsIndexed];
          [v23 removeObjectForKey:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v19);
    }
  }

  v24 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  v25 = [v5 accessoryUID];
  [v24 removeObjectForKey:v25];

  v26 = [(CRAccNavProvider *)self _locked_activeComponents];
  v27 = CarNavLogging();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(CRAccNavProvider *)self _locked_activeComponents];
    *buf = 138543618;
    v37 = v5;
    v38 = 2114;
    v39 = v28;
    _os_log_impl(&dword_224A23000, v27, OS_LOG_TYPE_DEFAULT, "iAP Accessory removed %{public}@, new activeComponents=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_accessoryLock);
  if (v13)
  {
    v29 = [(CRAccNavProvider *)self delegate];
    [v29 session:self didUpdateActiveComponents:v26];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)a3 startRouteGuidance:(id)a4 componentList:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = CarNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = v7;
    v45 = 2114;
    v46 = v8;
    _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "iAP Accessory did enable navigation updates %{public}@ components=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:v7];
  v10 = v8;
  v36 = v10;
  if (!v10)
  {
    v11 = [v7 componentList];
    v10 = [v11 allValues];
  }

  v12 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  v13 = [v7 accessoryUID];
  v14 = [v12 objectForKeyedSubscript:v13];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "identifier")}];
        v21 = [v14 objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = [CRAccNavComponent alloc];
          v23 = [v7 accessoryUID];
          v24 = [(CRAccNavComponent *)v22 initWithAccessoryUID:v23 component:v19];

          v25 = [(CRAccNavProvider *)self activeComponentsIndexed];
          [(CRAccNavComponent *)v24 uuid];
          v27 = v26 = v7;
          [v25 setObject:v24 forKeyedSubscript:v27];

          v28 = [(CRAccNavComponent *)v24 uuid];
          v29 = MEMORY[0x277CCABB0];
          v30 = [v19 identifier];
          v31 = v29;
          v7 = v26;
          v32 = [v31 numberWithUnsignedInteger:v30];
          [v14 setObject:v28 forKeyedSubscript:v32];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  v33 = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);
  v34 = [(CRAccNavProvider *)self delegate];
  [v34 session:self didUpdateActiveComponents:v33];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)a3 stopRouteGuidance:(id)a4 componentList:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = CarNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = v7;
    v43 = 2114;
    v44 = v8;
    _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "iAP Accessory did disable navigation updates %{public}@ components=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:v7];
  v10 = v8;
  v11 = v10;
  if (!v10 || (v12 = v10, ![v10 count]))
  {
    v13 = [v7 componentList];
    v12 = [v13 allValues];
  }

  v32 = v11;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v12;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v35)
  {
    v34 = *v37;
    v14 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
        v18 = [v7 accessoryUID];
        v19 = [v17 objectForKeyedSubscript:v18];
        [*(v14 + 2992) numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
        v20 = v7;
        v22 = v21 = v14;
        v23 = [v19 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [(CRAccNavProvider *)self activeComponentsIndexed];
          [v24 removeObjectForKey:v23];

          v25 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
          v26 = [v20 accessoryUID];
          v27 = [v25 objectForKeyedSubscript:v26];
          v28 = [*(v21 + 2992) numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
          [v27 removeObjectForKey:v28];

          v14 = v21;
        }

        else
        {
          v14 = v21;
          v25 = CarNavLogging();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v7 = v20;
            v42 = v20;
            v43 = 2114;
            v44 = v16;
            _os_log_impl(&dword_224A23000, v25, OS_LOG_TYPE_DEFAULT, "Unknown accessory %{public}@ component %{public}@ already deactivated", buf, 0x16u);
            goto LABEL_16;
          }
        }

        v7 = v20;
LABEL_16:
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  v29 = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);
  v30 = [(CRAccNavProvider *)self delegate];
  [v30 session:self didUpdateActiveComponents:v29];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessoryIfNeeded:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:v4];

  os_unfair_lock_unlock(&self->_accessoryLock);
}

- (void)_locked_addAccessoryIfNeeded:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRAccNavProvider *)self accessoriesIndexed];
  v6 = [v4 accessoryUID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = CarNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 componentList];
      v19 = 138543618;
      v20 = v4;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "Unknown accessory %{public}@ components=%{public}@", &v19, 0x16u);
    }

    v10 = [(CRAccNavProvider *)self accessoriesIndexed];
    v11 = [v4 accessoryUID];
    [v10 setObject:v4 forKeyedSubscript:v11];

    v12 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
    v13 = [v4 accessoryUID];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (!v14)
    {
      v15 = objc_opt_new();
      v16 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
      v17 = [v4 accessoryUID];
      [v16 setObject:v15 forKeyedSubscript:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_componentKeys
{
  os_unfair_lock_lock(&self->_accessoryLock);
  v3 = [(CRAccNavProvider *)self activeComponentsIndexed];
  v4 = [v3 allKeys];

  os_unfair_lock_unlock(&self->_accessoryLock);

  return v4;
}

+ (id)_localizedNameForIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a3];
  v4 = [v3 localizedNameForContext:@"Car"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 localizedNameForContext:0];
  }

  v7 = v6;

  return v7;
}

void __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) accessoryUID];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 64) component];
  [v7 identifier];
  v8 = [*a2 accNavInfo];
  v9 = [v8 cr_dictionary];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_224A23000, v10, v11, "%{public}@: sending routeGuidance accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_2(uint64_t a1, id *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) accessoryUID];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 64) component];
  [v7 identifier];
  v8 = [*a2 accNavInfo];
  v9 = [v8 cr_dictionary];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_224A23000, v10, v11, "%{public}@: not sending unknown accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_broadcastRouteGuidance:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 cr_dictionary];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_224A23000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: broadcast %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end