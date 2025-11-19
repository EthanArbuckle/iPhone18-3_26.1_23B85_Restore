@interface MTRPluginDeviceControllerRegistry
+ (id)sharedInstance;
- (BOOL)addDeviceController:(id)a3;
- (BOOL)addDeviceController:(id)a3 forEntityWithIdentifier:(id)a4;
- (BOOL)removeDeviceController:(id)a3;
- (MTRPluginDeviceControllerRegistry)init;
- (NSArray)controllers;
- (id)_deviceControllerEntityForIdentifier:(id)a3;
- (id)deviceControllerForUUID:(id)a3;
- (int64_t)_runningModeForUUID:(id)a3;
- (void)_forceUpdateRunningModeForController:(id)a3;
- (void)_queryAndUpdateRunningModeForHomeUUID:(id)a3;
- (void)_resumeControllerForPotentialPairing:(id)a3;
- (void)_runningModeChanged:(int64_t)a3 forHomeUUID:(id)a4;
- (void)_updateRunningMode:(int64_t)a3 forceUpdateControllerConfiguration:(BOOL)a4 forHomeUUID:(id)a5;
- (void)_updateRunningModeForAllControllers;
- (void)_updateRunningModeOfAllClientsForHome:(id)a3;
- (void)_updateSuspendedStateBasedOnRunningMode:(id)a3;
- (void)devicesChangedForController:(id)a3;
@end

@implementation MTRPluginDeviceControllerRegistry

+ (id)sharedInstance
{
  if (sharedInstance_creation_3 != -1)
  {
    +[MTRPluginDeviceControllerRegistry sharedInstance];
  }

  v3 = sharedInstance_sInstance_3;

  return v3;
}

uint64_t __51__MTRPluginDeviceControllerRegistry_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_3 = objc_alloc_init(MTRPluginDeviceControllerRegistry);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginDeviceControllerRegistry)init
{
  v10.receiver = self;
  v10.super_class = MTRPluginDeviceControllerRegistry;
  v2 = [(MTRPluginDeviceControllerRegistry *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllers = v2->_controllers;
    v2->_controllers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllerEntities = v2->_controllerEntities;
    v2->_controllerEntities = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__resumeControllerForPotentialPairing_ name:@"MTRPluginPairingPotentiallyStartingNotification" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel__updateSuspendedStateBasedOnRunningMode_ name:@"MTRPluginPairingPotentiallyCompletedNotification" object:0];
  }

  return v2;
}

- (NSArray)controllers
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MTRPluginDeviceControllerRegistry *)v2 controllerEntities];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) controller];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)deviceControllerForUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTRPluginDeviceControllerRegistry *)v5 _deviceControllerEntityForIdentifier:v4];
  v7 = [v6 controller];

  if (v7)
  {
    v8 = [v6 controller];
  }

  else
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [(MTRPluginDeviceControllerRegistry *)v5 controllerEntities];
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      v17 = 2048;
      v18 = [v12 count];
      _os_log_error_impl(&dword_25830F000, v9, OS_LOG_TYPE_ERROR, "%@ Cannot find controller for UUID %@ in %lu controllers - controller was not added to registry", &v13, 0x20u);
    }

    v8 = 0;
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)_runningModeForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MTRPluginDeviceControllerRegistry *)v5 _deviceControllerEntityForIdentifier:v4];
    v7 = [v6 controller];

    if (v7)
    {
      v8 = [v6 runningMode];
    }

    else
    {
      v9 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [(MTRPluginDeviceControllerRegistry *)v5 _runningModeForUUID:v4, v9];
      }

      v8 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_deviceControllerEntityForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 entityIdentifier];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)addDeviceController:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  LOBYTE(self) = [(MTRPluginDeviceControllerRegistry *)self addDeviceController:v4 forEntityWithIdentifier:v5];

  return self;
}

