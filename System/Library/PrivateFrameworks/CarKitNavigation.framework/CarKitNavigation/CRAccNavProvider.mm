@interface CRAccNavProvider
+ (id)_localizedNameForIdentifier:(id)identifier;
- (CRAccNavProvider)initWithDelegate:(id)delegate;
- (NSArray)activeComponents;
- (id)_componentKeys;
- (id)_locked_activeComponents;
- (void)_addAccessoryIfNeeded:(id)needed;
- (void)_broadcastRouteGuidance:(id)guidance;
- (void)_locked_addAccessoryIfNeeded:(id)needed;
- (void)navigation:(id)navigation accessoryAttached:(id)attached;
- (void)navigation:(id)navigation accessoryDetached:(id)detached;
- (void)navigation:(id)navigation startRouteGuidance:(id)guidance componentList:(id)list;
- (void)navigation:(id)navigation stopRouteGuidance:(id)guidance componentList:(id)list;
- (void)resetActiveComponents;
- (void)sendInfo:(id)info toComponentUID:(id)d;
- (void)sendNoSupportForAppIdentifier:(id)identifier;
@end

@implementation CRAccNavProvider

- (CRAccNavProvider)initWithDelegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
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

    objc_storeStrong(&v6->_delegate, delegate);
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
  _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);

  return _locked_activeComponents;
}

