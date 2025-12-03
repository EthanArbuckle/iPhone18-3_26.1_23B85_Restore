@interface HMDSiriAccessoryMonitor
- (BOOL)hasAnyActiveTargetingAccessories;
- (HMDSiriAccessoryMonitor)initWithDelegate:(id)delegate;
- (HMDSiriAccessoryMonitorDelegate)delegate;
- (id)_accessoriesTargetingAccessory:(id)accessory;
- (id)_getInfoForAccessory:(id)accessory;
- (void)_addAccessory:(id)accessory withTarget:(id)target;
- (void)_removeAccessory:(id)accessory;
- (void)setTargetableAccessory:(id)accessory withControllers:(id)controllers;
@end

@implementation HMDSiriAccessoryMonitor

- (HMDSiriAccessoryMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setTargetableAccessory:(id)accessory withControllers:(id)controllers
{
  v39 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  controllersCopy = controllers;
  v8 = [(HMDSiriAccessoryMonitor *)self _accessoriesTargetingAccessory:accessoryCopy];
  v9 = [MEMORY[0x277CBEB98] setWithArray:controllersCopy];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __66__HMDSiriAccessoryMonitor_setTargetableAccessory_withControllers___block_invoke;
  v35[3] = &unk_278670C80;
  v10 = v8;
  v36 = v10;
  v11 = [v9 objectsPassingTest:v35];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __66__HMDSiriAccessoryMonitor_setTargetableAccessory_withControllers___block_invoke_2;
  v33[3] = &unk_278670C80;
  v12 = controllersCopy;
  v34 = v12;
  v13 = [v10 objectsPassingTest:v33];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(HMDSiriAccessoryMonitor *)self _addAccessory:*(*(&v29 + 1) + 8 * v18++) withTarget:accessoryCopy];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v16);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HMDSiriAccessoryMonitor *)self _removeAccessory:*(*(&v25 + 1) + 8 * v23++), v25];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [(HMDSiriAccessoryMonitor *)self _getInfoForAccessory:?];
  if (v4)
  {
    accessories = [(HMDSiriAccessoryMonitor *)self accessories];
    [accessories removeObjectForKey:accessoryCopy];

    if ([v4 isActiveAndSupportsDragonSiri])
    {
      delegate = [(HMDSiriAccessoryMonitor *)self delegate];
      [delegate monitor:self willNotAllowAccessoryForDragonSiri:accessoryCopy];
      if (![(HMDSiriAccessoryMonitor *)self hasAnyActiveTargetingAccessories])
      {
        [delegate monitorHasNoAccessoriesForDragonSiri:self];
      }
    }
  }
}

- (void)_addAccessory:(id)accessory withTarget:(id)target
{
  targetCopy = target;
  accessoryCopy = accessory;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  v9 = [HMDSiriAccessoryInfo infoWithTargetableAccessory:targetCopy];

  [accessories setObject:v9 forKey:accessoryCopy];
  delegate = [(HMDSiriAccessoryMonitor *)self delegate];
  [delegate monitor:self needsSiriCapabilityForAccessory:accessoryCopy];
}

- (id)_accessoriesTargetingAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  v7 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(accessories);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        accessories2 = [(HMDSiriAccessoryMonitor *)self accessories];
        v13 = [accessories2 objectForKey:v11];

        if (v13)
        {
          targetsAccessory = [v13 targetsAccessory];

          if (targetsAccessory == accessoryCopy)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasAnyActiveTargetingAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  objectEnumerator = [accessories objectEnumerator];

  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v9 + 1) + 8 * i) isActiveAndSupportsDragonSiri])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_getInfoForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  v6 = [accessories objectForKey:accessoryCopy];

  return v6;
}

- (HMDSiriAccessoryMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HMDSiriAccessoryMonitor;
  v5 = [(HMDSiriAccessoryMonitor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    accessories = v6->_accessories;
    v6->_accessories = weakToStrongObjectsMapTable;
  }

  return v6;
}

@end