- (BOOL)addDeviceController:(id)a3 forEntityWithIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MTRPluginDeviceControllerRegistry *)v8 _deviceControllerEntityForIdentifier:v7];
  v10 = matterPluginLog_default;
  if (v9)
  {
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 controller];
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Found existing controller %@ for entity UUID %@, ignoring add request", &v17, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Adding device controller: %@ for entityIdentifier %@", &v17, 0x20u);
    }

    MTRAssociateControllerWithHomeUUID(v6, v7);
    v13 = [(MTRPluginDeviceControllerRegistry *)v8 controllerEntities];
    v14 = [[MTRDeviceControllerEntity alloc] initWithController:v6 entityIdentifier:v7 runningMode:0];
    [v13 addObject:v14];

    v11 = +[MTRPluginLocalClient localDispatchQueue];
    [v6 addDeviceControllerDelegate:v8 queue:v11];
  }

  objc_sync_exit(v8);
  if (!v9)
  {
    [(MTRPluginDeviceControllerRegistry *)v8 _queryAndUpdateRunningModeForHomeUUID:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)removeDeviceController:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v6 = [(MTRPluginDeviceControllerRegistry *)v5 controllerEntities];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 controller];
        v13 = [v12 uniqueIdentifier];
        v14 = [v4 uniqueIdentifier];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          v17 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = obj;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ Removing device controller entity: %@", buf, 0x16u);
          }

          [v4 removeDeviceControllerDelegate:obj];
          v18 = [(MTRPluginDeviceControllerRegistry *)obj controllerEntities];
          [v18 removeObject:v11];

          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = obj;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Tried to remove device controller, but wasn't present: %@", buf, 0x16u);
  }

LABEL_14:
  objc_sync_exit(obj);

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_forceUpdateRunningModeForController:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = self;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ _forceUpdateRunningModeForController for controller %@", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
  v7 = [v6 copy];

  obj = v7;
  v30 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v30)
  {
    v8 = *v32;
    v28 = v4;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if (!v4)
        {
          goto LABEL_10;
        }

        v11 = [*(*(&v31 + 1) + 8 * i) controller];
        v12 = [v11 uniqueIdentifier];
        v13 = [v4 uniqueIdentifier];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
LABEL_10:
          v15 = +[MTRPluginServer sharedInstance];
          v16 = [v10 entityIdentifier];
          v17 = [v15 _unsafeQueryRunningModeFromDelegateForHomeUUID:v16];

          v18 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = [v10 controller];
            v21 = [v20 uniqueIdentifier];
            [v10 entityIdentifier];
            v22 = v8;
            v24 = v23 = self;
            v25 = MTRPluginHomeRunnningModeAsString(v17);
            *buf = 138413058;
            v36 = v23;
            v37 = 2112;
            v38 = v21;
            v39 = 2112;
            v40 = v24;
            v41 = 2112;
            v42 = v25;
            _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ _forceUpdateRunningModeForController found controller UUID %@ homeUUID %@ current running mode %@", buf, 0x2Au);

            self = v23;
            v8 = v22;
            v4 = v28;
          }

          v26 = [v10 entityIdentifier];
          [(MTRPluginDeviceControllerRegistry *)self _runningModeChanged:v17 forHomeUUID:v26];
        }
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v30);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)devicesChangedForController:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = matterPluginLog_default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 uniqueIdentifier];
    v8 = [v4 devices];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = [v8 count];
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Device controller delegate devices changed for controller UUID %@ devices count %lu", &v10, 0x20u);
  }

  [(MTRPluginDeviceControllerRegistry *)v5 _forceUpdateRunningModeForController:v4];
  objc_sync_exit(v5);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resumeControllerForPotentialPairing:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MTRPluginServer sharedInstance];
  v6 = [v5 isRunning];

  v7 = matterPluginLog_default;
  v8 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "*** We are potentially pairing, forcing/returning local mode without querying delegate", &v15, 2u);
    }

    v9 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v4 object];
    }

    else
    {
      v10 = 0;
    }

    v12 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forcing running mode to local for home %@, since we are potentially pairing", &v15, 0x16u);
    }

    [(MTRPluginDeviceControllerRegistry *)self _runningModeChanged:2 forHomeUUID:v10];
    v13 = +[MTRPluginServer sharedInstance];
    [v13 runningModeForHomeUUID:v10 runningModeChanged:2];

    goto LABEL_12;
  }

  if (v8)
  {
    v10 = v7;
    v11 = [v4 name];
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Ignoring handling notification %@ since and server running state is NO", &v15, 0x16u);

LABEL_12:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateSuspendedStateBasedOnRunningMode:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MTRPluginServer sharedInstance];
  v6 = [v5 isRunning];

  if (v6)
  {
    v7 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v4 object];

      if (v8)
      {
        v9 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v4 name];
          *buf = 138412802;
          v29 = self;
          v30 = 2112;
          v31 = v8;
          v32 = 2112;
          v33 = v11;
          _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Potentially updating running mode for home %@, due to notification %@", buf, 0x20u);
        }

        [(MTRPluginDeviceControllerRegistry *)self _queryAndUpdateRunningModeForHomeUUID:v8];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v4 name];
      *buf = 138412546;
      v29 = self;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Handling notification %@ and re-querying running mode for all homes", buf, 0x16u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
    v8 = [v17 copy];

    v18 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v8);
          }

          v22 = [*(*(&v24 + 1) + 8 * v21) entityIdentifier];
          [(MTRPluginDeviceControllerRegistry *)self _queryAndUpdateRunningModeForHomeUUID:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v19);
    }

    goto LABEL_19;
  }

  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v12;
    v13 = [v4 name];
    *buf = 138412546;
    v29 = self;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Ignoring handling notification %@ since and server running state is NO", buf, 0x16u);