- (id)_locked_activeComponents
{
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  allValues = [activeComponentsIndexed allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_0];

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

- (void)sendInfo:(id)info toComponentUID:(id)d
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  os_unfair_lock_lock(&self->_accessoryLock);
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  v9 = [activeComponentsIndexed objectForKeyedSubscript:dCopy];

  if (v9)
  {
    accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
    accessoryUID = [v9 accessoryUID];
    v12 = [accessoriesIndexed objectForKeyedSubscript:accessoryUID];

    os_unfair_lock_unlock(&self->_accessoryLock);
    component = [v9 component];

    if (component && v12)
    {
      component2 = [v9 component];
      isEnabled = [component2 isEnabled];

      if ((isEnabled & 1) == 0)
      {
        v16 = CarNavLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          uUIDString = [dCopy UUIDString];
          component3 = [v9 component];
          identifier = [component3 identifier];
          accessoryUID2 = [v12 accessoryUID];
          *buf = 138544130;
          selfCopy3 = self;
          v36 = 2114;
          v37 = uUIDString;
          v38 = 2048;
          v39 = identifier;
          v40 = 2114;
          v41 = accessoryUID2;
          _os_log_impl(&dword_224A23000, v16, OS_LOG_TYPE_INFO, "%{public}@: component %{public}@ %lu from %{public}@ not enabled", buf, 0x2Au);
        }
      }

      workQueue = [(CRAccNavProvider *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke;
      block[3] = &unk_27853CE90;
      v29 = infoCopy;
      selfCopy2 = self;
      v12 = v12;
      v31 = v12;
      v32 = dCopy;
      v33 = v9;
      dispatch_async(workQueue, block);

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
    uUIDString2 = [dCopy UUIDString];
    component4 = [v9 component];
    _componentKeys = [(CRAccNavProvider *)self _componentKeys];
    v27 = [_componentKeys valueForKey:@"UUIDString"];
    *buf = 138544642;
    selfCopy3 = self;
    v36 = 2114;
    v37 = uUIDString2;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v12;
    v42 = 2048;
    v43 = component4;
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

- (void)_broadcastRouteGuidance:(id)guidance
{
  v26 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  v5 = CarNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CRAccNavProvider *)self _broadcastRouteGuidance:guidanceCopy, v5];
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  allValues = [activeComponentsIndexed allValues];

  obj = allValues;
  v8 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
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
        accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
        accessoryUID = [v12 accessoryUID];
        v15 = [accessoriesIndexed objectForKeyedSubscript:accessoryUID];

        component = [v12 component];
        v24 = component;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [v15 updateRouteGuidanceInfo:guidanceCopy componentList:v17];

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
  workQueue = [(CRAccNavProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CRAccNavProvider_resetActiveComponents__block_invoke;
  block[3] = &unk_27853CEB8;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)sendNoSupportForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() _localizedNameForIdentifier:identifierCopy];
  if (v5)
  {
    workQueue = [(CRAccNavProvider *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRAccNavProvider_sendNoSupportForAppIdentifier___block_invoke;
    block[3] = &unk_27853CEE0;
    block[4] = self;
    v8 = identifierCopy;
    v9 = v5;
    dispatch_async(workQueue, block);
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

- (void)navigation:(id)navigation accessoryAttached:(id)attached
{
  v10 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  v6 = CarNavLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = attachedCopy;
    _os_log_impl(&dword_224A23000, v6, OS_LOG_TYPE_DEFAULT, "iAP Accessory is available %{public}@", &v8, 0xCu);
  }

  [(CRAccNavProvider *)self _addAccessoryIfNeeded:attachedCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)navigation accessoryDetached:(id)detached
{
  v40 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  os_unfair_lock_lock(&self->_accessoryLock);
  v6 = CarNavLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
    *buf = 138543618;
    v37 = detachedCopy;
    v38 = 2114;
    v39 = _locked_activeComponents;
    _os_log_impl(&dword_224A23000, v6, OS_LOG_TYPE_DEFAULT, "iAP Accessory is unavailable %{public}@ activeComponents=%{public}@", buf, 0x16u);
  }

  accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
  accessoryUID = [detachedCopy accessoryUID];
  [accessoriesIndexed removeObjectForKey:accessoryUID];

  activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  accessoryUID2 = [detachedCopy accessoryUID];
  v12 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID2];
  v13 = [v12 count];

  if (v13)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    activeAccessoryComponentsIndexed2 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
    accessoryUID3 = [detachedCopy accessoryUID];
    v16 = [activeAccessoryComponentsIndexed2 objectForKeyedSubscript:accessoryUID3];
    allValues = [v16 allValues];

    v18 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v22 = *(*(&v31 + 1) + 8 * v21);
          activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
          [activeComponentsIndexed removeObjectForKey:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v19);
    }
  }

  activeAccessoryComponentsIndexed3 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  accessoryUID4 = [detachedCopy accessoryUID];
  [activeAccessoryComponentsIndexed3 removeObjectForKey:accessoryUID4];

  _locked_activeComponents2 = [(CRAccNavProvider *)self _locked_activeComponents];
  v27 = CarNavLogging();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    _locked_activeComponents3 = [(CRAccNavProvider *)self _locked_activeComponents];
    *buf = 138543618;
    v37 = detachedCopy;
    v38 = 2114;
    v39 = _locked_activeComponents3;
    _os_log_impl(&dword_224A23000, v27, OS_LOG_TYPE_DEFAULT, "iAP Accessory removed %{public}@, new activeComponents=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_accessoryLock);
  if (v13)
  {
    delegate = [(CRAccNavProvider *)self delegate];
    [delegate session:self didUpdateActiveComponents:_locked_activeComponents2];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)navigation startRouteGuidance:(id)guidance componentList:(id)list
{
  v47 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  listCopy = list;
  v9 = CarNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = guidanceCopy;
    v45 = 2114;
    v46 = listCopy;
    _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "iAP Accessory did enable navigation updates %{public}@ components=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:guidanceCopy];
  allValues = listCopy;
  v36 = allValues;
  if (!allValues)
  {
    componentList = [guidanceCopy componentList];
    allValues = [componentList allValues];
  }

  activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  accessoryUID = [guidanceCopy accessoryUID];
  v14 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = allValues;
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
          accessoryUID2 = [guidanceCopy accessoryUID];
          v24 = [(CRAccNavComponent *)v22 initWithAccessoryUID:accessoryUID2 component:v19];

          activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
          [(CRAccNavComponent *)v24 uuid];
          v27 = v26 = guidanceCopy;
          [activeComponentsIndexed setObject:v24 forKeyedSubscript:v27];

          uuid = [(CRAccNavComponent *)v24 uuid];
          v29 = MEMORY[0x277CCABB0];
          identifier = [v19 identifier];
          v31 = v29;
          guidanceCopy = v26;
          v32 = [v31 numberWithUnsignedInteger:identifier];
          [v14 setObject:uuid forKeyedSubscript:v32];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);
  delegate = [(CRAccNavProvider *)self delegate];
  [delegate session:self didUpdateActiveComponents:_locked_activeComponents];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)navigation stopRouteGuidance:(id)guidance componentList:(id)list
{
  v45 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  listCopy = list;
  v9 = CarNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = guidanceCopy;
    v43 = 2114;
    v44 = listCopy;
    _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "iAP Accessory did disable navigation updates %{public}@ components=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:guidanceCopy];
  v10 = listCopy;
  v11 = v10;
  if (!v10 || (allValues = v10, ![v10 count]))
  {
    componentList = [guidanceCopy componentList];
    allValues = [componentList allValues];
  }

  v32 = v11;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = allValues;
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
        activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
        accessoryUID = [guidanceCopy accessoryUID];
        v19 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID];
        [*(v14 + 2992) numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
        v20 = guidanceCopy;
        v22 = v21 = v14;
        v23 = [v19 objectForKeyedSubscript:v22];

        if (v23)
        {
          activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
          [activeComponentsIndexed removeObjectForKey:v23];

          activeAccessoryComponentsIndexed2 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
          accessoryUID2 = [v20 accessoryUID];
          v27 = [activeAccessoryComponentsIndexed2 objectForKeyedSubscript:accessoryUID2];
          v28 = [*(v21 + 2992) numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
          [v27 removeObjectForKey:v28];

          v14 = v21;
        }

        else
        {
          v14 = v21;
          activeAccessoryComponentsIndexed2 = CarNavLogging();
          if (os_log_type_enabled(activeAccessoryComponentsIndexed2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            guidanceCopy = v20;
            v42 = v20;
            v43 = 2114;
            v44 = v16;
            _os_log_impl(&dword_224A23000, activeAccessoryComponentsIndexed2, OS_LOG_TYPE_DEFAULT, "Unknown accessory %{public}@ component %{public}@ already deactivated", buf, 0x16u);
            goto LABEL_16;
          }
        }

        guidanceCopy = v20;
LABEL_16:
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);
  delegate = [(CRAccNavProvider *)self delegate];
  [delegate session:self didUpdateActiveComponents:_locked_activeComponents];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessoryIfNeeded:(id)needed
{
  neededCopy = needed;
  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:neededCopy];

  os_unfair_lock_unlock(&self->_accessoryLock);
}

- (void)_locked_addAccessoryIfNeeded:(id)needed
{
  v23 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
  accessoryUID = [neededCopy accessoryUID];
  v7 = [accessoriesIndexed objectForKeyedSubscript:accessoryUID];

  if (!v7)
  {
    v8 = CarNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      componentList = [neededCopy componentList];
      v19 = 138543618;
      v20 = neededCopy;
      v21 = 2114;
      v22 = componentList;
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "Unknown accessory %{public}@ components=%{public}@", &v19, 0x16u);
    }

    accessoriesIndexed2 = [(CRAccNavProvider *)self accessoriesIndexed];
    accessoryUID2 = [neededCopy accessoryUID];
    [accessoriesIndexed2 setObject:neededCopy forKeyedSubscript:accessoryUID2];

    activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
    accessoryUID3 = [neededCopy accessoryUID];
    v14 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID3];

    if (!v14)
    {
      v15 = objc_opt_new();
      activeAccessoryComponentsIndexed2 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
      accessoryUID4 = [neededCopy accessoryUID];
      [activeAccessoryComponentsIndexed2 setObject:v15 forKeyedSubscript:accessoryUID4];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_componentKeys
{
  os_unfair_lock_lock(&self->_accessoryLock);
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  allKeys = [activeComponentsIndexed allKeys];

  os_unfair_lock_unlock(&self->_accessoryLock);

  return allKeys;
}

+ (id)_localizedNameForIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifier];
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