LABEL_19:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_queryAndUpdateRunningModeForHomeUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[MTRPluginServer sharedInstance];
    v6 = [v5 _safeQueryRunningModeFromDelegateForHomeUUID:v4];

    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = MTRPluginHomeRunnningModeAsString(v6);
      v12 = 138412802;
      v13 = self;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Home delegate returned running mode: %@ for homeUUID: %@", &v12, 0x20u);
    }

    v10 = +[MTRPluginServer sharedInstance];
    [v10 runningModeForHomeUUID:v4 runningModeChanged:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunningModeForAllControllers
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = +[MTRPluginServer sharedInstance];
        v11 = [v9 entityIdentifier];
        v12 = [v10 _unsafeQueryRunningModeFromDelegateForHomeUUID:v11];

        v13 = [v9 entityIdentifier];
        [(MTRPluginDeviceControllerRegistry *)self _updateRunningMode:v12 forceUpdateControllerConfiguration:1 forHomeUUID:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunningMode:(int64_t)a3 forceUpdateControllerConfiguration:(BOOL)a4 forHomeUUID:(id)a5
{
  v5 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(MTRPluginDeviceControllerRegistry *)self _runningModeForUUID:v8];
  v10 = v9;
  if (!v8 || v9 != a3)
  {
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = MTRPluginHomeRunnningModeAsString(v10);
      v14 = MTRPluginHomeRunnningModeAsString(a3);
      *buf = 138413058;
      v35 = self;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Switching running mode from '%@' to '%@' for home %@", buf, 0x2Au);
    }

    [(MTRPluginDeviceControllerRegistry *)self _runningModeChanged:a3 forHomeUUID:v8];
  }

  if (v8 && !v5 && v10 == a3)
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = MTRPluginHomeRunnningModeAsString(a3);
      *buf = 138412802;
      v35 = self;
      v36 = 2112;
      v37 = v17;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Running mode '%@' unchanged for home %@", buf, 0x20u);
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = +[MTRPluginClientManager sharedInstance];
    v19 = [v18 clients];
    v20 = [v19 copy];

    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * v24);
          if (!v8 || ([*(*(&v29 + 1) + 8 * v24) homeUUID], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v8, "isEqual:", v26), v26, v27))
          {
            [v25 runningModeChanged:a3];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v22);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_runningModeChanged:(int64_t)a3 forHomeUUID:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(MTRPluginDeviceControllerRegistry *)v7 controllerEntities];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v6)
        {
          v13 = [*(*(&v19 + 1) + 8 * i) entityIdentifier];
          v14 = [v6 isEqual:v13];

          if (!v14)
          {
            continue;
          }
        }

        v15 = matterPluginLog_default;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = MTRPluginHomeRunnningModeAsString(a3);
          *buf = 138412802;
          v24 = v7;
          v25 = 2112;
          v26 = v16;
          v27 = 2112;
          v28 = v6;
          _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Switching running mode to '%@' for home %@", buf, 0x20u);
        }

        [v12 setRunningMode:a3];
        v17 = [v12 controller];
        MTRUpdateRunningModeForController(a3, v17, v7);
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunningModeOfAllClientsForHome:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[MTRPluginServer sharedInstance];
    v6 = [v5 _unsafeQueryRunningModeFromDelegateForHomeUUID:v4];

    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = MTRPluginHomeRunnningModeAsString(v6);
      *buf = 138412802;
      v27 = self;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Updating running mode for all clients to '%@' for home %@", buf, 0x20u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = +[MTRPluginClientManager sharedInstance];
    v11 = [v10 clients];
    v12 = [v11 copy];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v17 homeUUID];
          v19 = [v4 isEqual:v18];

          if (v19)
          {
            [v17 runningModeChanged:v6];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_runningModeForUUID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "%@ Cannot find controller for UUID %@ - returning unknown running mode, controller was not added to registry", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end